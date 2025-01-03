use v5.14;

package Unicode::Tussle;
use vars qw( $VERSION );

$VERSION = '1.119';

=encoding utf8

=head1 NAME

Unicode::Tussle - Tom's Unicode Scripts So Life is Easier

=head1 SYNOPSIS

This is a collection of separate programs from Tom Christiansen. See
the documentation for each program.

=head1 DESCRIPTION

These programs are installed wherever you told the build system to
install programs. These are part of Tom's I<Perl Unicode Essentials>
talk from OSCON 2011. You might have to adjust your fonts to see some
of the characters in these examples. George Douros’s Symbola font,
which handles Unicode 6.0, is a good one:
http://users.teilar.gr/~g1951d/

=head1 OSCON scripts

=head2 OSCON scripts description #1/2

    HOLY TRIO OF INDISPENSABLE TOOLS FOR UNDERSTANDING THE UCD & UNICODE IN GENERAL
        unichars - show which code points match arbitrary criteria
        uniprops - show which props a code point has (by number or name, etc)
        uninames - intelligrep the now-excised NameList.txt (included)

    REWRITES OF CRITICAL UNIX PROGRAMS:
        uniquote - replacement for od(1) or -v option to cat(1), but for Unicode
        tcgrep - very ancient grep(1) replacment, needs rewrite but now supports named character
        unilook - look(1) rewrite but with grep and agrep support; requires included words.utf8 file
        ucsort - sort(1) rewrite using the UCA, includes Unicode locales, and intelligent --pre stuff
        unifmt - fmt(1) rewrite, using the ULA; both smarter and dumber than Damian's
        rename - ancient rewrite of Larry's old rename(1) rewrite; might help Unicode filesyssues
        uniwc - wc(1) rewrite for Unicode, includes \R support, graphemes, etc; needs refactoring

    PROGRAMS FOR NORMALIZATION FILTERS, CHECKER
        nfd, nfc, nfkd, nfkc - Unicode normalization filters
        nfcheck - report which which of NF{,K}[DC} apply to any given file
          % nfcheck leo hantest nunez tc macroman
            leo:        NFC      NFD
            hantest:    NFC
            nunez:      NFC NFKC
            tc:         NFC NFKC NFD NFKD

    (RE)CASING FILTER PROGRAMS:
        lc - filter to do the Unicode toLower casemapping
            % echo "Filter to Convert a Title's Words to the Right Case" | lc
              filter to convert a title's words to the right case
        tc - filter to do the Unicode toTitle casemapping (intelligently)
            % echo "filter to convert a title's words to the right case" | tc
              Filter To Convert A Title's Words To The Right Case
        titulate - \u\L-converts string args to English **HEADLINE** case (NB: headline != titlecase)
            % titulate "filter to CONVERT a title's words to the right case"
              Filter to Convert a Title's Words to the Right Case
        uc - filter to do the Unicode toUpper casemapping
            % echo "filter to convert a title's words to the right case" | uc
              FILTER TO CONVERT A TITLE'S WORDS TO THE RIGHT CASE

    FONT GAME PROGRAMS:
        leo - uʍopəpᴉsdn sƃuᴉɥʇ əʇᴉɹʍ oʇ ɹəʇlᴉɟ
        unifont - filter for showing all Unicode "alternate font" letters
            % echo hic sunt data unicodica | unifont
                    Double-Struck: 𝕙𝕚𝕔 𝕤𝕦𝕟𝕥 𝕕𝕒𝕥𝕒 𝕦𝕟𝕚𝕔𝕠𝕕𝕚𝕔𝕒
                        Monospace: 𝚑𝚒𝚌 𝚜𝚞𝚗𝚝 𝚍𝚊𝚝𝚊 𝚞𝚗𝚒𝚌𝚘𝚍𝚒𝚌𝚊
                       Sans-Serif: 𝗁𝗂𝖼 𝗌𝗎𝗇𝗍 𝖽𝖺𝗍𝖺 𝗎𝗇𝗂𝖼𝗈𝖽𝗂𝖼𝖺
                Sans-Serif Italic: 𝘩𝘪𝘤 𝘴𝘶𝘯𝘵 𝘥𝘢𝘵𝘢 𝘶𝘯𝘪𝘤𝘰𝘥𝘪𝘤𝘢
                  Sans-Serif Bold: 𝗵𝗶𝗰 𝘀𝘂𝗻𝘁 𝗱𝗮𝘁𝗮 𝘂𝗻𝗶𝗰𝗼𝗱𝗶𝗰𝗮
           Sans-Serif Bold Italic: 𝙝𝙞𝙘 𝙨𝙪𝙣𝙩 𝙙𝙖𝙩𝙖 𝙪𝙣𝙞𝙘𝙤𝙙𝙞𝙘𝙖
                           Script: 𝒽𝒾𝒸 𝓈𝓊𝓃𝓉 𝒹𝒶𝓉𝒶 𝓊𝓃𝒾𝒸ℴ𝒹𝒾𝒸𝒶
                           Italic: h𝑖𝑐 𝑠𝑢𝑛𝑡 𝑑𝑎𝑡𝑎 𝑢𝑛𝑖𝑐𝑜𝑑𝑖𝑐𝑎
                             Bold: 𝐡𝐢𝐜 𝐬𝐮𝐧𝐭 𝐝𝐚𝐭𝐚 𝐮𝐧𝐢𝐜𝐨𝐝𝐢𝐜𝐚
                      Bold Italic: 𝒉𝒊𝒄 𝒔𝒖𝒏𝒕 𝒅𝒂𝒕𝒂 𝒖𝒏𝒊𝒄𝒐𝒅𝒊𝒄𝒂
                          Fraktur: 𝔥𝔦𝔠 𝔰𝔲𝔫𝔱 𝔡𝔞𝔱𝔞 𝔲𝔫𝔦𝔠𝔬𝔡𝔦𝔠𝔞
                     Bold Fraktur: 𝖍𝖎𝖈 𝖘𝖚𝖓𝖙 𝖉𝖆𝖙𝖆 𝖚𝖓𝖎𝖈𝖔𝖉𝖎𝖈𝖆
        unicaps - Fɪʟᴛᴇʀ ᴛᴏ ᴄᴏɴᴠᴇʀᴛ ᴛᴏ sᴍᴀʟʟ ᴄᴀᴘs
        unisubs, unisupers - filter to show subscripted₁₉₈₇ and ˢᵘᵖᵉʳˢᶜʳⁱᵖᵗᵉᵈ versions
        unititle - prototype to over/underline things (real version inprogress)
        uniwide, uninarrow - reversable filters for converting to FULLWIDTH equivs

    TEST AND DEMO PROGRAMS:
        macroman - show mapping between MacRoman and Unicode
        byte2uni - early prototype of general-purpose version of the macroman
            DEMO: byte2uni -a -ecp1252
        es-sort - how to do fancy UCA sorts, using Iberian city-names
        hantest - demo of Unihan stuff and Unicode::{LineBreak, GCString}
        havshpx - vs lbh unir gb nfx, lbh qb abg jnag gb xabj
        hypertest - demo support trans-Unicode code point support
        nunez - demo accent-insensitive searches; ¡MUY BIEN COMENTADO!
        vowel-sigs - show how to create your own properties; also, regex subroutines

    MODULES
        ForbidUnderscore.pm - "no Underscore;" forbids unlocalized $_ access
        FixString.pm - tries to sort text items with numbers, including Roman, intelligently,
                       includes support for Unicode Romans, and for Romans written in Latin
                       script, but requires Roman.pm module for the latter.  Falls back to the UCA.
        tchrist-unicode-charclasses__alpha.java - EGAD! I talked them into making most of
                       this functionality part of JDK7.

    LIBRARIES:
        unicore/{all,html,uwords}_alias.pl - a forgotten charnames facility

    FILES:
        words.utf8 - dictionary list needed for for unilook

