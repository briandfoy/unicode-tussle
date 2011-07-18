package Unicode::Tussle;
use vars qw( $VERSION );

$VERSION = '1.01';

=encoding utf8

=head1 NAME

Unicode::Tussle - Tom's Unicode Scripts So Life is Easier

=head1 SYNOPSIS

This is a collection of separate program. See the documentation for each
program.

=head1 DESCRIPTION

These programs are installed wherever you told the build system to install
programs.

=over 4

=item FixString.pm

=item Underscore.pm

=item byte2uni

Show mapping between byte encodings and Unicode.

=item es-sort

A demonstration of Spanish sorting.

=item hantest

=item havshpx

Cevag vasvavgr crezhgngvbaf bs shpx va havpbqr nyvnfrf.

Yeah, that's right, you have to suss it out yourself.

=item hypertest

=item lc

Lowercases the data in the files you specify on the command line, or
standard input. This program first converts to NFD, then lowercases,
converts to NFC, and prints the result to standard output.

=item leo

Reverse input to ʇndʇno.

=item macroman

Show mapping between MacRoman and Unicode.

=item nfc

Converts the data in the files you specify on the command line, or
standard input to Normalization Form (Canonical) Composed.

=item nfcheck

Report which of the four Unicode normalization forms the files named
in the argument list (or STDIN if none) are already equivalent to.

=item nfd

Converts the data in the files you specify on the command line, or
standard input to Normalization Form (Canonical) Decomposed.

=item nfkc

Converts the data in the files you specify on the command line, or
standard input to Normalization Form (Canonical) Composed.

=item nfkd

Converts the data in the files you specify on the command line, or
standard input to Normalization Form (Canonical) Decomposed.

=item nunez

Cómo se debiera ordenar y buscar palabras en Unicode que pueden
llevarse marcas diacríticas (o no) sin que éstas afecten la búsqueda.
También cómo cambiar el orden para que no cuente con artículos al
principio del los nombres, como se hace con los títulos de libros &c.

=item rename

Rename or relink files. The original B<rename> and B<relink> were by
Larry Wall. This version is by Tom Christiansen.

=item tc

Titlecases the data in the files you specify on the command line, or
standard input. This program I<does not> normalize the input.

=item tcgrep

B<tcgrep> searches for lines (or, optionally, paragraphs) in files
that satisfy the criteria specified by the user-supplied patterns.
Because B<tcgrep> is a Perl program, the user has full access to
Perl's rich regular expression engine.

=item titulate

Titlecases the data in the files you specify on the command line, or
standard input. This program I<does not> normalize the input, and tries
a little harder than B<tc>, and is slightly smarter about prepositions.

=item uc

Uppercases the data in the files you specify on the command line, or
standard input. This program first converts to NFD, then uppercases,
converts to NFC, and prints the result to standard output.

=item ucsort

Sort alphabetic text using the Unicode Collation algorithm.

=item unicaps

Converts the data in the files you specify on the command line, or
standard input, to small caps, to the extent it can, and prints the
result to standard output.

=item unichars

List characters for one or more properties.

=item unifmt

Unicode text formatter.

=item unifont

Converts latin and greek to alternate font variations.

=item unilook

Improved version of look(1) program for Unicode.

=item uninames

Search the current Unicode Nameslist,

=item uninarrow

Convert the characters in the files you specify on the command line, or
standard input, to their narrow versions. This is the opposite of B<uniwide>.

=item uniprops

List regex properties of one or more characters.

=item uniquote

Escape special characters using various quoting conventions

=item unisubs

=item unisupers

Convert to superscripts by using the appropriate character.

=item unititle

=item uniwc

A Unicode-aware version of B<wc>.

=item uniwide

Convert  the characters in the files you specify on the command line, or
standard input, to their wider versions. This is the opposite of B<uninarrow>.

=item vowel-sigs

=back

=head1 EXAMPLES

