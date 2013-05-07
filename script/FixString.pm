#!/usr/bin/env perl
#
# This acts like a program when called as 
# a program but as a module when used/required 
# as a module.

package FixString;

use v5.12;
use strict;
use utf8;
use warnings;
use warnings qw< FATAL utf8 >;
use charnames qw< :full greek >;

use Unicode::Collate;

use parent "Exporter";

our @EXPORT_OK = qw{
    fixstring
    strsort_logiconumerically
};

sub fixstring ( _ );
sub main      ( @ );
sub strsort_logiconumerically(@);

#############################################

unless (caller()) { 
  # ok, so now we're a program not a module
    main();
    exit(0);
}

#############################################

sub main(@) { 
    use open < :std :utf8 >;
    local @ARGV = @_ if @_;
    my @orig = ();
    while (my $old = <>) {
        chomp $old;
        my $new = fixstring($old);
     ## printf "DBG: %-30s => %-30s\n", $old, $new;
        push @orig, $old;
    } 
    say for strsort_logiconumerically(@orig);
}

#############################################

sub strsort_logiconumerically(@) {
    my $collator = new Unicode::Collate::
                        upper_before_lower => 1,
                        preprocess => \&fixstring,
               ;

    return $collator->sort(@_);
} 

#############################################

sub fixstring(_) {
    local $_ = shift();

    # these must be done in order, or else you'll 
    #   -- miss zero-padding numbers 
    #   -- accidentally convert Greek iota or xi to Roman numerals!

  # STEP 1: Romans to Arabic
  #    convert valid Roman numeral to regular digits
  #    only do small numbers (no L,D,C,M)
  #    must be between boundaries for single-letters
  #    must have either boundaries for multi-letters

    # First do the real Unicode Roman numerals,
    # which are of course guaranteed to be Roman 
    # numerals.  These we do without respect to casing,
    # because they are guaranteed.
    s{ 
        ( [\x{2160}-\x{2188}]+ ) 
    }{ 
        my $numerals = $1;
        require Unicode::Normalize;
        require Roman;
        for ($numerals) {
            s{ \N{ROMAN NUMERAL ONE THOUSAND C D}      }{ "M"  x     1 }xge;   # ↀ
            s{ \N{ROMAN NUMERAL FIVE THOUSAND}         }{ "M"  x     5 }xge;   # ↁ
            s{ \N{ROMAN NUMERAL TEN THOUSAND}          }{ "M"  x    10 }xge;   # ↂ
            s{ \N{ROMAN NUMERAL REVERSED ONE HUNDRED}  }{ "C"  x     1 }xge;   # Ↄ
            s{ \N{ROMAN NUMERAL SIX LATE FORM}         }{ "VI" x     1 }xge;   # ↅ
            s{ \N{ROMAN NUMERAL FIFTY EARLY FORM}      }{ "L"  x     1 }xge;   # ↆ
        ##  s{ \N{ROMAN NUMERAL FIFTY THOUSAND}        }{ "L"  x  1000 }xge;   # ↇ
            s{ \N{ROMAN NUMERAL FIFTY THOUSAND}        }{ "M"  x    50 }xge;   # ↇ
        ##  s{ \N{ROMAN NUMERAL ONE HUNDRED THOUSAND}  }{ "C"  x  1000 }xge;   # ↈ
            s{ \N{ROMAN NUMERAL ONE HUNDRED THOUSAND}  }{ "M"  x   100 }xge;   # ↈ
        } 
        $numerals = NFKD($numerals);
        Roman::isroman($numerals) ? Roman::arabic($numerals) : $numerals;
    }xge;

    # but these we just have to guess on, so only do 
    # those that are small in magnitude, in uppercase,
    # and occurring at full- or half-boundaries.

    s{ (?| \b ( [IVX]+    ) \b 
         | \b ( [IVX]{2,} ) \B
         | \B ( [IVX]{2,} ) \b
       )
    }{
        require Roman;
        my $num = $1;
        Roman::isroman($num) ? Roman::arabic($num) : $num;
    }xge;

  # STEP 2: Logical Numeric Ordering
  #   0-pad digit strings so they sort logically as integers
  #   handle correctly formatted comma'd numbers

    s{ (?<WHOLE>
            # allow a plus or minus
            # let them use any kind of dash but em and en
            (?:
                (?! [\N{EM DASH}\N{EN DASH}]  )
                [\N{PLUS SIGN}\N{PLUS-MINUS SIGN}\N{MINUS-OR-PLUS SIGN}\p{Dash}]
            ) ?  # but it's optional
           (?: \b \d{1,3} (?: , \d{3} )+ \b
             | \d+
           )
       )
       (?: 
            \. 
            (?<FRAC> \d+ ) 
        )?
    }{
        my ($left, $right) = ($1, $2);
        $left =~ s/[\N{COMMA}\N{PLUS SIGN}\N{PLUS-MINUS SIGN}\N{MINUS-OR-PLUS SIGN}]//g;
        $left =~ s/\p{Pd}/-/g;
        my $result;
        if (length $right) {
            $result = sprintf(" 000%+012d.%s ", $left, $right);

        } else { 
            $result = sprintf(" 000%+012d ", $left);
        }

        # terrible hack to get signed numbers to sort right
        $result =~ tr[\-+][\N{CYRILLIC CAPITAL LETTER SCHWA}\N{CYRILLIC CAPITAL LETTER BE}];

        $result;
    }xge;

  # STEP 3: Greek Letter Names
  #    convert the names of Greek letters into 
  #    the equivalent Latin letters.  only when
  #    between boundaries due to too many false
  #    positives on things like "phi", "eta", "pi".

    s/ \b ALPHA     \b  /A/xgi;     #  α  
    s/ \b BETA      \b  /B/xgi;     #  β  
    s/ \b GAMMA     \b  /G/xgi;     #  γ  
    s/ \b DELTA     \b  /D/xgi;     #  δ  
    s/ \b EPSILON   \b  /E/xgi;     #  ε  
    s/ \b ZETA      \b  /Z/xgi;     #  ζ  
    s/ \b ETA       \b  /E/xgi;     #  η  
    s/ \b THETA     \b  /TH/xgi;    #  θ  
    s/ \b IOTA      \b  /I/xgi;     #  ι  
    s/ \b KAPPA     \b  /K/xgi;     #  κ  
    s/ \b LAMDA     \b  /L/xgi;     #  λ  
    s/ \b MU        \b  /M/xgi;     #  μ  
    s/ \b NU        \b  /N/xgi;     #  ν  
    s/ \b XI        \b  /X/xgi;     #  ξ  
    s/ \b OMICRON   \b  /O/xgi;     #  ο  
    s/ \b PI        \b  /P/xgi;     #  π  
    s/ \b RHO       \b  /R/xgi;     #  ρ  
    s/ \b SIGMA     \b  /S/xgi;     #  σ  
    s/ \b TAU       \b  /T/xgi;     #  τ  
    s/ \b UPSILON   \b  /U/xgi;     #  υ  
    s/ \b PHI       \b  /PH/xgi;    #  φ  
    s/ \b CHI       \b  /CH/xgi;    #  χ  
    s/ \b PSI       \b  /PS/xgi;    #  ψ  
    s/ \b OMEGA     \b  /O/xgi;     #  ω  

  # STEP 4: Alpha-Beta Hack
  #    Convert "alpha" and "beta" even when they 
  #    only occur at half-boundaries.  Extend to 
  #    other Greeks as needed but beware false positives:
  #    too many Greek letter names occur at half-boundaries
  #    (beginning or ends of words) without really being
  #    references to Greek letters!

    s/ \b ALPHA     \B  /A/xgi;     #  α  
    s/ \B ALPHA     \b  /A/xgi;     #  α  
    s/ \b BETA      \B  /B/xgi;     #  β  
    s/ \B BETA      \b  /B/xgi;     #  β  

  # STEP 5: Greek to Latin
  #    Change literal Greek letters into the 
  #    equivalent their equivalents in Latin

    s/ \N{GREEK SMALL LETTER ALPHA}         /a/xg;     #  α  
    s/ \N{GREEK SMALL LETTER BETA}          /b/xg;     #  β  
    s/ \N{GREEK SMALL LETTER GAMMA}         /g/xg;     #  γ  
    s/ \N{GREEK SMALL LETTER DELTA}         /d/xg;     #  δ  
    s/ \N{GREEK SMALL LETTER EPSILON}       /e/xg;     #  ε  
    s/ \N{GREEK SMALL LETTER ZETA}          /z/xg;     #  ζ  
    s/ \N{GREEK SMALL LETTER ETA}           /e/xg;     #  η  
    s/ \N{GREEK SMALL LETTER THETA}         /th/xg;    #  θ  
    s/ \N{GREEK SMALL LETTER IOTA}          /i/xg;     #  ι  
    s/ \N{GREEK SMALL LETTER KAPPA}         /k/xg;     #  κ  
    s/ \N{GREEK SMALL LETTER LAMDA}         /l/xg;     #  λ  
    s/ \N{GREEK SMALL LETTER MU}            /m/xg;     #  μ  
    s/ \N{GREEK SMALL LETTER NU}            /n/xg;     #  ν  
    s/ \N{GREEK SMALL LETTER XI}            /x/xg;     #  ξ  
    s/ \N{GREEK SMALL LETTER OMICRON}       /o/xg;     #  ο  
    s/ \N{GREEK SMALL LETTER PI}            /p/xg;     #  π  
    s/ \N{GREEK SMALL LETTER RHO}           /r/xg;     #  ρ  
    s/ \N{GREEK SMALL LETTER FINAL SIGMA}   /s/xg;     #  ς  
    s/ \N{GREEK SMALL LETTER SIGMA}         /s/xg;     #  σ  
    s/ \N{GREEK SMALL LETTER TAU}           /t/xg;     #  τ  
    s/ \N{GREEK SMALL LETTER UPSILON}       /u/xg;     #  υ  
    s/ \N{GREEK SMALL LETTER PHI}           /ph/xg;    #  φ  
    s/ \N{GREEK SMALL LETTER CHI}           /ch/xg;    #  χ  
    s/ \N{GREEK SMALL LETTER PSI}           /ps/xg;    #  ψ  
    s/ \N{GREEK SMALL LETTER OMEGA}         /o/xg;     #  ω  

    s/ \N{GREEK CAPITAL LETTER ALPHA}       /A/xg;     #  Α  
    s/ \N{GREEK CAPITAL LETTER BETA}        /B/xg;     #  Β  
    s/ \N{GREEK CAPITAL LETTER GAMMA}       /G/xg;     #  Γ  
    s/ \N{GREEK CAPITAL LETTER DELTA}       /D/xg;     #  Δ  
    s/ \N{GREEK CAPITAL LETTER EPSILON}     /E/xg;     #  Ε  
    s/ \N{GREEK CAPITAL LETTER ZETA}        /Z/xg;     #  Ζ  
    s/ \N{GREEK CAPITAL LETTER ETA}         /E/xg;     #  Η  
    s/ \N{GREEK CAPITAL LETTER THETA}       /TH/xg;    #  Θ  
    s/ \N{GREEK CAPITAL LETTER IOTA}        /I/xg;     #  Ι  
    s/ \N{GREEK CAPITAL LETTER KAPPA}       /K/xg;     #  Κ  
    s/ \N{GREEK CAPITAL LETTER LAMDA}       /L/xg;     #  Λ  
    s/ \N{GREEK CAPITAL LETTER MU}          /M/xg;     #  Μ  
    s/ \N{GREEK CAPITAL LETTER NU}          /N/xg;     #  Ν  
    s/ \N{GREEK CAPITAL LETTER XI}          /X/xg;     #  Ξ  
    s/ \N{GREEK CAPITAL LETTER OMICRON}     /O/xg;     #  Ο  
    s/ \N{GREEK CAPITAL LETTER PI}          /P/xg;     #  Π  
    s/ \N{GREEK CAPITAL LETTER RHO}         /R/xg;     #  Ρ  
    s/ \N{GREEK CAPITAL LETTER SIGMA}       /S/xg;     #  Σ  
    s/ \N{GREEK CAPITAL LETTER TAU}         /T/xg;     #  Τ  
    s/ \N{GREEK CAPITAL LETTER UPSILON}     /U/xg;     #  Υ  
    s/ \N{GREEK CAPITAL LETTER PHI}         /PH/xg;    #  Φ  
    s/ \N{GREEK CAPITAL LETTER CHI}         /CH/xg;    #  Χ  
    s/ \N{GREEK CAPITAL LETTER PSI}         /PS/xg;    #  Ψ  
    s/ \N{GREEK CAPITAL LETTER OMEGA}       /O/xg;     #  Ω  

    return $_;

}


1;