=head2 OSCON scripts description #2/2

    Modules:
        FixString.pm            - program & module to do "logical" sorting w/numbers
        ForbidUnderscore.pm     - forbid unlocalized $_ with no Underscore

    Libraries:
        unicore/html_alias.pl   - allows for customer charclass names \N{egrave} etc
        unicore/uwords_alias.pl - ditto with specials for unilook, like \N{spu}
        unicore/all_alias.pl    - both the above

    Programs for probing the UCD:
        unichars                - list characters for one or more properties
        uniprops                - list regex properties of one or more characters
        uninames                - search the current Unicode NamesList

    Encoding Demos
        macroman                - how the MacRoman encoding maps to Unicode
        byte2uni                - generalized `macroman` program; try `byteuni -a -cp1252`

    Unix Tool Rewrites
        (not fmt  but) unifmt       - like `fmt` but uses the Unicode Linebreaking Algorithm (ULA)
        (not grep but) tcgrep       - like `grep`, but groks unicode patterns and data
        (not look but) unilook      - improved `look` + `grep` + `agrep` on included `words.utf8`
        (not mv   but) rename       - a better version of rename, takes a perl pattern
        (not od   but) uniquote     - like `cat -v` or `od`, but better
        (not sort but) ucsort       - `sort` input records according to the Unicode Collation Algorithm (UCA)
        (not wc   but) uniwc        - Unicode rewrite a `wc` (needs nonslurpy rewrite)

    Casing Filters
        lc                          - filter into Unicode lowercase
        uc                          - filter into Unicode uppercase
        tc                          - filter into Unicode titlecase+lowercase
        titulate                    - like tc but used English headline rulers

    Normalization Filters
        nfc                         - convert to NFD
        nfd                         - convert to NFD
        nfkc                        - convert to NFKC
        nfkd                        - convert to NFKD
        nfcheck                     - report which NF forms file(s) are in

    Font Games
        unifont                     - display equivalent Math/fonted versions
        leo                         - write like Leonardo
        unicaps                     - convert lowercase to Unicode small caps
        unisubs                     - show equivalent subscripts where available
        unisupers                   - show equivalent supercripts where available
        uniwide                     - convert regular text to full-width if possible
        uninarrow                   - convert full-wdith to regular width if possible
        unititle                    - prototype to use combining underlines
        unifrac                     - create a fraction with super and subscripts

    Demos and Test Programs
        es-sort                 - demo how to use a custom UCA on Spanish cities
        hantest                 - demo various Unihan bits, including the ULA
        havshpx                 - you have to figure this one out yourself
        hypertest                       - demo forbidden Unicode chars, like supers and hypers
        vowel-sigs                      - get the CVCVVC signatures for word
        nunez                   - demo how to use the UCA for accent-insensitive searching

=head1 Uses of Unicode in Perl identifiers in OSCON scripts