Here are some interesting runs of B<unichars>:

	unichars -aBbs '\p{Age=6}'
	unichars -aBbs '\p{Age=6}' '\P{Miscellaneous_Symbols_And_Pictographs}' > /tmp/u6
	unichars -ac '/\bLETTER\b.*\b[A-E]\p{Lu}?\b/' > /tmp/na
	unichars -ac '/\bLETTER\b.*\b[A-E]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' --level=4 - > /tmp/ua
	unichars -ac '/\bLETTER\b.*\b[A-E]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' --level=4 > /tmp/ua
	unichars -ac 'checkFCC' | less -r
	unichars -ac 'checkFCC(NFD)'
	unichars -ac 'checkFCC NFD' | less -r
	unichars -ac 'checkFCC(NFD)' | less -r
	unichars -ac 'checkFCD' | less -r
	unichars -ac 'checkNFD'
	unichars -ac '! checkNFD' | less
	unichars -ac 'checkNFD' | less
	unichars -ac '! checkNFD' | less -r
	unichars -ac 'Comp_Ex' | less -r
	unichars -ac 'Exclusion' | less -r
	unichars -ac 'isExclusion' | less -r
	unichars -ac 'isSingleton'
	unichars -ac 'isSingleton()'
	unichars -ac 'isSingleton()' | less -r
	unichars -ac 'length NFD ==1 && ! /[a-zA-Z]/ && /(?=\pL)[\p{Latin}\p{Common}]/ && NAME =~ /\b(MATHEMATICAL|LATIN|LETTER)\b.*\b[ADO]\p{Lu}?\b/' > /tmp/n1
	unichars -ac 'length NFD ==1 && ! /[a-zA-Z]/ && /(?=\pL)[\p{Latin}\p{Common}]/ && NAME =~ /\b(MATHEMATICAL|LATIN|LETTER)\b.*\b[ADO]\p{Lu}?\b/' | ucsort --level=1 --upper-before-lower --preprocess='s/..\K.*//' > /tmp/u2
	unichars -ac 'length NFD ==1 && ! /[a-zA-Z]/ && /(?=\pL)[\p{Latin}\p{Common}]/ && NAME =~ /\b(MATHEMATICAL|LATIN|LETTER)\b.*\b[ADO]\p{Lu}?\b/' | wc -l
	unichars -ac 'NFC_NO' | less -r
	unichars -ac 'NFD_NO' | less -r
	unichars -ac 'NFD =~ /\pM/ && NFD =~ /^\p{Grapheme_Base}\p{Grapheme_Extend}*$/' | less
	unichars -ac 'NFD =~ /\pM/ && NFD !~ /^\p{Grapheme_Base}\p{Grapheme_Extend}*$/' | less -r
	unichars -ac 'NFD =~ /\pM/ && NFD =~ /^\p{Grapheme_Base}\p{Grapheme_Extend}*$/' | less -r
	unichars -ac 'NFD =~ /^\PM\pM*\z/ && NFD !~ /^(?:\p{Grapheme_Base}\p{Grapheme_Extend}*|\p{Grapheme_Extend})\z/' | less -r
	unichars -ac 'NFD =~ /^\PM\pM*\z/ && NFD !~ /^\p{Grapheme_Base}\p{Grapheme_Extend}*\z/' | less -r
	unichars -ac 'NFD =~ /^\X$/ && NFD !~ /^\p{Grapheme_Base}\p{Grapheme_Extend}*$/' | less
	unichars -ac 'NFD =~ /^\X$/ && NFD !~ /^\PM\pM*\z/' | less -r
	unichars -ac 'NFD =~ /^\X$/ && NFD =~ /^\PM\pM*\z/' | less -r
	unichars -ac 'NFKC_NO' | less -r
	unichars -ac 'NonStDecomp' | less -r
	unichars -ac 'not checkFCC' | less -r
	unichars -ac 'not checkFCD' | less -r
	unichars -ac 'not checkNFD' | less
	unichars -ac 'ord>0xffff && /\p{Latin}/'
	unichars -ac '\p{cased}' '\PL' | less
	unichars -ac '\p{cased}' '\P{upper}' | less
	unichars -ac '\p{cased}' '\P{upper}' '\P{Lower}' | less
	unichars -ac '\p{Greek}' | less
	unichars -ac '\p{Lower}' 'NAME =~ /CAPITAL/' > /tmp/s
	unichars -ac '/(?=\pL)[\p{Latin}\p{Common}]/ && NAME =~ /\b(MATHEMATICAL|LATIN|LETTER)\b.*\b[ADO]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' > /tmp/uc
	unichars -ac '/(?=\pL)[\p{Latin}\p{Common}]/ && NAME =~ /\b(MATHEMATICAL|LETTER)\b.*\b[ADO]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' --normalization=NFKD > /tmp/uk
	unichars -ac '/(?=\pL)[\p{Latin}\p{Common}]/ && NAME =~ /\b(MATHEMATICAL|LETTER)\b.*\b[ADO]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' > /tmp/uc
	unichars -ac '/(?=\pL)[\p{Latin}\p{Common}]/ && NAME =~ /\b(MATHEMATICAL|LETTER)\b.*\b[ADP]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' > /tmp/uc
	unichars -ac '/(?=\pL)[\p{Latin}\p{Common}]/ && NAME =~ /\b(MATHEMATICAL|MODIFIER|LETTER)\b.*\b[A-E]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' > /tmp/uc
	unichars -ac '/\pL/ && '[\p{Latin}\p{Common}]' && NAME =~ /\b(MATHEMATICAL|MODIFIER|LETTER)\b.*\b[A-E]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' > /tmp/uc
	unichars -ac '/\pL/ && [\p{Latin}\p{Common}] && NAME =~ /\b(MATHEMATICAL|MODIFIER|LETTER)\b.*\b[A-E]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' > /tmp/uc
	unichars -ac '/[\pM\pL]/ && NAME =~ /\bLETTER\b.*\b[A-E]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' --level=4 > /tmp/ua
	unichars -ac '/[\pM\pL]/ && NAME =~ /\b(MATHEMATICAL|COMBINING|MODIFIER|LETTER)\b.*\b[A-E]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' --level=4 > /tmp/ua
	unichars -ac '\p{Upper}' 'NAME !~ /CAPITAL/'
	unichars -acsbBCnf '\p{Cased}' '[^\p{Ll}\p{Lu}]'
	unichars -acsbBCnf '/\p{CWCF}/ != /p{CWCM}/'
	unichars -acsbBCnf '/\p{CWCF}/ != \p{CWCM}'
	unichars -a -dgfs '\p{Cased}' '\PL'
	unichars -a -gfs '\p{Cased}' '\PL'
	unichars -a -gfs '\p{Cased}' '[^\p{Upper}\p{Title}]'
	unichars -ags 'length NFKD > 5'
	unichars -a -gs 'length(uc) > 1'
	unichars -a -gs 'length(ucfirst) > 1' | wc -l
	unichars -agsn NUM
	unichars -ags '\p{lowercase}' '\P{Ll}'
	unichars -ags '\p{lowercase}' '\P{Ll}' | wc -l
	unichars -ags '\p{uppercase}' '\P{Lu}'
	unichars -ags '\p{uppercase}' '\P{Lu}' | wc -l
	unichars -a 'NAME =~ /BALL/'
	unichars -a 'NAME =~ /EARTH GLOBE/'
	unichars -anc 'NUM && (10*NUM) !~ /0/'
	unichars -anc 'UCA =~  UCA("d")'
	unichars -a 'NFKD =~ /\[/'
	unichars -a -ngfs 'ord > 0xFFFF' '\p{Cased}'
	unichars -a -ngfs 'ord > 0xFFFF' '\p{Cased}' '\PL'
	unichars -a -ngfs '\p{Cased}' '\PL'
	unichars -a 'ord > 0xffff' 'NAME =~ /FACE/'
	unichars -a '\p{Age:6.0}' '\P{Numeric_Value=NaN}'
	unichars -a '\P{Alnum}' '\w' | wc -l
	unichars -a '\P{Bidi_Class=NSM}' '\p{Mn}'
	unichars -a '\P{Bidi_Class=NSM}' '\p{Mn}' | wc -l
	unichars -a '\P{Block=CombiningDiacriticalMarks}' '\p{Mn}' | wc -l
	unichars -a '\p{Cased}' '[^\p{Ll}\p{Lt}\p{Lu}]' | wc -l
	unichars -a '\p{Cased}' '\p{Lm}' | wc -l
	unichars -a '\p{Cased}' '\PL' | wc -l
	unichars -a '\p{InMiscellaneousSymbolsAnd_Pictographs}'
	unichars -a '\p{InMiscellaneousSymbolsAnd_Pictographs}' > /tmp/emoji
	unichars -a '\p{IsThai}' '\P{InThai}'
	unichars -a '\P{IsThai}' '\p{InThai}'
	unichars -a '\p{Latin}' 'NAME =~ /\bWITH\b/' 'length(NFKD) == 1' | ucsort > /tmp/d
	unichars -a '\p{Latin}' '\w' | wc -l
	unichars -a '\p{Lower}' '\P{CWU}' | wc -l
	unichars -a '\PL' '\p{Alphabetic}' | wc -l
	unichars -a '\p{Nchar}'
	unichars -a '\pN' '\W' | wc -l
	unichars -a '\p{Other_Alphabetic}' '\PM' | less
	unichars -a '\p{Other_Alphabetic}' '\PM' | M
	unichars -a '[\p{Pf}\p{Pi}]'
	unichars -a '[\p{Pi}]'
	unichars -a '\p{Po}'
	unichars -a '\p{Title}' '[^\p{CWL}\p{CWU}]' | wc -l
	unichars -a '\p{Upper}' '\P{CWL}' | wc -l
	unichars -a 'UCA1 eq UCA1("a")'
	unichars -a 'UCA1 eq UCA1("a")' | cat -n
	unichars -a 'UCA1 eq UCA1("a")' | less
	unichars -a 'UCA1 eq UCA1("d")' | cat -n
	unichars -a 'UCA1 eq UCA1("e")' | cat -n
	unichars -a 'UCA1 eq UCA1("g")' | cat -n
	unichars -a 'UCA1 eq UCA1("m")' | cat -n
	unichars -a 'UCA1 eq UCA1("p")' | cat -n
	unichars -a 'UCA eq UCA("d")'
	unichars -a 'UCA eq UCA("d")' 'NFKD !~ /d/i'
	unichars -a 'UCA eq UCA("d")' 'NFKD !~ /d/i' | ucsort
	unichars -a 'UCA eq UCA("d")' > /tmp/d
	unichars -a '(UCA(NFKD) =~ (UCA("o")."|".UCA("a"))) || NFKD =~ /[ao]/i' | ucsort | less -r
	unichars -a '\w' '[^_\p{Alphabetic}\p{Nd}]' | wc -l
	unichars -a '\w' '\PM' 'ord > 0xffff' '\PN' | less
	unichars -a '\w' '\PM' '\PL'
	unichars -a '\w' '\PM' '\PL' '\PN' | less
	unichars -Bbs '\p{Age=6}'
	unichars -Bbs '\p{Age=6}'o
	unichars -BCgsa '[\p{CCC=224}\p{CCC=226}'
	unichars -BCgsa '[\p{CCC=224}\p{CCC=226}]'
	unichars -BCgsa '[\p{CCC=Left}\p{CCC=Right}]'
	unichars -BCgsa '\p{Mn}'
	unichars --bmp --smp 'UCA1 eq UCA1("d")' | cat -n >> /tmp/lets
	unichars --bmp --smp 'UCA1 eq UCA1("e")' | cat -n
	unichars --bmp --smp 'UCA1 eq UCA1("e")' | cat -n >> /tmp/lets
	unichars --bmp --smp 'UCA1(NFKD) eq UCA1("d")' | cat -n >> /tmp/lets2
	unichars --bmp --smp 'UCA1(NFKD) eq UCA1("e")' | cat -n >> /tmp/lets2
	unichars -bs .
	unichars -bs 1
	unichars '\bSCRIPT\b' '[CEFHILMRego]'
	unichars -bs '\p{Age=6}'
	unichars -Bs '\p{Bidiclass:M}'
	unichars -Bs '\p{BidiM}'
	unichars -Bs '\p{BI:M}'
	unichars -B '\w'
	unichars -B /\w'
	unichars -c
	unichars -c '\D' NUM
	unichars -Cgas '\pM'
	unichars -Cgas '\pM' '\P{CCC=0}' | sort -t= -k4,4n -k1,1 | less -r
	unichars -Cgas '\pM' '[\p{Common}\p{Inherited}]' 'NAME =~ /BAR|SLASH|SOLIDUS|STROKE|LINE/' | sort -t= -k4,4n -k2,2
	unichars -Cgas '\pM' '[\p{Common}\p{Inherited}]' 'NAME =~ /BAR|SLASH|STROKE|LINE/' | sort -t= -k4,4n -k2,2
	unichars -Cgsa '\p{Mc}'
	unichars -Cgsa '\p{Mn}'
	unichars -Cgs '\p{Me}' 'NAME =~ /BAR|SLASH|STROKE|LINE/' | sort -t= -k4,4n -k2,2 | less
	unichars -Cgs '\pM' 'NAME =~ /above/' | sort -t= -k4,4n -k2,2
	unichars -Cgs '\pM' 'NAME =~ /ABOVE/' | sort -t= -k4,4n -k2,2
	unichars -Cgs '\pM' 'NAME =~ /BAR|SLASH|STROKE|LINE/' | sort -t= -k4,4n -k2,2
	unichars -Cgs '\pM' 'NAME =~ /BAR|SLASH|STROKE|LINE/' | sort -t= -k4,4n -k2,2 | less
	unichars -Cgs '\pM' 'NAME =~ /SLASH/' | sort -t= -k4,4n -k2,2
	unichars -Cgs '\pM' 'NAME =~ /TILDE/' | sort -t= -k4,4n -k2,2
	unichars -Cgs '\pM' '\P{CCC=0}' | sort -t= -k4,4n -k2,2 | less -r
	unichars -Cgs '\pM' '[\p{Common}\p{Inherited}]' 'NAME =~ /BAR|SLASH|STROKE|LINE/' | sort -t= -k4,4n -k2,2
	unichars -Cgs '\pM' '[\p{Common}\p{Inherited}]' 'NAME =~ /BAR|SLASH|STROKE|LINE/' | sort -t= -k4,4n -k2,2 | less
	unichars -Cgs '\pM' | sort -t= -k4,4n -k2,2 | grep -i TILDE
	unichars -Cgs '\pM' | sort -t= -k4,4n -k2,2 | less -r
	unichars -c 'length NFD ==1 && ! /[a-zA-Z]/ && /(?=\pL)[\p{Latin}\p{Common}]/ && NAME =~ /\b(MATHEMATICAL|LATIN|LETTER)\b.*\b[ADO]\p{Lu}?\b/'
	unichars -c 'length NFD ==1 && ! /[a-zA-Z]/ && /(?=\pL)[\p{Latin}\p{Common}]/ && NAME =~ /\b(MATHEMATICAL|LATIN|LETTER)\b.*\b[ADO]\p{Lu}?\b/' | less
	unichars -c 'length NFD ==1 && ! /[a-zA-Z]/ && /(?=\pL)[\p{Latin}\p{Common}]/ && NAME =~ /\b(MATHEMATICAL|LATIN|LETTER)\b.*\b[ADO]\p{Lu}?\b/' | wc -l
	unichars -c 'NAME =~ /LATIN LETTER SMALL CAPITAL/' | less -r
	unichars -c 'NAME =~ /ORD/'
	unichars -c 'NFD ==1 && ! /[a-zA-Z]/ && /(?=\pL)[\p{Latin}\p{Common}]/ && NAME =~ /\b(MATHEMATICAL|LATIN|LETTER)\b.*\b[ADO]\p{Lu}?\b/'
	unichars -c 'NFD =~ /^\PM\pM*$/ && NFD !~ /^\p{Grapheme_Base}\p{Grapheme_Extend}*$/' | less
	unichars -c 'NFD =~ /^\X*$/ && NFD !~ /^\p{Grapheme_Base}\p{Grapheme_Extend}*$/' | less
	unichars -c 'NFD =~ /^\X+$/ && NFD !~ /^\p{Grapheme_Base}\p{Grapheme_Extend}*$/' | less
	unichars -c 'NFD =~ /^\X$/ && NFD !~ /^\p{Grapheme_Base}\p{Grapheme_Extend}*$/' | less
	unichars -c 'NFD =~ /^\X$/ && NFD =~ /^\p{Grapheme_Base}\p{Grapheme_Extend}*$/' | less
	unichars -c NUM
	unichars -c 'NUM && (10*NUM) !~ /0/'
	unichars -c 'NUM && 10*NUM !~ /0/'
	unichars -c 'ord>0xffff && /\p{Latin}/'
	unichars -c 'ord == 640'
	unichars -c '\p{Alphabetic}'
	unichars -c '\p{Alphabetic}' | head -1000 | tail
	unichars -c '\p{Alphabetic}' | head -3000 | tail
	unichars -c '\p{Alphabetic}' | less -r
	unichars -c '\p{Alphabetic}' '\pM'
	unichars -c '\p{Alphabetic}' '\pM' | less
	unichars -c '\p{Alphabetic}' '\pM' | less -r
	unichars -c '\p{cased}' '[^\p{CWU}\p{CWL}\p{CWT}]' | less -r
	unichars -c '\p{cased}' '\PL'
	unichars -c '\p{cased}' '\PL' | less
	unichars -c '\p{Dash}' '\P{Pd}'
	unichars -c '\p{Greek}'
	unichars -c '\p{Greek}' | less
	unichars -c '\p{Greek}' '\p{Lower}' 'ord <= ord("\N{greek:alpha}")' 'ord >= ord "\N{omega}"'
	unichars -c '\p{Greek}' '\p{Lower}' 'ord() < ord("\N{greek:alpha}") || ord > ord "\N{omega}"'
	unichars -c '\p{Greek}' '\p{Lower}' 'ord() <= ord("\N{greek:alpha}") || ord >= ord "\N{omega}"'
	unichars -c '\p{Greek}' '\p{Lower}' 'ord() <= ord("\N{greek:alpha}")' 'ord >= ord "\N{omega}"'
	unichars -c '\p{IDC}' '\W'
	unichars -c '\p{IDC}' '\W' | cat -n
	unichars -c '\p{IDC}' '\W' | wc -l
	unichars -c '\p{InEnclosed_Alphanumerics}'
	unichars -c '\p{InEnclosed_Alphanumerics}' '\p{lower}'
	unichars -c '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b[A-E]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' --level=4 > /tmp/uu
	unichars -c '\p{Lower}' 'NAME =~ /CAPITAL/' > /tmp/s
	unichars -c '\p{lower}' '\P{CWU}'
	unichars -c '\p{lower}' '\P{CWU}' | less
	unichars -c '\p{lower}' '\p{Lm}' | less
	unichars -c '\p{lower}' '\p{Lm}' | less -r
	unichars -c '\p{lower}' '\p{Lm}' | | perl -pe 's/.//' | ucsort --reverse-fields | less
	unichars -c '\p{lower}' '\p{Lm}' | perl -pe 's/.//' | ucsort --reverse-fields | less
	unichars -c '\p{lower}' '\p{Lm}' | perl -pe 's/.//' | ucsort --reverse-fields | less -r
	unichars -c '\p{Mc}'
	unichars -c '\pM' '\P{Diacritic}'
	unichars -c '\PM' '\p{Diacritic}'
	unichars -c '\p{No}'
	unichars -c '\p{No}' | head
	unichars -c '\p{No}' | less
	unichars -c '\p{No}' '\w'
	unichars -c '\p{No}' '\W'
	unichars -c '\p{No}' '\w' | head
	unichars -c '\p{No}' '\W' | head
	unichars -c '\p{No}' '\W' | less
	unichars -c '[\p{Pi}\p{Ps}]' 'NAME =~ /VERTICAL/'
	unichars -c '\pP' '\P{QMark}' 'NAME =~ /QUOT/'
	unichars -c '\p{Upper}' 'NAME !~ /CAPITAL/'
	unichars -cs /k/i
	unichars -cs 'NFD \!~ /d/i' 'NFKD \!~ /d/i' 'UCA eq UCA("d")'
	unichars -cs 'NFD \!~ /d/i' 'NFKD =~ /d/i' 'UCA eq UCA("d")'
	unichars -cs 'NFD \!~ /d/i' 'NFKD =~ /d/' 'UCA eq UCA("d")'
	unichars -cs 'NFD =~ /d/i' 'NFKD =~ /d/' 'UCA eq UCA("d")'
	unichars -cs 'NFD \!~ /o/i' 'NFKD \!~ /o/i' 'UCA eq UCA("o")'
	unichars -cs 'NFKD !~ /a/i' 'UCA eq UCA("a")'
	unichars -cs 'NFKD \!~ /a/i' 'UCA eq UCA("a")'
	unichars -cs 'NFKD \!~ /a/i' 'UCA =~ UCA("a")'
	unichars -cs 'NFKD \!~ /a/i' 'UCA =~ UCA("ae")'
	unichars -cs 'NFKD \!~ /b/i' 'UCA eq UCA("b")'
	unichars -cs 'NFKD \!~ /c/i' 'UCA eq UCA("c")'
	unichars -cs 'NFKD \!~ /d/i' 'UCA eq UCA("d")'
	unichars -cs 'NFKD \!~ /e/i' 'UCA eq UCA("e")'
	unichars -cs 'NFKD \!~ /f/i' 'UCA eq UCA("f")'
	unichars -cs 'NFKD \!~ /f/i' 'UCA =~ UCA("f")'
	unichars -cs 'NFKD \!~ /g/i' 'UCA eq UCA("g")'
	unichars -cs 'NFKD \!~ /h/i' 'UCA eq UCA("h")'
	unichars -cs 'NFKD \!~ /o/i' 'UCA eq UCA("o")'
	unichars -cs 'NFKD \!~ /o/i' 'UCA =~ UCA("oe")'
	unichars -cs '\P{ASCII}' '(lc() . uc) =~ /\p{ASCII}/'
	unichars -cs '\P{ASCII}' 'NFD \!~ /\p{ASCII}/' 'NFKD =~ /\p{ASCII}'
	unichars -cs '\P{ASCII}' 'NFD \!~ /\p{ASCII}/' 'NFKD =~ /\p{ASCII}/'
	unichars -cs /s/i
	unichars -cs 'UCA eq UCA("o")'
	unichars -cs 'UCA =~ UCA ( "a" ) '
	unichars -cs ' 'UCA =~ UCA ( "ae" ) '
	unichars -cs 'UCA =~ UCA ( "ae" ) '
	unichars -c '\w' '\W'
	unichars --debug 'ord() < 0x100 || die' '\p{No}' '\W'
	unichars --debug 'ord() < 0x100 || die' '\p{No}' '\W' | head
	unichars --debug 'ord() < 0x100 || die' '\p{No}' '\W' | less
	unichars --debug '\p{No}' '\W' | head
	unichars --debug '\p{No}' '\W' | less
	unichars --debug '\p{No}' '\W' 'ord < 0xFF || die' | head
	unichars --debug '\p{No}' '\W' 'ord > 0xFF && die' | head
	unichars --debug '\p{No}' '\W' 'ord() < 0xFF || die' | head
	unichars 'defined(NUM) && () ~~ [1..10]' | less -r
	unichars 'defined(NUM) && [1..10] ~~ NUM' | less -r
	unichars 'defined(NUM) && [1..1] ~~ NUM' | less -r
	unichars 'defined(NUM) && ! (NUM() ~~ [0..10])' | less -r
	unichars 'defined(NUM) && ! NUM() ~~ [0..10]' | less -r
	unichars 'defined(NUM) && NUM <= 10'
	unichars 'defined(NUM) && NUM <= 10' | less
	unichars 'defined(NUM) && NUM <= 10' | less -r
	unichars 'defined(NUM) && ! NUM() ~~ [1..10]' | less -r
	unichars 'defined(NUM) && NUM() ~~ [1..10]' | less -r
	unichars '\d' '\p{common}'
	unichars '\d' '\p{Latin}
	unichars '\d' '\p{Latin}'
	unichars -fgas 'CF =~  "."'
	unichars -fgas 'CF eq "C"'
	unichars -fgas 'CF eq "F"'
	unichars -fgas 'length(uc . ucfirst . lc) != 3'
	unichars -fgas 'length(uc . ucfirst . lc) != length NFKD * 3'
	unichars -fgas 'length(uc . ucfirst . lc) != length(NFKD) * 3'
	unichars -fgas 'not /\U\Q$_/i'
	unichars -fgas '/\U$_/i'
	unichars -fgas '/\U\Q$_/i'
	unichars -fgns '(?=\P{Ll})\p{Lower}|(?=\p{Lu})\p{Upper}' | ucsort | cat -n | less -r
	unichars -fgns '(?=\P{Ll})\p{Lower}|(?=\p{Lu})\p{Upper})' | ucsort | cat -n | less -r
	unichars -fgns '/(?= \P{Ll} ) \p{Lower}/x || /(?=\P{Lu}) \p{Upper}/x' | ucsort | cat -n | less -r
	unichars -fgns '\p{Lower}' '\P{Ll}' | ucsort | cat -n | less -r
	unichars -fgns '(?x) (?= \P{Ll} ) \p{Lower} | (?=\P{Lu}) \p{Upper}'
	unichars -fgns '(?x) (?= \P{Ll} ) \p{Lower} | (?=\P{Lu}) \p{Upper}' | ucsort | cat -n | less -r
	unichars -gacs '\p{Cased}' '\P{CWCM}' | cat -n | less -r
	unichars -ga '\P{ASCII}' '[\p{Common}\p{Inherited}]' '^[\p{Ll}\p{Lu}]'
	unichars -ga '\P{ASCII}' '[\p{Common}\p{Inherited}]' '[^\p{Ll}\p{Lu}]'
	unichars -ga '\P{ASCII}' '[\p{Common}\p{Inherited}]' '[^\p{Ll}\p{Lu}\pM\pC\pZ]'
	unichars -ga '\P{ASCII}' '[\p{Common}\p{Inherited}]' '[^\p{Ll}\p{Lu}\pM\pC\pZ]' | wc -l
	unichars -ga '\P{ASCII}' '[\p{Common}\p{Inherited}]' '[^\pM\pC\pZ]' 'NFD !~ /\p{ASCII}/' | wc -l
	unichars -ga '\P{ASCII}' '\p{Common}' '\pM'
	unichars -ga '\P{ASCII}' '\p{Common}' '[\pP\pS]'
	unichars -ga '\P{ASCII}' '\p{Inherited}' '\PL'
	unichars -ga '\P{ASCII}' '\p{Inherited}' '\pM'
	unichars -ga '\P{ASCII}' '[\pP\pS]'
	unichars -ga '[\p{Common}\p{Inherited}]' '[^\pM\pC\pZ]' 'NFD !~ /\p{ASCII}/'
	unichars -ga '[\p{Common}\p{Inherited}]' '[^\pM\pC\pZ]' 'NFD !~ /\p{ASCII}/' | wc -l
	unichars -gas 'length(uc) > 1'
	unichars -gas 'NFKD eq "."'
	unichars -gasn 'not /\d/' 'NFKD =~ /\d/'
	unichars -gasn 'not /\d/' 'NFKD =~ /\d/' | wc -l
	unichars -gasn 'not /\pN/' 'NFKD =~ /^(?=\D*$)\pN/'
	unichars -gasn 'not /\pN/' 'NFKD =~ /\pN/'
	unichars -gasn 'not /\pN/' 'NFKD =~ /\pN/' | wc -l
	unichars -gasn NUM
	unichars -gasn 'NUM && NUM < 0'
	unichars -gasn 'NUM || (/\pN/ && /\p{Enclosed_Alphanumerics}/)'
	unichars -gasn 'NUM || /\p{pokey(tchrist)% ls -d1F uni*
	unichars -gasn NUM > /tmp/num
	unichars -gasn NUM | wc -l
	unichars -gasn '\pN' 'not NUM'
	unichars -gasn '\PN' 'NUM'
	unichars -gas '\p{Cased}' '[^\p{CWU}\p{CWT}\p{CWL}]' | ucsort | less -r
	unichars -gas '\p{Cased}' '[^\p{CWU}\p{CWT}\p{CWL}]' | ucsort --upper-before-lower | less -r
	unichars -gas '\p{di}'
	unichars -gas '[\p{LB=CR}\p{LB=LF}\p{LB=NL}\p{LB=BK}]'
	unichars -gas '[\p{LB=CR}\p{LB=LF}\p{LB=NL}\p{LB=BK}]' '\V'
	unichars -gas '[\P{LB=CR}\P{LB=LF}\P{LB=NL}\P{LB=BK}]' '\v'
	unichars -gas '[\P{LB=CR}\P{LB=LF}\P{LB=NL}\P{LB=BK}]' '\V'
	unichars -gas '[\p{LB=CR}\p{LB=LF}\p{LB=NL}\p{LB=BR}'
	unichars -gas '[\p{LB=CR}\p{LB=LF}\p{LB=NL}\p{LB=BR}]'
	unichars -gas '\p{LB=LF}'
	unichars -gas '\p{LB=NL}'
	unichars -gas '/(?= \P{Ll} ) \p{Lower}/x || /(?=\P{Lu}) \p{Upper}/x' | ucsort --upper-before-lower | cat -n | less -r
	unichars -gas '\pL' 'NAME =~ /\bSCRIPT/'
	unichars -gas '\PL' 'NAME =~ /\bSCRIPT/'
	unichars -gas '\p{Lower}' '\P{Ll}'
	unichars -gas '\p{Lower}' '\P{Ll}' | ucsort | less
	unichars -gas '\PL' 'uc =~ /\p{Upper}/'
	unichars -gas '\pM'
	unichars -gas '\p{Me}'
	unichars -gas '\p{Other_Lowercase}'
	unichars -gas '\p{Other_Lowercase}' | wc -l
	unichars -gas '\p{SB=AT}'
	unichars -gas '\p{SB=ST}'
	unichars -gas '\p{sc=greek}' '\P{blk=greek}'
	unichars -gas '\P{Upper}' '\PL' 'uc =~ /\p{Upper}/'
	unichars -gas '\R'
	unichars -gas 'UCA eq UCA("d")'
	unichars -gas 'UCA eq UCA("d")' 'NFKD !~ /d/i'
	unichars -gas 'UCA eq UCA("o")' 'NFKD !~ /o/i'
	unichars -gbas '\p{sc=greek}' '\P{blk=greek}'
	unichars -gbas '\P{sc=greek}' '\p{blk=greek}'
	unichars -gcas '\pM'
	unichars -gCas '\pM'
	unichars -gc '\p{Control}'
	unichars -gcs '\p{Cased}' '\P{CWCF}' | cat -n | less -r
	unichars -gcs '\p{Cased}' '\P{CWCM}' | cat -n | less -r
	unichars -gcs '\p{Cased}' '[^\p{CWU}\p{CWD' | cat -n | less -r
	unichars -gcs '\p{Cased}' '\PL' | cat -n | less -r
	unichars -gCs '\pM' '\P{CCC=0}' | sort -k5.3,5n | less -r
	unichars -gCs '\pM' '\P{CCC=0}' | sort -k5.4,5n | less -r
	unichars -gCs '\pM' '\P{CCC=0}' | sort -t= -k4,4n -k1,1 | less -r
	unichars -gCs '\pM' | sort -k5.4,5n | less -r
	unichars -gCs '\pM' | sort -k5.4n | less -r
	unichars -gCs '\pM' | sort -k5.5n | less
	unichars -gCs '\pM' | sort -k5.5n | less -r
	unichars -gcs '\p{Titlecase}'
	unichars -gcs '\p{Titlecase}' | wc -l
	unichars -gfns '/\p{Lower}/ && /\p{CWU}/ || /\p{Upper}/ && /\P{CWL}/' | ucsort | less -r
	unichars -gfns '/\p{Lower}/ && /\P{CWU}/ || /\p{Upper}/ && /\P{CWL}/' | ucsort | less -r
	unichars -gfns '/\p{Lower}/ && /\P{CWU}/ || /\p{Upper}/ && /\P{CWL}/' | ucsort --upper | less -r
	unichars -gfs '\p{Cased}'
	unichars -gfs '\p{Cased}' '[^\p{CWU}\p{CWT}\p{CWL}]'
	unichars -gfs '\p{Cased}' '[^\p{Upper}\p{Lower}]'
	unichars -gfs '\p{Cased}' '[^\p{Upper}\p{Title}]'
	unichars -gns '\p{Lower}' '\P{Ll}' | ucsort | cat -n | less -r
	unichars -gns '\p{Lower}' '\P{Ll}' | ucsort | less -r
	unichars -g '\P{ASCII}' '[\p{Common}\p{Inherited}]' '[^\p{Ll}\p{Lu}\pM\pC\pZ]' | wc -l
	unichars -g '\P{ASCII}' '[\p{Common}\p{Inherited}]' '[^\pM\pC\pZ]' 'NFD !~ /\p{ASCII}/' | wc -l
	unichars -g '\P{ASCII}' '[\p{Common}\p{Inherited}]' '[^\pM\pC\pZ]' 'NFKD !~ /\p{ASCII}/' | wc -l
	unichars -g '\P{ASCII}' '\p{Common}' '[\pP\pS]'
	unichars -g '\p{Cased}' '\P{Alphabetic}'
	unichars -g '\p{Cased}' '\PL' | cat -n | less -r
	unichars -g '\p{InHalfwidthAndFullwidthForms}' '\p{bidim}'
	unichars -gs '/\A\p{alpha}+\z/ and not NFD =~ /\A\p{alpha}+$
	unichars -gs '/\A\p{alpha}+\z/ and not NFD =~ /\A\p{alpha}+\z/'
	unichars -gs '/\A\p{alpha}+\z/ and not NFD =~ /\A\p{perlword}+\z/'
	unichars -gs '/\A\p{alpha}+\z/ && NFD !~ /\A\p{perlword}+\z/'
	unichars -gs '/\A\p{alpha}+\z/ && NFKC !~ /\A\p{perlword}+\z/'
	unichars -gs '/\A\p{alpha}+\z/ && NFKD =~ /\W/'
	unichars -gs '/\A\p{alpha}+\z/ && ! /\w/'
	unichars -gsCB 'ord ~~ (0x345,0x37A)'
	unichars -gsCB 'ord ~~ [0x345,0x37A]'
	unichars -gsCB 'ord == 0x345 || ord == 0x37A'
	unichars -gs '\d'
	unichars -gsfB 'ord == 0x345 || ord == 0x37A'
	unichars -gsf '/\p{Upper}/ && /\P{CWL}/'
	unichars -gs 'length(lc) > 1' | wc -l
	unichars -gs 'length NFKD == 2'
	unichars -gs 'length NFKD > 4'
	unichars -gs 'length NFKD > 5'
	unichars -gs 'length NFKD > 6'
	unichars -gs 'length NFKD > 7'
	unichars -gs 'length NFL
	unichars -gs 'length(uc) > 1'
	unichars -gs 'length(uc) > 1' 'length(ucfirst) == 1'
	unichars -gs 'length(uc) > 1' | wc -l
	unichars -gs 'length(ucfirst) > 1'
	unichars -gs --locale=de_phonebook ''UCA1 eq UCA1 ( "ae" ) '
	unichars -gs --locale=de_phonebook 'UCA1 eq UCA1 ( "ae" ) '
	unichars -gs '    NFKD !~ /d/i && UCA1 eq UCA1("d")'
	unichars -gs 'NFKD !~ /d/i' 'UCA1 eq UCA1("d")'
	unichars -gs 'NFKD !~ /f/i && UCA1 eq UCA1("f")'
	unichars -gs 'NFKD !~ /h/i && UCA1 eq UCA1("h")'
	unichars -gs 'NFKD !~ /,/i' 'UCA1 eq UCA1(",")'
	unichars -gs 'NFKD !~ /;/i' 'UCA1 eq UCA1(";")'
	unichars -gs 'NFKD !~ /\?/i' 'UCA1 eq UCA1("?")'
	unichars -gs 'NFKD !~ /\./i' 'UCA1 eq UCA1(".")'
	unichars -gs 'NFKD !~ /o/i && UCA1 eq UCA1("o")'
	unichars -gs '    NFKD(string) !~ /d/i && UCA1 eq UCA1("d")'
	unichars -gs 'NFKD(string) !~ /d/i' 'UCA1 eq UCA1("d")'
	unichars -gsn NUM
	unichars -gsn 'NUM && NUM < 0'
	unichars -gs '\P{ASCII}' '\p{Common}' '\pP'
	unichars -gs '\p{Bidi_Class=NSM}' '\P{Mn}'
	unichars -gs '\P{Bidi_Class=NSM}' '\p{Mn}'
	unichars -gs '\p{bidim}'
	unichars -gs '[\p{bidim}\p{Ps}]'
	unichars -gs '[\p{bidim}\p{Ps}\p{Pe}]'
	unichars -gs '\p{Cased}' 'Comp_Ex()'
	unichars -gs '\p{Cased}' 'Exclusion()'
	unichars -gs '\p{Cased}' '[^\p{CWU}\p{CWT}\p{CWL}]'
	unichars -gs '\p{Cased}' '[^\p{CWU}\p{CWT}\p{CWL} NFKD =~ /\W/'
	unichars -gs '\p{Cased}' '[^\p{CWU}\p{CWT}\p{CWL}]' | ucsort | less
	unichars -gs '\p{Cased}' '[^\p{CWU}\p{CWT}\p{CWL}]' | ucsort | less -r
	unichars -gs '\p{Cased}' 'Singleton()'
	unichars -gs '\p{Inherited}'
	unichars -gs '/(?=\P{Ll})\p{Lower}|(?=\P{Lu})\p{Upper}/x' | ucsort --upper-before-lower | cat -n | less -r
	unichars -gs '/(?=\P{Ll})\p{Lower}|/(?=\P{Lu})\p{Upper}/x' | ucsort --upper-before-lower | cat -n | less -r
	unichars -gs '/(?= \P{Ll} ) \p{Lower}/x || /(?=\P{Lu}) \p{Upper}/x' | ucsort | cat -n | less -r
	unichars -gs '/(?= \P{Ll} ) \p{Lower} /x || / (?= \P{Lu} ) \p{Upper} /x' | ucsort --upper-before-lower | cat -n | less -r
	unichars -gs '\p{Lower}'
	unichars -gs '\p{lowercase}' '\P{Ll}'
	unichars -gs '\p{Lower}' '\P{CWCM}'
	unichars -gs '/\p{Lower}/ && /\P{CWT}/' | ucsort | less
	unichars -gs '/\p{Lower}/ && /\P{CWT}/' | ucsort | less -r
	unichars -gs '\p{Lower}' '\p{CWU}' | wc -l
	unichars -gs '\p{Lower}' '\P{Ll}' | ucsort | less -r
	unichars -gs '\PL' '\p{Lower}' '\p{CWCF}'
	unichars -gs '\PL' '\p{Lower}' '\p{CWCM}'
	unichars -gs '\PL' '\p{Lower}' '\P{CWCM}'
	unichars -gs '\PL' '\p{Lower}' '\p{CWU}'
	unichars -gs '\pL' '\p{Lower}' '\p{CWU}' | wc -l
	unichars -gs '\PL' '\p{Lower}' '\p{CWU}' | wc -l
	unichars -gs '\pL' '\p{Lower}' '\P{Ll}'
	unichars -gs '\pL' '\p{Lower}' '\P{Ll}' '\p{CWU}' | wc -l
	unichars -gs '\pL' '\p{Lower}' '\P{Ll}' | ucsort --upper-before-lower
	unichars -gs '\pL' '\p{Lower}' '\P{Ll}' | ucsort --upper-before-lower | less -r
	unichars -gs '\pS' 'NFKD !~ /\pS/'
	unichars -gs '[\pS\pP]' 'NFKD !~ /[\pS\pP]/'
	unichars -gs '\p{Symbol}'
	unichars -gs '\p{uppercase}' '\P{Lu}' | wc -l
	unichars -gs '/\p{Upper}/ && /\P{CWL}/'
	unichars -gs '/\p{Upper}/ && /\P{CWL}/' | ucsort | less
	unichars -gs '/\p{Upper}/ && /\P{CWT}/' | ucsort | less
	unichars -gsS '\p{Cased}' '[^\p{CWU}\p{CWT}\p{CWL}]'
	unichars -gs 'UCA1 eq UCA1(";")'
	unichars -gs 'UCA eq UCA("&")'
	unichars -gs 'UCA eq UCA("d")'
	unichars -gua '\P{ASCII}' '[\p{Common}\p{Inherited}]' '[^\p{Ll}\p{Lu}\pM\pC\pZ]' | wc -l
	unichars -gua '\P{ASCII}' '[\p{Common}\p{Inherited}]' '[^\pM\pC\pZ]' 'NFD !~ /\p{ASCII}/' | wc -l
	unichars --help
	unichars '/ij/i'
	unichars 'length(lc) > 1
	unichars 'length(lc) > 1'
	unichars 'length(lcfirst) != length'
	unichars 'length(lcfirst) != length(uc)'
	unichars 'length(lc) < length(uc)'
	unichars 'length(NFD) == 1 && length(NFC) != 1 && NAME =~ /LATIN\b.*\bLETTER\b.*\bWITH/' | less -r
	unichars 'length(NFD) == 1 && length(NFKD) != 1 && NAME =~ /LATIN\b.*\bLETTER\b.*\bWITH/' | less -r
	unichars 'length(NFD) == 1 && length(NFKD) != 1 && NAME =~ /LATIN\b.*\bLETTER\b.*\bWITH/' | ucsort
	unichars 'length(NFD) == 1 && length(NFKD) != 1 && NAME =~ /LATIN\b.*\bLETTER\b.*\bWITH/' | wc -l
	unichars 'length(NFD) == 1 && NAME =~ /LATIN\b.*\bLETTER\b.*\bWITH/' > /tmp/ndc &
	unichars 'length(uc) > 1'
	unichars 'length(ucfirst) > 1'
	unichars --locale=de__phonebook 'NFD =~ /a/i/'
	unichars --locale=de__phonebook 'NFD() =~ /a/i'
	unichars --locale=de__phonebook 'NFD() =~ /a/i' | less -r
	unichars --locale=de__phonebook 'UCA eq UCA("ae")' 'NFKD !~ /d/i' | ucsort
	unichars --locale=de__phonebook 'UCA eq UCA("ae")' 'NFKD !~ /d/i' | ucsort --locale=de__phonebook
	unichars --locale=de__phonebook 'UCA(NFKD) =~ UCA("a WITH DIAERESIS")'
	unichars --locale=de__phonebook 'UCA() =~ UCA("a")'
	unichars --locale=de__phonebook 'UCA() =~ UCA("a")' | less -r
	unichars --locale=de__phonebook 'UCA =~ UCA("a WITH DIAERESIS")'
	unichars --locale=en 'UCA eq UCA("ae")'
	unichars --locale=en "UCA eq UCA("ae")'
	unichars 'NAME =~ /BALL/'
	unichars 'NAME =~ /\bWITH\b/' 'length(NFKD) == 1'
	unichars 'NAME =~ /LATIN\b.*\bLETTER\b.*\b[ABCD]\b.*\bWITH\b/'
	unichars 'NAME =~ /LATIN\b.*\bLETTER\b.*\b[ABCD]\b.*\bWITH\b/' | wc -l
	unichars 'NAME =~ /LATIN\b.*\bLETTER\b.*\bWITH\b.*\b[ABCD]\b/'
	unichars 'NAME =~ /LATIN\b.*\bLETTER\b.*\bWITH\b.*\b[ABCD]\b/' | less -r
	unichars 'NAME =~ /PRIME/'
	unichars -nc 'NUM && (10*NUM) !~ /0/'
	unichars -nc 'UCA eq UCA("d")'
	unichars 'NFD =~ /ij/i'
	unichars 'NFD ne NFKD'
	unichars 'NFD !~ /\pM/ && NAME =~ /LATIN\b.*\bLETTER\b.*\bWITH/'
	unichars 'NFD !~ /\pM/ && NAME =~ /LATIN\b.*\bLETTER\b.*\bWITH/' | less
	unichars 'NFD !~ /\pM/ && NAME =~ /LATIN\b.*\bLETTER\b.*\bWITH/' > /tmp/ndc &
	unichars 'NFD !~ /\pM/ && NAME =~ /LATIN\b.*\bLETTER\b.*\bWITH/' | wc -l
	unichars 'NFD !~ /\pM/ && NAME =~ /LATIN.*LETTER WITH/'
	unichars 'NFD =~ /^\PM\pM*$/ && NFD !~ /^\p{Grapheme_Base}\p{Grapheme_Extend}*$/'
	unichars 'NFKD =~ /\[/'
	unichars 'NFKD eq ","'
	unichars 'NFKD eq ":"'
	unichars 'NFKD eq ".."'
	unichars 'NFKD eq "*"'
	unichars 'NFKD eq 'comma'
	unichars 'NFKD eq "\N{PRIME}"'
	unichars 'NFKD =~ /ij/i'
	unichars 'NFKD \!~ /s/i and UCA =~ UCA "s"'
	unichars 'NFKD \!~ /s/i || UCA =~ UCA "s"'
	unichars 'NFKD =~ /s/i || UCA =~ UCA "s"'
	unichars -ngas 'NUM && not NUM ~~ [ 0..10 ]'
	unichars -ngas 'NUM && not NUM ~~ [ 1..10 ]'
	unichars --nopager -gaBsn 'NUM && int(NUM) != NUM'
	unichars --nopager -gaBsn 'NUM && NUM == 100'
	unichars --nopager -gasn 'NUM && NUM == 100'
	unichars --nopager -gsn 'NUM && int(NUM) != NUM'
	unichars --nopager -gsn 'NUM && NUM < 0'
	unichars --nopager --locale=de__phonebook 'UCA eq UCA("ae")'
	unichars --nopager --locale=en 'UCA eq UCA("ae")'
	unichars --nopager --locale=is 'UCA eq UCA("ae")'
	unichars --nopager 'UCA eq UCA("ae")'
	unichars --nopager 'UCA eq UCA("ae")' | ucsort
	unichars --nopager 'UCA eq UCA("ae")' | ucsort --upper
	unichars 'not /\d/' 'NFKD =~ /\d/'
	unichars 'not /\w/'
	unichars 'not /\w/' 'not /\W/'
	unichars -nsag '\p{Cased}' 'NUM'
	unichars -nsag '\p{Lower}' '\P{CWU}'
	unichars -ns 'UCA eq UCA("d")'
	unichars NUM
	unichars 'ord ~~ [ 0x2622, 0x26bd]'
	unichars 'ord ~~ [ 0x2622, 0x2bbd]'
	unichars 'ord ==   0x2622 || ord == 0x26bd'
	unichars 'ord>0xffff' '\p{Po}'
	unichars 'ord < 255' '\p{pattern_syntax}'
	unichars 'ord() < 255' '\p{pattern_syntax}'
	unichars 'ord() < 255' '\p{pattern_syntax}' | less
	unichars 'ord() < 255' '\p{pattern_syntax}' | wc -l
	unichars '\p{Age:6.0}'
	unichars '\p{Age:6.0}' '\p{Numeric_Value=NaN}'
	unichars '\p{Age:6.0}' '\P{Numeric_Value=NaN}'
	unichars '\p{alnum}' '\P{word}'
	unichars '\P{alnum}' '\p{word}'
	unichars '\p{alnum}' '\W'
	unichars '\p{Alnum}' '\W'
	unichars '\P{Alnum}' '\w'
	unichars '\P{Alnum}' '\w' | less
	unichars '\p{alnum}' '\W' | wc -l
	unichars '\P{alnum}' '\w' | wc -l
	unichars '\P{alnum}' '\W' | wc -l
	unichars '\P{Alnum}' '\w' | wc -l
	unichars '\p{Alphabetic}' '\P{XPosixAlpha}' | less
	unichars '\P{Alphabetic}' '\p{XPosixAlpha}' | less
	unichars '\p{alpha}' '\p{CI}' | less -r
	unichars '\p{alpha}' '\p{CI}' '[\p{CWU}\p{CWL}\p{CWT}]' | less -r
	unichars '\p{alpha}' '\P{XPosixAlpha}' | less
	unichars '\P{alpha}' '\p{XPosixAlpha}' | less
	unichars '\P{alpha}' '\P{XPosixAlpha}' | less
	unichars '\P{ASCII}' '(lc() . uc) =~ /\p{ASCII}/'
	unichars '\P{ASCII}' 'lc.uc =~ /\p{ASCII}/
	unichars '\P{ASCII}' 'lc.uc =~ /\p{ASCII}/'
	unichars '\P{ASCII}' 'ord() < 255' '\p{pattern_syntax}' | wc -l
	unichars '\P{ASCII}' 'ord() < 255' '\W' | wc -l
	unichars '\P{ASCII}' '\p{Common}' '\pP'
	unichars '\p{BC=ON}'
	unichars '\P{Bidi_Class=NSM}' '\p{Mn}'
	unichars '\p{BidiM}' '\pS'
	unichars '\p{Block=CombiningDiacriticalMarks}'
	unichars '\p{Block=CombiningDiacriticalMarks}' '\PM'
	unichars '\p{Block=CombiningDiacriticalMarks}' '\p{Mn}'
	unichars '\p{Block=CombiningDiacriticalMarks}' '\P{Mn}'
	unichars '\P{Block=CombiningDiacriticalMarks}' '\p{Mn}'
	unichars '\P{Block=CombiningDiacriticalMarks}' '\p{Mn}' | wc -l
	unichars '\p{Cased}' '\P{Changes_When_Casefolded}'
	unichars '\p{Cased}' '\p{Changes_When_Casemapped}'
	unichars '\p{Cased}' '\P{Changes_When_Casemapped}'
	unichars '\P{Cased}' '\p{Changes_When_Casemapped}'
	unichars '\p{Cased}' '\p{Changes_When_Casemapped}' | less
	unichars '\p{Cased}' '\P{Changes_When_Casemapped}' | less
	unichars '\p{Cased}' '\p{Changes_When_Casemapped}' | less -r
	unichars '\p{Cased}' '\P{Changes_When_Casemapped}' | less -r
	unichars '\P{Cased}' '\p{Changes_When_Casemapped}' | less -r
	unichars '\p{Cased}' '\p{CI}'
	unichars '\p{Cased}' '\p{CI}' | less
	unichars '\p{Cased}' '\p{CI}' | less -r
	unichars '\p{cased}' '[^\p{CWU}\p{CWL}\p{CWT}]' | less -r
	unichars '\p{cased}' '[\^p{CWU}\p{CWL}\p{CWT}]' | less -r
	unichars '\p{cased}' '[\p{CWU}\p{CWL}\p{CWT}]' | less -r
	unichars '\p{cased}' '\PL'
	unichars '\p{Cased}' '\PL'
	unichars '\p{cased}' '\PL' | less
	unichars '\p{Cased}' '[^\p{Ll}\p{Lt}\p{Lu}]'
	unichars '\p{Cased}' '[^\p{Ll}\p{Lt}\p{Lu}]' | wc -l
	unichars '\p{Cased}' '\p{Lm}' | wc -l
	unichars '\p{Cased}' '\PL' | wc -l
	unichars '\p{Cased}' '\pM'
	unichars '\p{cased}' '[^\p{upper}\p{lower}]' | less
	unichars '\p{cased}' '[^\p{upper}\p{lower}\p{title}]' | less
	unichars '\p{cased}' '[^\p{upper}\p{lower}\p{title}]' | less -r
	unichars '\p{CC=A}'
	unichars '\p{CCC=A}'
	unichars '\p{Changes_When_Casefolded}' '\p{Changes_When_Casemapped}'
	unichars '\P{Changes_When_Casefolded}' '\p{Changes_When_Casemapped}'
	unichars '\P{Changes_When_Casefolded}' '\p{Changes_When_Casemapped}' | less
	unichars '\p{Changes_When_Casefolded}' '\P{Changes_When_Casemapped}' | less -r
	unichars '\P{Changes_When_Casefolded}' '\p{Changes_When_Casemapped}' | less -r
	unichars '\p{CI}' | less -r
	unichars '\p{CI}' '[\p{CWU}\p{CWL}\p{CWT}]' | less -r
	unichars '\p{Common}' '\pP'
	unichars '\p{Control}'
	unichars '\p{Control_Pictures}'
	unichars '\p{CWL}' 'NAME =~ /LATIN LETTER SMALL CAPITAL/'
	unichars '\p{CWTC}' '\PL'
	unichars '\p{CWT}' '\PL'
	unichars '\p{CWU}' 'NAME =~ /LATIN LETTER SMALL CAPITAL/'
	unichars '\p{Dash}'
	unichars '\p{di}'
	unichars '\p{E
	unichars '\p{EA=W}'
	unichars '\p{Greek}' '\pP'
	unichars '\p{Greek}' '\pS'
	unichars '\p{InGreek}' '\P{IsGreek}' | wc -l
	unichars '\P{InGreek}' '\p{IsGreek}' | wc -l
	unichars '\p{InHalfwidthAndFullwidthForms}' '\p{bidim}'
	unichars '\p{InHiragana}' '\P{Hiragana}'
	unichars '\p{InHiragana}' '\P{Kana}'
	unichars '\p{InHirakana}' '\P{Kana}'
	unichars '\p{InKatakana}' '\P{Kana}'
	unichars '\P{InKatakana}' '\p{Kana}'
	unichars '\P{InKatakana}' '\p{Kana}' | less
	unichars '\p{InLatin}' '\P{IsLatin}' | wc -l
	unichars '\p{InMiscellaneousSymbolsAnd_Pictographs}'
	unichars '\p{InThai}' '\P{IsThai}'
	unichars '\p{IsThai}' '\P{InThai}'
	unichars '\p{Latin}
	unichars '/\p{Latin}/ && length(NFD) == 1 && NAME =~ /LATIN\b.*\bLETTER\b.*\b[A-D]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' | less -r
	unichars '/\p{Latin}/ && length(NFD) == 1 && NAME =~ /LATIN\b.*\bLETTER\b.*\b[A-D]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' --level=1 | less -r
	unichars '/\p{Latin}/ && length(NFD) == 1 && NAME =~ /LATIN\b.*\bLETTER\b.*\b[A-E]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' | less -r
	unichars '/\p{Latin}/ && length(NFD) == 1 && NAME =~ /LATIN\b.*\bLETTER\b.*\b[A-E]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' --level=1 > /tmp/u1
	unichars '/\p{Latin}/ && length(NFD) == 1 && NAME =~ /LATIN\b.*\bLETTER\b.*\b[A-E]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' --level=4 > /tmp/u4
	unichars '/\p{Latin}/ && length(NFD) == 1 && NAME =~ /LATIN\b.*\bLETTER\b.*\b[C-E]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' | less -r
	unichars '\p{Latin}' 'NAME =~ /\b[\h\pL]{2,3}$/' '$$CF{full} =~ / /'
	unichars '\p{Latin}' 'NAME =~ /\b[\h\pL]{2,3}$/' 'CF =~ /./' '$$CF{full} =~ / /'
	unichars '\p{Latin}' 'NAME =~ /\b[\h\pL]{2,3}$/' 'CF =~ /F/'
	unichars '\p{Latin}' 'NAME =~ /\b[\h\pL]{2,3}$/' 'CF =~ /F/' '$$CF{full} =~ / /'
	unichars '\p{Latin}' 'NAME =~ /\b[\h\pL]{2,3}$/' 'CF =~ /[SF]/' '$$CF{full} =~ / /'
	unichars '\p{Latin}' 'NAME =~ /\b[\h\pL]{2,4}$/' 'CF =~ /F/' '$$CF{full} =~ / /'
	unichars '\p{Latin}' 'NAME =~ /\b\pL{2,3}$/' 'CF =~ /F/' '$$CF{full} =~ / /'
	unichars '\p{Latin}' 'NAME =~ /\bWITH\b/' 'length(NFKD) == 1'
	unichars '\p{Latin}''NAME =~ /\bWITH\b/' 'length(NFKD) == 1'
	unichars '\p{Latin}' 'NAME =~ /\bWITH\b/' 'length(NFKD) == 1' | ucsort | less
	unichars '\p{Latin}' 'NAME =~ /\bWITH\b/' 'length(NFKD) == 1' | ucsort > /tmp/d
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*[ABCD].*\bWITH\b/' | less
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*[ABCD].*\bWITH\b/' | ucsort | less
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*[ABCD].*\bWITH\b/' | ucsort | less -r
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*[ABCD].*\bWITH\b/' | wc -l
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b.?[ABCD].?\b.*\bWITH\b/' | ucsort | less -r
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b.?[ABCD].?\b.*\bWITH\b/' | ucsort --level=1 | less -r
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b[ABCD]\b.*\bWITH\b/' | wc -l
	unichars '\p{Latin} && NAME =~ /LATIN\b.*\bLETTER\b.*\b[ABCD]\b.*\bWITH\b/' | wc -l
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b.?[ABCD].?\b/' | ucsort | less -r
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b.?[ABCD].?\b/' | ucsort --level=1 | less -r
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b.?[ABCD].?\b/' | ucsort --level=1 > /tmp/u1
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b.?[ABCD].?\b/' | ucsort --level=2 > /tmp/u2
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b.?[ABCD].?\b/' | ucsort --level=3 > /tmp/u3
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b.?[ABCD].?\b/' | ucsort --level=4 > /tmp/u4
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b([A-D]|.[A-D]|.[A-D])\b/' | ucsort --level=1 | less -r
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b([A-D]|.[A-D]|.[A-D])\b/' | ucsort --level=4 > /tmp/u4
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b([A-D]|.[A-D]|.[A-D])\b/' | ucsort --preprocess 's/..\K\h+\S+//' --level=1 | less -r
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b([A-D]|.[A-D]|.[A-D])\b/' | ucsort --preprocess 's/..\K.*//' --level=1 | less -r
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b([A-D]|.[A-D]|.[A-D])\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' --level=1 | less -r
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b[A-D]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' --level=1 | less -r
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b[A-E]\p{Lu}?\b/' | ucsort --upper-before-lower --preprocess 's/..\K.*//' --level=4 > /tmp/uu
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*\b[CD]\b.*\bWITH\b/' | wc -l
	unichars '/\p{Latin}/ && NAME =~ /LATIN\b.*\bLETTER\b.*[CD].*\bWITH\b/' | wc -l
	unichars '\p{Latin}' '\w'
	unichars '\p{Latin}' '\w' | wc -l
	unichars '\pL' 'length(NFD) == 1 && length(NFKD) == 1' 'NAME =~ /WITH/'
	unichars '\pL' 'length(NFD) == 1 && length(NFKD) == 1' 'NAME =~ /WITH/' | wc -l
	unichars '\pL' 'length(NFD) == 1' 'NAME =~ /WITH/'
	unichars '\p{Lm}' '\p{Cased}'
	unichars '\p{Lm}' '\p{Changes_When_Casemapped}'
	unichars '\p{Lm}' '\p{upper}'
	unichars '\pL' 'NAME =~ /\bSCRIPT/'
	unichars '\PL' 'NAME =~ /\bSCRIPT/'
	unichars '\pL' 'NAME =~ /SCRIPT/'
	unichars '\pL' 'NAME =~ /WITH/' | wc -l
	unichars '\p{Lower}' 'length(uc) > 1'
	unichars '\p{Lower}' 'NAME =~ /CAPITAL/'
	unichars '\p{Lower}' 'NAME =~ /CAPITAL/' | less
	unichars '\p{Lower}' 'NAME =~ /CAPITAL/' '\p{Age:6}'
	unichars '\p{Lower}' 'NAME =~ /CAPITAL/' '\p{Age:6.0}'
	unichars '\p{Lower}' 'NAME =~ /CAPITAL/' '\p{Age=6.0}'
	unichars '\p{Lower}' 'NAME =~ /CAPITAL/' '\p{Age:6.0.0}'
	unichars '\p{Lower}' 'NAME =~ /CAPITAL/' > /tmp/s
	unichars '\p{Lower}' 'NAME =~ /CAPITAL/' | wc -=l
	unichars '\p{Lower}' 'NAME =~ /CAPITAL/' | wc -l
	unichars '\p{Lower}' 'NAME !~ /SMALL CAPITAL|CAPITAL LETTER/' | wc -l
	unichars '\p{Lower}' 'NAME =~ /SMALL CAPITAL|CAPITAL LETTER/' | wc -l
	unichars '\p{lower}' '\P{CWL}' | less -r
	unichars '\p{Lower}' '\P{CWU}'
	unichars '\p{lower}' '\P{CWU}' | less -r
	unichars '\p{Lower}' '\P{CWU}' | wc -l
	unichars '[\p{Lower}\p{Upper}' '[^\p{CWU}\p{CWL}]' | less -r
	unichars '[\p{Lower}\p{Upper}]' '[^\p{CWU}\p{CWL}]' | less -r
	unichars '\pL' '\p{Alphabetic}' | wc -l
	unichars '\PL' '\p{Alphabetic}' | wc -l
	unichars '\pL' '\p{Latin}' 'length(NFD) == 1 && length(NFKD) == 1' 'NAME =~ /WITH/'
	unichars '\pL' '\p{Latin}' 'length(NFD) == 1 && length(NFKD) == 1' 'NAME =~ /WITH/' | wc -l
	unichars '\pL' '\p{Latin}' 'NAME =~ /WITH/' | wc -l
	unichars '\pL' '\P{Lm}' '\p{Latin}' 'length(NFD) == 1 && length(NFKD) == 1' 'NAME =~ /WITH/'
	unichars '\pL' '\P{Lm}' '\p{Latin}' 'length(NFD) == 1 && length(NFKD) == 1' 'NAME =~ /WITH/' | field %1
	unichars '\pL' '\P{Lm}' '\p{Latin}' 'length(NFD) == 1 && length(NFKD) == 1' 'NAME =~ /WITH/' | field %2
	unichars '\pL' '\P{Lm}' '\p{Latin}' 'length(NFD) == 1 && length(NFKD) == 1' 'NAME =~ /WITH/' | field %2 > /tmp/a
	unichars '\pL' '\P{Lm}' '\p{Latin}' 'length(NFD) == 1 && length(NFKD) == 1' 'NAME =~ /WITH/' | wc -l
	unichars '\pL' '\P{Lm}' '\p{Latin}' 'NAME =~ /WITH/' | wc -l
	unichars '\PL' 'uc =~ /\p{Lower}/'
	unichars '\PL' 'uc =~ /\p{Upper}/'
	unichars '\p{Math}'
	unichars '\p{Mc}'
	unichars '\p{Me}'
	unichars '[\p{Miscellaneous_Symbols}\p{Miscellaneous_Symbols_and_Pictographs}]'
	unichars '\pM' '\P{Grapheme_Extend}'
	unichars '\PM' '\p{Grapheme_Extend}'
	unichars '\PM' '\P{Grapheme_Extend}'
	unichars '\p{Nchar}'
	unichars '\p{Nl}'
	unichars '\p{No}' '\w'
	unichars '\p{No}' '\W'
	unichars '\p{No}' '\W' | head
	unichars '\p{No}' '\W' | less
	unichars '\pN' '\P{Nd}' | less
	unichars '\p{Numeric_Value=NaN}'
	unichars '/\P{NV=NaN}/ && ! (NUM() ~~ [0..10])' | less -r
	unichars '/\P{NV=NaN/ && ! (NUM() ~~ [0..10])' | less -r
	unichars '/\P{NV=NAN/ && ! (NUM() ~~ [0..10])' | less -r
	unichars '\pN' '\W'
	unichars '\pN' '\W' | wc -l
	unichars '\p{Other_Alphabetic}'
	unichars '\p{Other_Alphabetic}' | less
	unichars '\p{Other_Alphabetic}' '\PM' | less
	unichars '\p{Other_Lowercase}'
	unichars '\p{Other_Lowercase}' | less
	unichars '\pP'
	unichars '\p{Pc}'
	unichars '\P{Pd}' '\p{Dash}'
	unichars '\p{Pe}'
	unichars '\p{Pf}'
	unichars '[\p{Pf}\p{Pi}]'
	unichars '[\p{Pf}\p{Pi}]' '\p{BidiM}'
	unichars '[\p{Pf}\p{Pi}]' '\P{BidiM}'
	unichars '[\p{Pi}]'
	unichars '\p{Pi}' '\p{bidim}'
	unichars '[\p{Pi}]' '\P{BidiM}'
	unichars '[\p{Pi}\p{Ps}]' 'NAME =~ /VERTICAL/'
	unichars '\p{Po}'
	unichars '\p{Po}' '\p{bidim}'
	unichars '[\p{Po}\p{Pe}]' '\P{BidiM}'
	unichars '\pP' '\P{QMark}' 'NAME =~ /QUOT/'
	unichars '\p{Ps}' 'NAME =~ /VERTICAL/'
	unichars '\p{Ps}' '\p{bidim}'
	unichars '\p{Ps}' '\P{bidim}'
	unichars '\p{Ps}' '\P{bidim}' | less
	unichars '\p{Ps}' '\p{bidim}' | wc -l
	unichars '\p{Ps}' '\P{bidim}' | wc -l
	unichars '[\p{Ps}\p{Pe}]' '\P{BidiM}'
	unichars '\p{Qmark}'
	unichars '\p{QMark}'
	unichars '\pS'
	unichars '\p{Sk}'
	unichars '\pS' 'NAME =~ /BALL/'
	unichars '\p{Surrogate}'
	unichars '\p{Title}' 'lc !~ /\p{Lower}/'
	unichars '\p{Title}' '[^\p{CWL}\p{CWU}]'
	unichars '\p{Title}' '[^\p{CWL}\p{CWU}]' | wc -l
	unichars '\p{Title}' '\P{Lt}'
	unichars '\p{Title}' '\P{Lt|}
	unichars '\p{Title}' 'uc !~ /\p{Upper}/'
	unichars '\p{Upper}' 'NAME !~ /CAPITAL/'
	unichars '\p{UPPER}' 'NAME =~ /SMALL/'
	unichars '\p{Upper}' '\P{CWL}'
	unichars '\p{Upper}' '\P{CWL}' | wc -l
	unichars '\p{WhiteSpace}' '\PZ'
	unichars '\p{XPosixAlnum}' | less
	unichars '\p{XPosixAlnum}' '\P{XPosixAlpha}' | less
	unichars '\R'
	unichars '\R' | field %2
	unichars -sag Comp_Ex
	unichars -sag '\p{Lower}' '\P{CWU}'
	unichars -sag '\PL' '\p{Lower}' '\p{CWU}'
	unichars -sag '\PL' '\p{Lower}' '\P{CWU}'
	unichars -sag '\PL' '\p{Upper}' '\p{CWL}'
	unichars -sag '\PL' '\p{Upper}' '\P{CWL}'
	unichars -sag '\p{Upper}' '\P{CWL}'
	unichars -sag Singleton
	unichars /s/i
	unichars -ua '\p{Assigned}'
	unichars -ua '\p{Assigned}' | wc -l
	unichars 'UCA1 eq UCA1("a")'
	unichars 'UCA1 eq UCA1("a")' | cat -n
	unichars 'UCA1 eq UCA1("ae")'
	unichars 'UCA1 eq UCA1("d")'
	unichars 'UCA1 eq UCA1("d")' | cat -n
	unichars 'UCA1 eq UCA1("ij")'
	unichars 'UCA1 =~ UCA1("d")'
	unichars 'UCA2 eq UCA2("ij")'
	unichars 'UCA3 eq UCA3("ij")'
	unichars 'UCA eq UCA "%"'
	unichars 'UCA eq UCA("a")'
	unichars 'UCA eq UCA("ae")'
	unichars 'UCA eq UCA("d")'
	unichars 'UCA eq UCA("d")'df
	unichars 'UCA eq UCA "\N{PRIME}"'
	unichars 'UCA eq UCA("p")'
	unichars 'UCA eq UCA("p")' | wc -l
	unichars 'UCA eq UCA("s")' | wc -l
	unichars 'UCA(NFKD) =~ UCA("a")'
	unichars 'UCA(NFKD) =~ UCA("ae")'
	unichars 'UCA(NFKD) =~ UCA("a")' 'NFKD !~ /a/i'
	unichars 'UCA(NFKD) =~ UCA("d")'
	unichars 'UCA(NFKD) =~ UCA("d")' 'UCA ne UCA("d")'
	unichars 'UCA(NFKD) =~ UCA("i")' 'NFKD !~ /i/i'
	unichars 'UCA(NFKD) =~ UCA("m")'
	unichars 'UCA(NFKD) =~ UCA("o")'
	unichars 'UCA(NFKD) =~ UCA("oe")'
	unichars 'UCA(NFKD) =~ UCA("o")' 'NFKD !~ /o/i'
	unichars 'UCA(NFKD) =~ (UCA("o")."|".UCA("a"))'
	unichars '(UCA(NFKD) =~ (UCA("o")."|".UCA("a"))) || NFKD =~ /[ao]/i' | ucsort | less -r
	unichars 'UCA(NFKD) =~ (UCA("o")."|".UCA("a"))' 'NFKD !~ /o/i'
	unichars 'UCA(NFKD) =~ UCA("o")."|".UCA("a")' 'NFKD !~ /o/i'
	unichars 'UCA(NFKD) =~ (UCA("o")."|".UCA("a"))' | ucsort | less
	unichars 'UCA(NFKD) =~ (UCA("o")."|".UCA("a"))' | ucsort | less -r
	unichars 'UCA(NFKD) =~ UCA("s")'
	unichars 'UCA(NFKD) =~ UCA("z")'
	unichars 'UCA(NFKD) =~ UCA("z")' 'NFKD !~ /z/i'
	unichars 'UCA(NFKD) =~ UCA("z")' 'UCA ne UCA("z")'
	unichars 'UCA =~ UCA("d")' 'UCA ne UCA("d")'
	unichars 'UCA =~ UCA("i") && UCA =~ UCA("j")'
	unichars 'UCA =~ UCA("p")'
	unichars 'UCA =~ UCA("p")' | wc -l
	unichars 'UCA =~ UCA("s")' 'UCA ne UCA("s")'
	unichars 'UCA =~ UCA("s")' 'UCA ne UCA("s")' | wc -l
	unichars 'UCA =~ UCA("s")' | wc -l
	unichars 'uc ne ucfirst'
	unichars -v
	unichars '\w' '[^_\p{Alphabetic}\p{Nd}]'
	unichars '\w' '[^_\p{Alphabetic}\p{Nd}]' | wc -l
	unichars '\w' '[^\pL\pN\pM]'
	unichars '\w' '[^\pL\pN\pM\p{Pc}]'
	unichars '\w' '[^\pL\pN\pM\p{Pc}]' | less
	unichars '\w' '[^\pL\p\pM]'
	unichars '\w' '\P{word}'
	unichars '\W' '\p{word}'
	unichars '/\w/ == /\W/'
	unichars '\w' '\W'

=head1 AUTHOR

Tom Christiansen C<< <tchrist@perl.org> >> wrote all the code.

brian d foy C<< <brian.d.foy@gmail.com> >> wrapped the distribution around
it.

=head1 COPYRIGHT

Copyright 2011, Tom Christiansen.

=head1 LICENSE

You can use this distribution under the same terms as Perl itself.

=cut

1;