A few use Unicode not just in literals, but in identifiers, too:

    % tcgrep '^\h*(use|require)\h+(charnames|re|Unicode|Encode|DBM_Filter|feature|open|Lingua|utf8|v?5|encoding|bytes|locale)\b' *

    hypertest:  my @ὑπέρμεγας = (

    leo:        my    $ʇndʇno = uʍopəpᴉƨdn($input);
    leo:        say   $ʇndʇno;
    leo:        sub uʍopəpᴉƨdn($) {

    nunez:      my $INCLUÍR_NINGUNOS               = 0;
    nunez:      my $SI_IMPORTAN_MARCAS_DIACRÍTICAS = 0;
    nunez:      sub sí_ó_no(_) { $_[0] ? "sí" : "no" }
    nunez:      my @ciudades_españolas = ordenar_a_la_española(<<'LA_ÚLTIMA' =~ /\S.*\S/g);
    nunez:      my $cmáx = -(2 + max map { length } @ciudades_españolas);
    nunez:      my @búsquedas = < {A,E,I,O,U}N AL >;
    nunez:      my $bmáx = -(2 + max map { length } @búsquedas);
    nunez:      for my $aldea (@ciudades_españolas) {
    nunez:      my $déjà_imprimée;  # Mais oui!  C’est en français celle‐ci!
    nunez:      for my $búsqueda (@búsquedas) {
    nunez:      my @resultados = $ordenador->gmatch($aldea, $búsqueda);
    nunez:      next unless @resultados || $INCLUÍR_NINGUNOS;
    nunez:      $cmáx => !$déjà_imprimée++ && encomillar($aldea),
    nunez:      $bmáx => "/$búsqueda/",
    nunez:      sub cuántos_sitios {
    nunez:      sub ordenar_a_la_española {
    nunez:      state $ordenador_a_la_española = new Unicode::Collate::
    nunez:      return $ordenador_a_la_española->sort(@lista);

    ucsort:     ($OFS, $IFS)  if /\x{FFFF}/;  # déjà vu

    uniquote:   my $fh = $file;   # is *so* a lexical filehandle! ☺
    uniquote:   sub commaʼd_list {

    uniwc:      my $fh = $file;   # is *so* a lexical filehandle! ☺

=head1 Uses of Unicode modules in OSCON scripts

  % tcgrep '^\h*(use|require)\h+(charnames|re|Unicode|Encode|DBM_Filter|feature|open|Lingua|utf8|v5|encoding|bytes|locale)\b' *

    FixString.pm:  use v5.12;
    FixString.pm:  use utf8;
    FixString.pm:  use charnames qw< :full greek >;
    FixString.pm:  use Unicode::Collate;
    FixString.pm:  use open < :std :utf8 >;
    FixString.pm:  require Unicode::Normalize;

    byte2uni:      use v5.10;
    byte2uni:      use charnames qw[ :full ];
    byte2uni:      use Encode (
    byte2uni:      require Encode;

    es-sort:       use Unicode::Collate;

    hantest:       use 5.10.1;
    hantest:       use utf8;
    hantest:       use open        qw[ :utf8 :std  ];
    hantest:       use charnames   qw[ :full       ];
    hantest:       use Encode      qw[ decode      ];
    hantest:       use Unicode::UCD qw{
    hantest:       use Unicode::Normalize qw[ NFC NFD ];   # UAX#15
    hantest:       use Unicode::Unihan;                    # UAX#38
    hantest:       use Unicode::GCString;                  # UAX#29
    hantest:       use Unicode::LineBreak qw(:all);        # UAX#14-C2
    hantest:       use Lingua::KO::Hangul::Util    qw[ :all ];
    hantest:       use Lingua::JA::Romanize::Japanese;
    hantest:       use Lingua::ZH::Romanize::Pinyin;
    hantest:       use Lingua::KO::Romanize::Hangul;

    havshpx:       hfr puneanzrf ":shyy";
    havshpx:       hfr Havpbqr::Abeznyvmr;

    hypertest:     use 5.10.0;
    hypertest:     use utf8;

    lc:            use v5.12;
    lc:            use utf8;
    lc:            use feature qw< unicode_strings >;
    lc:            use open        qw< :std  :utf8   >;
    lc:            use Unicode::Normalize  qw< NFD NFC >;

    leo:           use 5.010_000;
    leo:           use utf8;
    leo:           use open     qw[ :std  :utf8 ];

    macroman:      use charnames qw[ :full ];
    macroman:      use Encode (

    nfc:           use 5.10.1;
    nfc:           use open     qw[ :std IO :utf8 ];
    nfc:           use Unicode::Normalize;

    nfcheck:       use open   qw< :std IN :utf8 >;
    nfcheck:       use Unicode::Normalize @NF_NAMES;

    nfd:           use 5.10.1;
    nfd:           use open     qw[ :std IO :utf8 ];
    nfd:           use Unicode::Normalize;

    nfkc:          use 5.10.1;
    nfkc:          use open     qw[ :std IO :utf8 ];
    nfkc:          use Unicode::Normalize;

    nfkd:          use 5.10.1;
    nfkd:          use open     qw[ :std IO :utf8 ];
    nfkd:          use Unicode::Normalize;

    nunez:         use 5.10.1;
    nunez:         use utf8;
    nunez:         use charnames qw< :full >;
    nunez:         use Unicode::Collate;

    tc:            use v5.12;
    tc:            use utf8;
    tc:            use feature qw< unicode_strings >;
    tc:            use open        qw< :std  :utf8   >;
    tc:            use charnames   qw< :full >;
    tc:            use Unicode::Normalize  qw< NFD NFC >;

    tcgrep:        use re "eval";
    tcgrep:        use charnames qw[ :full

    uc:            use v5.12;
    uc:            use utf8;
    uc:            use feature qw< unicode_strings >;
    uc:            use open        qw< :std  :utf8   >;
    uc:            use Unicode::Normalize  qw< NFD NFC >;

    ucsort:        use 5.10.1;
    ucsort:        use utf8;
    ucsort:        use open qw[ :std IO :utf8 ];
    ucsort:        use Unicode::Collate;
    ucsort:        require Unicode::Collate::Locale;

    unicaps:       use 5.10.1;
    unicaps:       use utf8;

    unichars:      use 5.10.1;
    unichars:      use charnames qw[ :full :short latin greek ];
    unichars:      use Encode          qw[ decode      ];
    unichars:      use Unicode::UCD qw(charinfo casefold);
    unichars:      require Unicode::Normalize;
    unichars:      require Unicode::Collate;
    unichars:      require Unicode::Collate::Locale;
    unichars:      require Unicode::UCD;

    unifmt:        use 5.10.1;
    unifmt:        use utf8;
    unifmt:        use open        qw[ :utf8 :std  ];
    unifmt:        use charnames   qw[ :full       ];
    unifmt:        use Unicode::GCString;                  # UAX#29
    unifmt:        use Unicode::LineBreak qw(:all);        # UAX#14-C2

    unifont:       use v5.12;
    unifont:       use utf8;
    unifont:       use open qw< :std :encoding(UTF-8) >;
    unifont:       use charnames qw< :full >;
    unifont:       use Unicode::Normalize;

    unilook:       use 5.010_000;
    unilook:       use charnames (
    unilook:       use Unicode::Normalize;
    unilook:       use Encode qw( encode decode );
    unilook:       require Unicode::Collate;

    uninames:      use 5.10.1;
    uninames:      use re "eval";
    uninames:      use Unicode::UCD;  # not exported: qw[ UnicodeVersion ];

    uninarrow:     use utf8;
    uninarrow:     use open qw(:std :utf8);

    uniprops:      use 5.10.0;     # but prefer 5.12.0
    uniprops:      use charnames qw[
    uniprops:      use Encode              qw[ decode              ];

    uniquote:      use 5.10.1;
    uniquote:      use utf8;
    uniquote:      use charnames qw[:full];
    uniquote:      require Encode;

    unisubs:       use 5.014;
    unisubs:       use utf8;
    unisubs:       use open        qw< :std  :utf8     >;
    unisubs:       use charnames   qw< :full >;
    unisubs:       use feature     qw< unicode_strings >;
    unisubs:       use re          "/msux";
    unisubs:       use Encode              qw< encode decode >;
    unisubs:       use Unicode::Normalize  qw< NFD NFC NFKD NFKC >;

    unisupers:     use 5.014;
    unisupers:     use utf8;
    unisupers:     use open        qw< :std  :utf8     >;
    unisupers:     use charnames   qw< :full >;
    unisupers:     use feature     qw< unicode_strings >;
    unisupers:     use re          "/msux";
    unisupers:     use Encode              qw< encode decode >;
    unisupers:     use Unicode::Normalize  qw< NFD NFC NFKD NFKC >;

    unititle:      use 5.010;

    uniwc:         require Encode;

    uniwide:       use utf8;
    uniwide:       use open qw(:std :utf8);

    vowel-sigs:    use v5.12;
    vowel-sigs:    use Lingua::EN::Syllable;

=head1 OSCON script demos

There's absolutely nothing like examples.

=head2  Demo of uniprops

    uniprops '['
    uniprops '[' '{' ')'
    uniprops '[' '{' '<'
    uniprops '[' '{' '>'
    uniprops ']'
    uniprops 08
    uniprops a8
    uniprops 00ff
    uniprops 180B
    uniprops 180B 303E
    uniprops 180B 303E FE01
    uniprops 180B 303E FE01 E0101
    uniprops 2026
    uniprops 202e
    uniprops 2058
    uniprops 2060
    uniprops 2062
    uniprops 20a8
    uniprops 20e0
    uniprops 2163
    uniprops 2241
    uniprops 2421
    uniprops 2461
    uniprops 26bd
    uniprops 2e2c
    uniprops 3000
    uniprops fb01
    uniprops feff
    uniprops ffef
    uniprops FFFD
    uniprops 1011c
    uniprops 1101c
    uniprops 12000
    uniprops 13000
    uniprops 1F42A
    uniprops 1F42A '$'
    uniprops 1F42A '$' % @
    uniprops 1F4A9
    uniprops 1F608
    uniprops 4
    uniprops -a 03 08
    uniprops -a 1F42a
    uniprops -a 2062
    uniprops -a 20e0
    uniprops -a 3350
    uniprops -a 3 8
    uniprops -a 4
    uniprops -a FFFD
    uniprops -a 'MATHEMATICAL BOLD FRAKTUR CAPITAL T'
    uniprops -ga 4
    uniprops -gl | less -r
    uniprops HYPHEN
    uniprops -l
    uniprops 'LADY BEETLE'
    uniprops -l | less -r
    uniprops -taw75 20e0
    uniprops -w75 -a 20e0

=head2  Demo of uninames

    uninames ancient
    uninames ankh
    uninames arrow
    uninames ass
    uninames AT
    uninames atom
    uninames AT SIGN
    uninames '\bAA\b'
    uninames ball
    uninames BALL
    uninames balls
    uninames '\bALPHA\b'
    uninames '\band\b'
    uninames '\bAND\b'
    uninames '\bAT\b'
    uninames beetle
    uninames '\b[IJ]\b' -WITH
    uninames bird
    uninames black letter
    uninames BLACK LETTER
    uninames BLACK-LETTER
    uninames '\bNO\b'
    uninames BOLD TWO
    uninames book
    uninames brac
    uninames brace
    uninames brok
    uninames '\bSCRIPT\b'
    uninames '\bSCRIPT\b' -MATHEMATICAL
    uninames '\bTAU\b'
    uninames '\bT\b' WITH
    uninames bug
    uninames bullet
    uninames burro
    uninames '\bY\b' | tcgrep -v '^\t' | ucsort | less -r
    uninames '\bz\b'
    uninames '\bZ\b'
    uninames '\bz\b' | tcgrep -v '^\t' | ucsort | less -r
    uninames '\bZ\b' | tcgrep -v '^\t' | ucsort | less -r
    uninames camel
    uninames CAMEL
    uninames care
    uninames CARE
    uninames caution
    uninames chi
    uninames CHI
    uninames CIRCL
    uninames circled
    uninames circle k
    uninames circle 'one|two'
    uninames clown
    uninames colon
    uninames COMB 'HOOK|TAIL|CURV'
    uninames COMBIN
    uninames combin ferm
    uninames combin hacek
    uninames combining
    uninames COMBINING
    uninames COMBINING DOTS
    uninames combining enclosing
    uninames combining enclosing prohib
    uninames COMBIN REV SOL
    uninames COMB LINE
    uninames COMB 'MACRO|LINE'
    uninames commer
    uninames commonly abbreviated
    uninames coptic
    uninames cross
    uninames crying
    uninames CUEN | tcgrep -v '^\t'
    uninames cun
    uninames CUN
    uninames CUNE
    uninames CUNEI | tcgrep -v '^\t'
    uninames CUNI
    uninames CUNIE
    uninames curren
    uninames currenc
    uninames d7
    uninames dagger
    uninames dash
    uninames dead
    uninames desert
    uninames destr
    uninames diaer
    uninames DIAER
    uninames diag
    uninames divis
    uninames does not prevent
    uninames does not prevent | fmt
    uninames dog
    uninames donkey
    uninames DOT ABOVE
    uninames DOT CIRC
    uninames dots
    uninames double
    uninames DOUBLE
    uninames DOUBLE HY
    uninames DOUBLE MATH
    uninames DOUBLE QUOT
    uninames DOUBLE STR
    uninames DOUBLE STR CAPITAL -MATH
    uninames DOUBLE STR CAPITAL -MATH | tail
    uninames double struc
    uninames DOUBLE STRUCK
    uninames double struct
    uninames DOUBL ITALI
    uninames earth
    uninames edit
    uninames EIGHTEEN
    uninames ellip
    uninames em
    uninames ENC CIR
    uninames EQUAL
    uninames EQUIV
    uninames evil
    uninames example
    uninames exclam
    uninames EYE
    uninames face
    uninames FACE
    uninames fair
    uninames farthing
    uninames feather
    uninames fem
    uninames fermata
    uninames ff lig
    uninames flash
    uninames flip
    uninames fl lig
    uninames four
    uninames fractu
    uninames FRAKT
    uninames fraktu
    uninames fraktur
    uninames fullwidth
    uninames gothic
    uninames GOTHIC
    uninames GREEK LETTER WITH
    uninames GREEK LETTER WITH | tcgrep -v '^\t' | ucsort | less -r
    uninames GREEK PHI
    uninames GREEK SUBSCRIPT
    uninames greek yp
    uninames GREEK YP
    uninames gun
    uninames hallo
    uninames hazard
    uninames head
    uninames HEAD
    uninames heart
    uninames HEART
    uninames HIERO
    uninames horse
    uninames hurt
    uninames hyphen
    uninames HYPHEN
    uninames ideo stop
    uninames insect
    uninames insters
    uninames INSULAR
    uninames INSULAR | lc
    uninames INSULAR | lc | tcgrep -v '^\t'
    uninames INSULAR | uc
    uninames INSULAR | uc | tcgrep -v '^\t'
    uninames intro
    uninames invis
    uninames invisible
    uninames iota sub
    uninames iso
    uninames jackol
    uninames jong
    uninames lake
    uninames left bracket
    uninames left single quot
    uninames LESS
    uninames LESS THAN
    uninames LIG
    uninames liga ff
    uninames liga gg
    uninames ligat fi
    uninames ligature
    uninames ligature -arabic
    uninames light
    uninames magic
    uninames mah jong
    uninames mah jong | tcgrep -v '^\t'
    uninames male
    uninames MATH CAPIT FRAK
    uninames MATH DIGIT
    uninames MATHE
    uninames MATHEM
    uninames MATHEM '\bA\b'
    uninames MATHEM CAPITA '\bA\b'
    uninames MATHEM CAPITA '\bA\b' | grep font
    uninames MATHEM CAPITA '\bA\b' | grep -v font
    uninames MATH FRACTU BOLD
    uninames MATH SCRIPT CAPITAL
    uninames -MATH SCRIPT E
    uninames MATH SCRIPT E
    uninames MATH SCRIPT SMALL
    uninames -MATH -SUB -SUPER SCRIPT
    uninames -MATH -SUB -SUPER SCRIPT E
    uninames 'MODIFIER|(?i:superscript)'
    uninames MODIFIER -LETTER
    uninames moon
    uninames mountain
    uninames multi
    uninames music
    uninames music -combin
    uninames music -combin | tcgrep -v '^\t'
    uninames MUSIC SHARP
    uninames NL
    uninames no one under
    uninames numeral
    uninames oasis
    uninames one
    uninames one way
    uninames ordina
    uninames pain
    uninames pen
    uninames people
    uninames person
    uninames PG
    uninames phi
    uninames PILE POO
    uninames '\pL' '\p{Latin}' | less -r
    uninames plum
    uninames PLUS
    uninames poo
    uninames POO
    uninames power
    uninames pumpkin
    uninames punct
    uninames quill
    uninames quot
    uninames radio
    uninames right bracket
    uninames right left
    uninames RIGHT LEFT
    uninames roman
    uninames ROMAN NUM
    uninames roman numeral
    uninames round
    uninames rx
    uninames Rx
    uninames SAME
    uninames santa
    uninames script
    uninames SCRIPT
    uninames set
    uninames SET
    uninames sex
    uninames Sigma
    uninames skull
    uninames slash
    uninames soccer
    uninames space
    uninames SPACE
    uninames spanish
    uninames sphere
    uninames square
    uninames st
    uninames start
    uninames st lig
    uninames stlig
    uninames subscript -SUBSCRIPT
    uninames sun
    uninames SUN
    uninames 'SU(PER|B)SCRIPT|MODIFIER' '\b[AT]'
    uninames 'SU(PER|B)SCRIPT|MODIFIER LETTER' '\b[AT]'
    uninames superscript
    uninames switch
    uninames SYM DEL
    uninames teste
    uninames testi
    uninames thin
    uninames tilde
    uninames times
    uninames tongue
    uninames traffic
    uninames TWO DOT LEAD
    uninames VARIATION
    uninames VARIATION | grep -c VARIATION
    uninames wand
    uninames warn
    uninames WIDTH
    uninames -WITH '\bAND\b'
    uninames WITH BAR
    uninames WITH SLASH
    uninames WITH STROKE
    uninames WITH STROKE '\b[BROKENNESS]\b'
    uninames wiz
    uninames writ
    uninames wrong
    uninames yuan
    uninames zero
    uninames ZERO

=head2  Demo of unichars

unichars is the most important
and useful program, so here are 861 of them, ucsorted, of course.

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

=head2  Demo of ucsort

    ucsort ../CRAFT-dumps/lc-not-unique | less
    ucsort --level=1 --upper-before-lower --preprocess="s/\s.*//" fing-2 | less
    ucsort --locale=ca /tmp/cat
    ucsort --locale=es /tmp/cat
    ucsort --locale=es__traditional /tmp/cat
    ucsort --locale=es_traditional /tmp/cat
    ucsort --locale=ru /tmp/cyril > /tmp/cyril.ru
    ucsort overlapping-obos | less
    ucsort --pre '/*\N{RIGHTWARDS ARROW} (\d+)/; s/^/sprintf("%06d", $1)/e' ../CRAFT-dumps/lc-not-unique | less
    ucsort --pre='/*\N{RIGHTWARDS ARROW} (\d+)/; s/^/sprintf("%06d", $1)/e' ../CRAFT-dumps/lc-not-unique | less
    ucsort --preprocess='/.*\N{RIGHTWARDS ARROW} (\d+)/; s/^/sprintf("%06d", $1)/e' ../CRAFT-dumps/lc-not-unique | less
    ucsort --preprocess='/*\N{RIGHTWARDS ARROW} (\d+)/; s/^/sprintf("%06d", $1)/e' ../CRAFT-dumps/lc-not-unique | less
    ucsort --preprocess='s/(.*)([\[\]].*[\[\]])(.*)/$2 $1 $3/' --reverse-input stem-fail-tally | less
    ucsort --preprocess='s/(.*)([\[\]].*[\[\]])(.*)/$2 $1 $3/' --reverse-input stem-fail-tally > stem-fail-sort
    ucsort --preprocess='s/([\[\]].*[\[\]])(.*)/$2 $1/' --reverse-input stem-fail-tally | less
    ucsort --preprocess='s/(\[.*\])(.*)/$2 $1/' --reverse-input stem-fail-tally | less
    ucsort --preprocess='s/(\].*\[)(.*)/$2 $1/' --reverse-input stem-fail-tally | less
    ucsort --preprocess='s/(\[FAIL: .*\])(.*)/$2 $1/' --reverse-input stem-fail-tally | less
    ucsort --preprocess='s/.*\gt//' go-greek
    ucsort --preprocess='s/.*\N{RIGHTWARDS ARROW} (\d+)//' ../CRAFT-dumps/lc-not-unique | & less
    ucsort --preprocess='s/.*\N{RIGHTWARDS ARROW} (\d+)//' ../CRAFT-dumps/lc-not-unique | less
    ucsort --preprocess='s/.*\N{RIGHTWARDS ARROW} (\d+)//; s/^/sprintf("%06d", $1)/e' ../CRAFT-dumps/lc-not-unique | less
    ucsort --preprocess='s/.*\t//' go-greek | less
    ucsort --preprocess='use charnames qw(:full); s/.*\N{RIGHTWARDS ARROW} (\d+)(?:\N{DIVISION SIGN}\d+)?//; $a = $1; s/^/sprintf("%06d", $a)/e' ../CRAFT-dumps/lc-not-unique | & less
    ucsort --preprocess='use charnames qw(:full); s/.*\N{RIGHTWARDS ARROW} (\d+)(?:\N{DIVISION SIGN}\d+)?//; $a = $1; s/^/sprintf("%06d", $a)/e' ../CRAFT-dumps/lc-not-unique | tac > ../CRAFT-dumps/lcnu-sort
    ucsort --preprocess='use charnames qw(:full); s/.*\N{RIGHTWARDS ARROW} (\d+)(?:\N{DIVISION SIGN}\d+)?//; $a = $1; s/^/sprintf("%06d", $a)/e' ../CRAFT-dumps/not-unique | tac > ../CRAFT-dumps/nu-sort
    ucsort --preprocess='use charnames qw(:full); s/.*\N{RIGHTWARDS ARROW} (\d+)(?:\N{DIVISION SIGN}\d+)?//; $a = $1; s/^/sprintf("%06d", $a)/e' lc-not-unique | tac > lc-nu-sort
    ucsort --preprocess='use charnames qw(:full); s/.*\N{RIGHTWARDS ARROW} (\d+)(?:\N{DIVISION SIGN}\d+)?//; $a = $1; s/^/sprintf("%06d", $a)/e' not-unique | tac > nu-sort
    ucsort --preprocess='use charnames qw(:full); s/.*\N{RIGHTWARDS ARROW} (\d+)(?:\N{DIVISION SIGN}\d+)?//; $a = $1; s/^/sprintf("%06d", $n)/e' ../CRAFT-dumps/lc-not-unique | & less
    ucsort --preprocess='use charnames qw(:full); s/.*\N{RIGHTWARDS ARROW} (\d+)(?:\N{DIVISION SIGN}\d+)?//; $n = $1; s/^/sprintf("%06d", $n)/e' ../CRAFT-dumps/lc-not-unique | & less
    ucsort --preprocess='use charnames qw(:full); s/.*\N{RIGHTWARDS ARROW} (\d+)//; s/^/sprintf("%06d", $1)/e' ../CRAFT-dumps/lc-not-unique | & less
    ucsort --preprocess='use charnames qw(:full); s/.*\N{RIGHTWARDS ARROW} (\d+)//; s/^/sprintf("%06d", $1)/e' ../CRAFT-dumps/lc-not-unique | less
    ucsort --pre='s/.*] //' gene* | less
    ucsort --pre='s/.*=> //' gene* | less
    ucsort --pre 's/.*\gt//' go-greek | less
    ucsort --pre='s/^\S+\h+//' pmc-weirds | less
    ucsort --reverse-input go-uglies | perl -nle ' printf "%50s\n", $_' > flip-go-uglies
    ucsort --reverse-input stem-fail-tally | less
    ucsort --reverse-input stem-fail-tally > stem-fail-sort2
    ucsort --reverse-input ugly-tally > flip-ugly-tally
    ucsort -reverse-input ugly-tally > flip-ugly-tally
    ucsort --reverse-input uuglies > flip-uuglies
    ucsort /tmp/emoji | less
    ucsort /tmp/emoji | unifmt -180 | less
    ucsort < /tmp/u | uniq > /tmp/uu
    ucsort /tmp/uw > /tmp/u
    ucsort --upper-before-lower --preprocess="s/\h.*//" fing-2 > fa
    ucsort --upper-before-lower --preprocess="s/\s.*//" fing-2
    ucsort --upper --pre='s/^\S+\h+//' pmc-weirds | less
    ucsort --upper --pre='s/^\S+\h+//' pmc-weirds > pmc-wsort

    unichars -a '\p{Latin}' 'NAME =~ /\bWITH\b/' 'length(NFKD) == 1' | ucsort > /tmp/d
    unichars -a 'UCA eq UCA("d")' 'NFKD !~ /d/i' | ucsort
    unichars -a '(UCA(NFKD) =~ (UCA("o")."|".UCA("a"))) || NFKD =~ /[ao]/i' | ucsort | less -r
    unichars -fgns '(?=\P{Ll})\p{Lower}|(?=\p{Lu})\p{Upper}' | ucsort | cat -n | less -r
    unichars -fgns '(?=\P{Ll})\p{Lower}|(?=\p{Lu})\p{Upper})' | ucsort | cat -n | less -r
    unichars -fgns '/(?= \P{Ll} ) \p{Lower}/x || /(?=\P{Lu}) \p{Upper}/x' | ucsort | cat -n | less -r
    unichars -fgns '\p{Lower}' '\P{Ll}' | ucsort | cat -n | less -r
    unichars -fgns '(?x) (?= \P{Ll} ) \p{Lower} | (?=\P{Lu}) \p{Upper}' | ucsort | cat -n | less -r
    unichars -gas '\p{Cased}' '[^\p{CWU}\p{CWT}\p{CWL}]' | ucsort | less -r
    unichars -gas '\p{Cased}' '[^\p{CWU}\p{CWT}\p{CWL}]' | ucsort --upper-before-lower | less -r
    unichars -gas '/(?= \P{Ll} ) \p{Lower}/x || /(?=\P{Lu}) \p{Upper}/x' | ucsort --upper-before-lower | cat -n | less -r
    unichars -gas '\p{Lower}' '\P{Ll}' | ucsort | less
    unichars -gfns '/\p{Lower}/ && /\p{CWU}/ || /\p{Upper}/ && /\P{CWL}/' | ucsort | less -r
    unichars -gfns '/\p{Lower}/ && /\P{CWU}/ || /\p{Upper}/ && /\P{CWL}/' | ucsort | less -r
    unichars -gfns '/\p{Lower}/ && /\P{CWU}/ || /\p{Upper}/ && /\P{CWL}/' | ucsort --upper | less -r
    unichars -gns '\p{Lower}' '\P{Ll}' | ucsort | cat -n | less -r
    unichars -gns '\p{Lower}' '\P{Ll}' | ucsort | less -r
    unichars -gs '\p{Cased}' '[^\p{CWU}\p{CWT}\p{CWL}]' | ucsort | less
    unichars -gs '\p{Cased}' '[^\p{CWU}\p{CWT}\p{CWL}]' | ucsort | less -r
    unichars -gs '\p{Cased}' '[^\p{CWU}\p{CWT}\p{CWL}]' | ucsort | less -r
    unichars -gs '\p{Cased}' '[^\p{CWU}\p{CWT}\p{CWL}]' | ucsort | less -r
    unichars -gs '/(?=\P{Ll})\p{Lower}|(?=\P{Lu})\p{Upper}/x' | ucsort --upper-before-lower | cat -n | less -r
    unichars -gs '/(?=\P{Ll})\p{Lower}|/(?=\P{Lu})\p{Upper}/x' | ucsort --upper-before-lower | cat -n | less -r
    unichars -gs '/(?= \P{Ll} ) \p{Lower}/x || /(?=\P{Lu}) \p{Upper}/x' | ucsort | cat -n | less -r
    unichars -gs '/(?= \P{Ll} ) \p{Lower} /x || / (?= \P{Lu} ) \p{Upper} /x' | ucsort --upper-before-lower | cat -n | less -r
    unichars -gs '/(?= \P{Ll} ) \p{Lower} /x || / (?= \P{Lu} ) \p{Upper} /x' | ucsort --upper-before-lower | cat -n | less -r
    unichars -gs '/\p{Lower}/ && /\P{CWT}/' | ucsort | less
    unichars -gs '/\p{Lower}/ && /\P{CWT}/' | ucsort | less -r
    unichars -gs '\p{Lower}' '\P{Ll}' | ucsort | less -r
    unichars -gs '\pL' '\p{Lower}' '\P{Ll}' | ucsort --upper-before-lower
    unichars -gs '\pL' '\p{Lower}' '\P{Ll}' | ucsort --upper-before-lower | less -r
    unichars -gs '\pL' '\p{Lower}' '\P{Ll}' | ucsort --upper-before-lower | less -r
    unichars -gs '/\p{Upper}/ && /\P{CWL}/' | ucsort | less
    unichars -gs '/\p{Upper}/ && /\P{CWT}/' | ucsort | less
    unichars '\p{Latin}' 'NAME =~ /\bWITH\b/' 'length(NFKD) == 1' | ucsort | less
    unichars '\p{Latin}' 'NAME =~ /\bWITH\b/' 'length(NFKD) == 1' | ucsort > /tmp/d

    uninames CYRIL | ucsort | less

    cat *-top | field %2 | tally | ucsort --reverse-input | less
    cat *-top | field %2 | tally | ucsort --reverse-input | perl -lane 'printf "%2d %13s\n", @F[0,1]' | less
    cat *-top | field %2 | tally | ucsort --reverse-input | perl -lane 'printf "%2d %15s\n", @F[0,1]' | less
    cat *-top | field %2 | tally | ucsort --reverse-input | perl -lane 'printf "%2d %18s\n", @F[0,1]' > hapax50
    cat *-top | field %2 | tally | ucsort --reverse-input | perl -lane 'printf "%2d %18s\n", @F[0,1]' | less
    cat *-top | field %2 | tally | ucsort --reverse-input | perl -lane 'printf "%2d %25s\n", @F[0,1]'
    cat *-top | field %2 | tally | ucsort --reverse-input | perl -lane 'printf "%2d %25s\n", @F[0,1]' | less

    egrep '^GO:(0005024|0005025|0005026|0007179|0015052)' ../CRAFT-dumps/CRAFT-go | sort -u | ucsort | less
    egrep '^GO:(0005024|0005025|0005026|0007179|0015052)' ../CRAFT-dumps/CRAFT-go | ucsort | less

    ls *.obo* | ucsort
    ls *.obo* | ucsort | perl -le 'printf "%-40s", $_'
    ls *.obo* | ucsort | perl -lne 'printf "%-40s\n", $_'
    ls *.obo* | ucsort | perl -lne 'printf "%40s\n", $_'

    perl5.12.0 -S -CLA unichars '/s/i' | ucsort
    perl -CS -E 'say for split " ", "cat ca\x{308}t czt c\x{e4}t bat dat"' | ucsort --locale=sv
    perl fingerprint $cat | ucsort > fing-all2
    perl fingerprint $cat | ucsort --upper-before-lower --preprocess="s/\h.*//" > fing-all2
    perl -F'\t' -lane 'print $F[0], "\t", $F[1] if @F' collisions-uniq | tally | sort -k2 -k1rn | tcgrep 'ABBREV' | perl -MText::Tabs -nle 'BEGIN{$tabstop = 30} print expand $_' | ucsort --pre='s/^\h+\d+\h//; s/\h.*//' > /tmp/ab
    perl -F'\t' -lane 'print $F[0], "\t", $F[1] if @F' collisions-uniq | tally | sort -k2 -k1rn | tcgrep 'GEN' | perl -MText::Tabs -nle 'BEGIN{$tabstop = 30} print expand $_' | ucsort --pre='s/^\h+\d+\h//; s/\h.*//' > /tmp/ge
    perl -F'\t' -lane 'print $F[0], "\t", $F[1] if @F' collisions-uniq | tally | sort -k2 -k1rn | tcgrep '\xB1' | perl -MText::Tabs -nle 'BEGIN{$tabstop = 30} print expand $_' | ucsort --pre='s/......//'
    perl -F'\t' -lane 'print $F[0], "\t", $F[1] if @F' collisions-uniq | tally | sort -k2 -k1rn | tcgrep '\xB1' | perl -MText::Tabs -nle 'BEGIN{$tabstop = 30} print expand $_' | ucsort --pre='s/^\h+\d+\h//; s/\h.*//'
    perl -F'\t' -lane 'print $F[0], "\t", $F[1] if @F' collisions-uniq | tally | sort -k2 -k1rn | tcgrep '\xB1' | perl -MText::Tabs -nle 'BEGIN{$tabstop = 30} print expand $_' | ucsort --pre='s/^\h+\d+\h//; s/\h.*//' > /tmp/d
    perl -F'\t' -lane 'print $F[0], "\t", $F[1] if @F' collisions-uniq | tally | sort -k2 -k1rn | tcgrep '\xB1' | perl -MText::Tabs -nle 'BEGIN{$tabstop = 30} print expand $_' | ucsort --pre='s/......//; s/\h.*//'
    perl -I ../CRAFT-dumps -MFixString -S ucsort --preprocess='$_ = fixstring($_)' ovl | & less
    perl -I ../CRAFT-dumps -MFixString -S ucsort --preprocess='$_ = fixstring($_)' ovl > ovl-sort
    perl -I ../CRAFT-dumps -MFixString -S ucsort --preprocess='\&fixstring' ovl | & less
    perl -I ../CRAFT-dumps -MFixString -S ucsort --preprocess='\&fixstring' ovl | less

    repeat 200 randline /tmp/u6 | ucsort | uniq > /tmp/u

    tcgrep '^0' ../../new-output/results-go-gene-stemwords-GOOD | ucsort --reverse-input | less

=head2 Demos of unilook

    unilook activation
    unilook adi
    unilook adieu
    unilook 'alis\b'
    unilook angina
    unilook arthrit
    unilook ascite
    unilook betab
    unilook '\boverexertion\b'
    unilook capitali
    unilook catheterization
    unilook defib
    unilook delineate
    unilook digitalis
    unilook dofetilide
    unilook dysauto
    unilook dyssyn
    unilook dysyn
    unilook edema
    unilook estiv
    unilook etouf
    unilook euphon
    unilook fentan
    unilook fentanyl
    unilook /glob
    unilook gw
    unilook gwen
    unilook gyneco
    unilook hemochr
    unilook hemodialysis
    unilook hibern
    unilook hippodam
    unilook hippo | wc -l
    unilook hypogl
    unilook idyl
    unilook '(?i)^[^\N{LEFTWARDS ARROW}]*?(?=\P{ASCII})(?=[^\N{stress1}\N{stress2}\N{ae}\N{oe}])\pL'
    unilook inscrut
    unilook ischemia
    unilook leucocy
    unilook leuc | wc -l
    unilook leukocy
    unilook leuk | wc -l
    unilook lighthead
    unilook lymp
    unilook lympho
    unilook lymphom
    unilook meningitis
    unilook '\N{oslash}'
    unilook oligu
    unilook oto
    unilook otot
    unilook overeat
    unilook overexert
    unilook overexertion
    unilook pacem
    unilook '(?\P{ASCII})\pL'
    unilook '(?=\P{ASCII})\pL'
    unilook pectoris
    unilook pheo
    unilook phonious
    unilook 'phonious\b'
    unilook '\pM'
    unilook -ppro
    unilook -ppro .
    unilook -Ppro .
    unilook -ppronoun .
    unilook -ppronoun wh
    unilook primum
    unilook pseudonormal
    unilook pulmon
    unilook rale
    unilook rheto
    unilook rosuv
    unilook secund
    unilook sputum
    unilook sum
    unilook tachyph
    unilook thiazol
    unilook thyrotox
    unilook tracheitis
    unilook uephon
    unilook uremia
    unilook -v .
    unilook -v activation
    unilook -v angina
    unilook -v ascite
    unilook vascul
    unilook -v '\boverexertion\b'
    unilook verna
    unilook vesnar
    unilook -v holter
    unilook -v '(?i)^[^\N{LEFTWARDS ARROW}]*?(?=\P{ASCII})(?=[^\N{stress1}\N{stress2}\N{ae}\N{oe}])\pL'
    unilook -V '(?i)^[^\N{LEFTWARDS ARROW}]*?(?=\P{ASCII})(?=[^\N{stress1}\N{stress2}\N{ae}\N{oe}])\pL'
    unilook -V '(?i)(?=\P{ASCII})(?=[^\N{stress1}\N{stress2}\N{ae}\N{oe}])\pL'
    unilook -V '(?i)(?=\P{ASCII})(?=[^\N{stress1}\N{stress2}\N{ae}])\pL'
    unilook -v meningitis
    unilook -v 'overexertion'
    unilook -V '(?=\P{ASCII})(?=[^\N{stress1}\N{stress2}\N{ae}])\pL'
    unilook -V '(?=\P{ASCII})(?=[^\N{stress1}\N{stress2}])\pL'
    unilook -V '(?=\P{ASCII})(?=[^\N{stress1}\N{stress2}]\pL'
    unilook -V '(?=\P{ASCII})\pL'
    unilook -v pneumoconiosis
    unilook -vz 'comeraderie'
    unilook wh
    unilook who
    unilook widespread
    unilook -z dofetilide
    unilook -z eplerenone
    unilook -z pectoris
    unilook -z sulfoxide
    unilook -zv anterolateral
    unilook -zv holter
    unilook -zv metformin

=head1 AUTHOR

Tom Christiansen C<< <tchrist@perl.org> >> wrote all the code.

brian d foy C<< <briandfoy@pobox.com> >> wrapped the distribution around
it.

=head1 COPYRIGHT

Copyright 2011-2025, Tom Christiansen.

=head1 LICENSE

You can use this distribution under the same terms as Perl itself.

=cut

1;
