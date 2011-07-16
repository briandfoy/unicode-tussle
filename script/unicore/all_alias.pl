use utf8;
use strict;
use warnings qw[ FATAL all ];

# "return" is to quiet perl -wc

return (

    "Aacu" => "LATIN CAPITAL LETTER A WITH ACUTE",        # Á U+00C1
    "aacu" => "LATIN SMALL LETTER A WITH ACUTE",          # á U+00E1
   "Acirc" => "LATIN CAPITAL LETTER A WITH CIRCUMFLEX",   # Â U+00C2
   "acirc" => "LATIN SMALL LETTER A WITH CIRCUMFLEX",     # â U+00E2
     "acu" => "COMBINING ACUTE ACCENT",                   # ́ U+0301
      "AE" => "LATIN CAPITAL LETTER AE",                  # Æ U+00C6
      "Ae" => "LATIN CAPITAL LETTER AE",                  # Æ U+00C6
      "ae" => "LATIN SMALL LETTER AE",                    # æ U+00E6
  "Agrave" => "LATIN CAPITAL LETTER A WITH GRAVE",        # À U+00C0
  "agrave" => "LATIN SMALL LETTER A WITH GRAVE",          # à U+00E0
   "Alpha" => "GREEK CAPITAL LETTER ALPHA WITH TONOS",    # Ά U+0386
   "alpha" => "GREEK SMALL LETTER ALPHA",                 # α U+03B1
     "ang" => "LATIN SMALL LETTER A WITH RING ABOVE",     # å U+00E5
     "Asg" => "LATIN CAPITAL LETTER A WITH CIRCUMFLEX",   # Â U+00C2
     "asg" => "LATIN SMALL LETTER G WITH DOT ABOVE",      # ġ U+0121
   "asper" => "COMBINING REVERSED COMMA ABOVE",           # ̔ U+0314
    "Auml" => "LATIN CAPITAL LETTER A WITH DIAERESIS",    # Ä U+00C4
    "auml" => "LATIN SMALL LETTER A WITH DIAERESIS",      # ä U+00E4
    "bbar" => "LATIN SMALL LETTER B WITH STROKE",         # ƀ U+0180
    "Beta" => "GREEK CAPITAL LETTER BETA",                # Β U+0392
    "beta" => "GREEK SMALL LETTER BETA",                  # β U+03B2
   "breve" => "COMBINING BREVE",                          # ̆ U+0306
   "Ccdil" => "LATIN CAPITAL LETTER C WITH CEDILLA",      # Ç U+00C7
   "ccdil" => "LATIN SMALL LETTER C WITH CEDILLA",        # ç U+00E7
    "cdil" => "COMBINING CEDILLA",                        # ̧ U+0327
     "cdl" => "LATIN SMALL LETTER C WITH CEDILLA",        # ç U+00E7
    "cent" => "CENT SIGN",                                # ¢ U+00A2
     "Chi" => "GREEK CAPITAL LETTER CHI",                 # Χ U+03A7
     "chi" => "GREEK SMALL LETTER CHI",                   # χ U+03C7
    "circ" => "COMBINING CIRCUMFLEX ACCENT",              # ̂ U+0302
  "circbl" => "COMBINING CIRCUMFLEX ACCENT BELOW",        # ̭ U+032D
     "dag" => "DAGGER",                                   # † U+2020
     "deg" => "DEGREE SIGN",                              # ° U+00B0
   "Delta" => "GREEK CAPITAL LETTER DELTA",               # Δ U+0394
   "delta" => "GREEK SMALL LETTER DELTA",                 # δ U+03B4
     "div" => "DIVISION SLASH",                           # ∕ U+2215
  "dollar" => "DOLLAR SIGN",                              # $ U+0024
   "dotab" => "COMBINING DOT ABOVE",                      # ̇ U+0307
   "dotbl" => "COMBINING DOT BELOW",                      # ̣ U+0323
    "dubh" => "HYPHEN",                                   # ‐ U+2010
    "Eacu" => "LATIN CAPITAL LETTER E WITH ACUTE",        # É U+00C9
    "eacu" => "LATIN SMALL LETTER E WITH ACUTE",          # é U+00E9
   "Ecirc" => "LATIN CAPITAL LETTER E WITH CIRCUMFLEX",   # Ê U+00CA
   "ecirc" => "LATIN SMALL LETTER E WITH CIRCUMFLEX",     # ê U+00EA
     "Edh" => "LATIN CAPITAL LETTER ETH",                 # Ð U+00D0
     "edh" => "LATIN SMALL LETTER ETH",                   # ð U+00F0
  "Egrave" => "LATIN CAPITAL LETTER E WITH GRAVE",        # È U+00C8
  "egrave" => "LATIN SMALL LETTER E WITH GRAVE",          # è U+00E8
 "Epsilon" => "GREEK CAPITAL LETTER EPSILON",             # Ε U+0395
 "epsilon" => "GREEK SMALL LETTER EPSILON",               # ε U+03B5
     "Eta" => "GREEK CAPITAL LETTER ETA",                 # Η U+0397
     "eta" => "GREEK SMALL LETTER BETA",                  # β U+03B2
     "Eth" => "LATIN CAPITAL LETTER ETH",                 # Ð U+00D0
     "eth" => "LATIN SMALL LETTER ETH",                   # ð U+00F0
    "Euml" => "LATIN CAPITAL LETTER E WITH DIAERESIS",    # Ë U+00CB
    "euml" => "LATIN SMALL LETTER E WITH DIAERESIS",      # ë U+00EB
    "fata" => "LATIN SMALL LETTER ALPHA",                 # ɑ U+0251
   "fatax" => "LATIN SMALL LETTER ALPHA",                 # ɑ U+0251
 "fatpara" => "DOUBLE-STRUCK CAPITAL P",                  # ℙ U+2119
   "frown" => "COMBINING BREVE",                          # ̆ U+0306
   "Gamma" => "GREEK CAPITAL LETTER GAMMA",               # Γ U+0393
   "gamma" => "GREEK SMALL LETTER GAMMA",                 # γ U+03B3
      "ge" => "GREATER-THAN OR EQUAL TO",                 # ≥ U+2265
   "grave" => "COMBINING GRAVE ACCENT",                   # ̀ U+0300
      "gt" => "GREATER-THAN SIGN",                        # > U+003E
     "h01" => "HEBREW LETTER HET",                        # ח U+05D7
     "h02" => "ARABIC SHADDA",                            # ّ U+0651
   "hacek" => "COMBINING CARON",                          # ̌ U+030C
    "hash" => "NUMBER SIGN",                              # # U+0023
    "hbar" => "LATIN SMALL LETTER H WITH STROKE",         # ħ U+0127
     "hgz" => "LATIN SMALL LETTER Z WITH HOOK",           # ȥ U+0225
    "hook" => "COMBINING CEDILLA",                        # ̧ U+0327
      "ia" => "LATIN SMALL LETTER ALPHA",                 # ɑ U+0251
    "Iacu" => "LATIN CAPITAL LETTER I WITH ACUTE",        # Í U+00CD
    "iacu" => "LATIN SMALL LETTER I WITH ACUTE",          # í U+00ED
      "ib" => "GREEK SMALL LETTER BETA",                  # β U+03B2
   "Icirc" => "LATIN CAPITAL LETTER I WITH CIRCUMFLEX",   # Î U+00CE
   "icirc" => "LATIN SMALL LETTER I WITH CIRCUMFLEX",     # î U+00EE
      "id" => "GREEK SMALL LETTER DELTA",                 # δ U+03B4
      "ie" => "LATIN SMALL LETTER OPEN E",                # ɛ U+025B
      "ig" => "LATIN SMALL LETTER GAMMA",                 # ɣ U+0263
  "Igrave" => "LATIN CAPITAL LETTER I WITH GRAVE",        # Ì U+00CC
  "igrave" => "LATIN SMALL LETTER I WITH GRAVE",          # ì U+00EC
      "ih" => "GREEK SMALL LETTER ETA",                   # η U+03B7
      "ii" => "LATIN SMALL LETTER IOTA",                  # ɩ U+0269
   "infin" => "INFINITY",                                 # ∞ U+221E
    "Iota" => "GREEK CAPITAL LETTER IOTA",                # Ι U+0399
    "iota" => "GREEK CAPITAL LETTER CHI",                 # Χ U+03A7
      "iq" => "GREEK SMALL LETTER THETA",                 # θ U+03B8
    "isub" => "COMBINING GREEK YPOGEGRAMMENI",            # ͅ U+0345
    "Iuml" => "LATIN CAPITAL LETTER I WITH DIAERESIS",    # Ï U+00CF
    "iuml" => "LATIN SMALL LETTER I WITH DIAERESIS",      # ï U+00EF
      "iz" => "GREEK SMALL LETTER ZETA",                  # ζ U+03B6
   "Kappa" => "GREEK CAPITAL LETTER KAPPA",               # Κ U+039A
   "kappa" => "GREEK SMALL LETTER KAPPA",                 # κ U+03BA
  "Lambda" => "GREEK CAPITAL LETTER LAMDA",               # Λ U+039B
  "lambda" => "GREEK SMALL LETTER LAMDA",                 # λ U+03BB
     "lar" => "LEFTWARDS ARROW",                          # ← U+2190
    "Lbar" => "LATIN CAPITAL LETTER L WITH STROKE",       # Ł U+0141
    "lbar" => "LATIN CAPITAL LETTER O WITH MACRON",       # Ō U+014C
      "le" => "LESS-THAN OVER EQUAL TO",                  # ≦ U+2266
   "lenis" => "COMBINING REVERSED COMMA ABOVE",           # ̔ U+0314
      "lm" => "MODIFIER LETTER TRIANGULAR COLON",         # ː U+02D0
      "lt" => "LESS-THAN SIGN",                           # < U+003C
     "mac" => "COMBINING MACRON",                         # ̄ U+0304
     "min" => "MINUS SIGN",                               # − U+2212
      "Mu" => "GREEK CAPITAL LETTER MU",                  # Μ U+039C
      "mu" => "GREEK SMALL LETTER MU",                    # μ U+03BC
      "ng" => "LATIN SMALL LETTER ENG",                   # ŋ U+014B
     "ngx" => "LATIN SMALL LETTER ENG",                   # ŋ U+014B
      "Nu" => "GREEK CAPITAL LETTER NU",                  # Ν U+039D
      "nu" => "GREEK SMALL LETTER NU",                    # ν U+03BD
    "Oacu" => "LATIN CAPITAL LETTER O WITH ACUTE",        # Ó U+00D3
    "oacu" => "LATIN SMALL LETTER O WITH ACUTE",          # ó U+00F3
    "Obar" => "LATIN CAPITAL LETTER O WITH STROKE",       # Ø U+00D8
    "obar" => "LATIN SMALL LETTER O WITH STROKE",         # ø U+00F8
   "Ocirc" => "LATIN CAPITAL LETTER O WITH CIRCUMFLEX",   # Ô U+00D4
   "ocirc" => "LATIN SMALL LETTER O WITH CIRCUMFLEX",     # ô U+00F4
      "OE" => "LATIN CAPITAL LIGATURE OE",                # Œ U+0152
      "Oe" => "LATIN CAPITAL LIGATURE OE",                # Œ U+0152
      "oe" => "LATIN SMALL LIGATURE OE",                  # œ U+0153
  "Ograve" => "LATIN CAPITAL LETTER O WITH GRAVE",        # Ò U+00D2
  "ograve" => "LATIN SMALL LETTER O WITH GRAVE",          # ò U+00F2
   "Omega" => "GREEK CAPITAL LETTER OMEGA",               # Ω U+03A9
   "omega" => "GREEK SMALL LETTER OMEGA",                 # ω U+03C9
 "Omicron" => "GREEK CAPITAL LETTER OMICRON",             # Ο U+039F
 "omicron" => "GREEK SMALL LETTER OMICRON",               # ο U+03BF
     "ope" => "LATIN SMALL LETTER OPEN E",                # ɛ U+025B
    "Ouml" => "LATIN CAPITAL LETTER O WITH DIAERESIS",    # Ö U+00D6
    "ouml" => "LATIN SMALL LETTER A WITH DIAERESIS",      # ä U+00E4
      "pa" => "GREEK LETTER ARCHAIC KOPPA",               # Ϙ U+03D8
    "pall" => "LATIN SMALL LETTER TURNED Y",              # ʎ U+028E
    "paln" => "LATIN SMALL LETTER N WITH LEFT HOOK",      # ɲ U+0272
    "para" => "PILCROW SIGN",                             # ¶ U+00B6
     "Phi" => "GREEK CAPITAL LETTER PHI",                 # Φ U+03A6
     "phi" => "LATIN SMALL LETTER PHI",                   # ɸ U+0278
      "Pi" => "GREEK CAPITAL LETTER PI",                  # Π U+03A0
      "pi" => "GREEK SMALL LETTER PI",                    # π U+03C0
      "pm" => "PLUS-MINUS SIGN",                          # ± U+00B1
      "pp" => "DOUBLE PRIME",                             # ″ U+2033
     "Psi" => "GREEK CAPITAL LETTER PSI",                 # Ψ U+03A8
     "psi" => "GREEK SMALL LETTER PSI",                   # ψ U+03C8
   "pstlg" => "POUND SIGN",                               # £ U+00A3
     "rar" => "RIGHTWARDS ARROW",                         # → U+2192
    "revc" => "LATIN SMALL LETTER OPEN O",                # ɔ U+0254
  "revope" => "LATIN SMALL LETTER REVERSED OPEN E",       # ɜ U+025C
    "revr" => "MODIFIER LETTER RHOTIC HOOK",              # ˞ U+02DE
   "revrx" => "LATIN SMALL LETTER TURNED R",              # ɹ U+0279
    "revv" => "LATIN SMALL LETTER TURNED V",              # ʌ U+028C
     "rfa" => "LATIN SMALL LETTER TURNED ALPHA",          # ɒ U+0252
     "Rho" => "GREEK CAPITAL LETTER RHO",                 # Ρ U+03A1
     "rho" => "GREEK SMALL LETTER RHO",                   # ρ U+03C1
   "schwa" => "LATIN SMALL LETTER SCHWA",                 # ə U+0259
  "schwax" => "LATIN SMALL LETTER SCHWA",                 # ə U+0259
    "sect" => "SECTION SIGN",                             # § U+00A7
      "sh" => "LATIN SMALL LETTER ESH",                   # ʃ U+0283
    "shti" => "LATIN LETTER SMALL CAPITAL I",             # ɪ U+026A
    "shtu" => "LATIN SMALL LETTER UPSILON",               # ʊ U+028A
    "shty" => "LATIN LETTER SMALL CAPITAL Y",             # ʏ U+028F
     "shx" => "LATIN SMALL LETTER ESH",                   # ʃ U+0283
   "Sigma" => "GREEK CAPITAL LETTER SIGMA",               # Σ U+03A3
   "sigma" => "GREEK SMALL LETTER SIGMA",                 # σ U+03C3
      "sm" => "MODIFIER LETTER VERTICAL LINE",            # ˈ U+02C8
     "smm" => "MODIFIER LETTER LOW VERTICAL LINE",        # ˌ U+02CC
    "sqrt" => "SQUARE ROOT",                              # √ U+221A
     "Tau" => "GREEK CAPITAL LETTER TAU",                 # Τ U+03A4
     "tau" => "GREEK SMALL LETTER TAU",                   # τ U+03C4
      "Th" => "LATIN CAPITAL LETTER THORN",               # Þ U+00DE
      "th" => "LATIN SMALL LETTER THORN",                 # þ U+00FE
   "Theta" => "GREEK CAPITAL LETTER THETA",               # Θ U+0398
   "theta" => "GREEK SMALL LETTER THETA",                 # θ U+03B8
   "tilde" => "COMBINING TILDE",                          # ̃ U+0303
   "times" => "MULTIPLICATION SIGN",                      # × U+00D7
    "trli" => "PARALLEL TO",                              # ∥ U+2225
    "Uacu" => "LATIN CAPITAL LETTER U WITH ACUTE",        # Ú U+00DA
    "uacu" => "LATIN SMALL LETTER U WITH ACUTE",          # ú U+00FA
   "Ucirc" => "LATIN CAPITAL LETTER U WITH CIRCUMFLEX",   # Û U+00DB
   "ucirc" => "LATIN SMALL LETTER U WITH CIRCUMFLEX",     # û U+00FB
    "udtr" => "NABLA",                                    # ∇ U+2207
  "Ugrave" => "LATIN CAPITAL LETTER U WITH GRAVE",        # Ù U+00D9
  "ugrave" => "LATIN SMALL LETTER U WITH GRAVE",          # ù U+00F9
     "uml" => "COMBINING DIAERESIS",                      # ̈ U+0308
    "undl" => "COMBINING MINUS SIGN BELOW",               # ̠ U+0320
 "Upsilon" => "GREEK CAPITAL LETTER UPSILON",             # Υ U+03A5
 "upsilon" => "LATIN SMALL LETTER UPSILON",               # ʊ U+028A
    "Uuml" => "LATIN CAPITAL LETTER U WITH DIAERESIS",    # Ü U+00DC
    "uuml" => "LATIN SMALL LETTER U WITH DIAERESIS",      # ü U+00FC
      "vb" => "VERTICAL LINE",                            # | U+007C
     "vvf" => "LATIN SMALL LETTER GAMMA",                 # ɣ U+0263
      "Xi" => "GREEK CAPITAL LETTER XI",                  # Ξ U+039E
      "xi" => "GREEK SMALL LETTER XI",                    # ξ U+03BE
    "Yacu" => "LATIN SMALL LETTER Y WITH ACUTE",          # ý U+00FD
    "yacu" => "LATIN SMALL LETTER Y WITH ACUTE",          # ý U+00FD
     "Ygh" => "LATIN CAPITAL LETTER YOGH",                # Ȝ U+021C
     "ygh" => "LATIN SMALL LETTER YOGH",                  # ȝ U+021D
    "yuml" => "LATIN SMALL LETTER Y WITH DIAERESIS",      # ÿ U+00FF
    "Zeta" => "GREEK CAPITAL LETTER ZETA",                # Ζ U+0396
    "zeta" => "GREEK SMALL LETTER ZETA",                  # ζ U+03B6
      "zh" => "LATIN SMALL LETTER EZH",                   # ʒ U+0292

# Number aliases: these are \p{Other_Number}
      "sup1" => "SUPERSCRIPT ONE",                            # ¹ U+00B9
      "sup2" => "SUPERSCRIPT TWO",                            # ² U+00B2
      "sup3" => "SUPERSCRIPT THREE",                          # ³ U+00B3
    "frac12" => "VULGAR FRACTION ONE HALF",                   # ½ U+00BD
    "frac14" => "VULGAR FRACTION ONE QUARTER",                # ¼ U+00BC
    "frac34" => "VULGAR FRACTION THREE QUARTERS",             # ¾ U+00BE

# Currency sign aliases: \p{Currency_Symbol}

    "curren" => "CURRENCY SIGN",                              # ¤ U+00A4
      "cent" => "CENT SIGN",                                  # ¢ U+00A2
     "pound" => "POUND SIGN",                                 # £ U+00A3
       "yen" => "YEN SIGN",                                   # ¥ U+00A5
      "euro" => "EURO SIGN",                                  # € U+20AC

# Latin letter aliases in NFC and grouped by first letter
#
#   NOTE: some like BLACK LETTER blah and the trademark
#         symbol are only Latin in NFKD form.

      "ordf" => "FEMININE ORDINAL INDICATOR",                 # ª U+00AA
    "Oacute" => "LATIN CAPITAL LETTER O WITH ACUTE",          # Ó U+00D3
    "Aacute" => "LATIN CAPITAL LETTER A WITH ACUTE",          # Á U+00C1
    "aacute" => "LATIN SMALL LETTER A WITH ACUTE",            # á U+00E1
    "Agrave" => "LATIN CAPITAL LETTER A WITH GRAVE",          # À U+00C0
    "agrave" => "LATIN SMALL LETTER A WITH GRAVE",            # à U+00E0
     "Acirc" => "LATIN CAPITAL LETTER A WITH CIRCUMFLEX",     # Â U+00C2
     "acirc" => "LATIN SMALL LETTER A WITH CIRCUMFLEX",       # â U+00E2
     "Aring" => "LATIN CAPITAL LETTER A WITH RING ABOVE",     # Å U+00C5
     "aring" => "LATIN SMALL LETTER A WITH RING ABOVE",       # å U+00E5
      "Auml" => "LATIN CAPITAL LETTER A WITH DIAERESIS",      # Ä U+00C4
      "auml" => "LATIN SMALL LETTER A WITH DIAERESIS",        # ä U+00E4
    "Atilde" => "LATIN CAPITAL LETTER A WITH TILDE",          # Ã U+00C3
    "atilde" => "LATIN SMALL LETTER A WITH TILDE",            # ã U+00E3
     "AElig" => "LATIN CAPITAL LETTER AE",                    # Æ U+00C6
     "aelig" => "LATIN SMALL LETTER AE",                      # æ U+00E6

    "Ccedil" => "LATIN CAPITAL LETTER C WITH CEDILLA",        # Ç U+00C7
    "ccedil" => "LATIN SMALL LETTER C WITH CEDILLA",          # ç U+00E7

       "ETH" => "LATIN CAPITAL LETTER ETH",                   # Ð U+00D0
       "eth" => "LATIN SMALL LETTER ETH",                     # ð U+00F0

    "Eacute" => "LATIN CAPITAL LETTER E WITH ACUTE",          # É U+00C9
    "eacute" => "LATIN SMALL LETTER E WITH ACUTE",            # é U+00E9
    "Egrave" => "LATIN CAPITAL LETTER E WITH GRAVE",          # È U+00C8
    "egrave" => "LATIN SMALL LETTER E WITH GRAVE",            # è U+00E8
     "Ecirc" => "LATIN CAPITAL LETTER E WITH CIRCUMFLEX",     # Ê U+00CA
     "ecirc" => "LATIN SMALL LETTER E WITH CIRCUMFLEX",       # ê U+00EA
      "Euml" => "LATIN CAPITAL LETTER E WITH DIAERESIS",      # Ë U+00CB
      "euml" => "LATIN SMALL LETTER E WITH DIAERESIS",        # ë U+00EB

      "fnof" => "LATIN SMALL LETTER F WITH HOOK",             # ƒ U+0192

     "image" => "BLACK-LETTER CAPITAL I",                     # ℑ U+2111
    "Iacute" => "LATIN CAPITAL LETTER I WITH ACUTE",          # Í U+00CD
    "iacute" => "LATIN SMALL LETTER I WITH ACUTE",            # í U+00ED
    "Igrave" => "LATIN CAPITAL LETTER I WITH GRAVE",          # Ì U+00CC
    "igrave" => "LATIN SMALL LETTER I WITH GRAVE",            # ì U+00EC
     "Icirc" => "LATIN CAPITAL LETTER I WITH CIRCUMFLEX",     # Î U+00CE
     "icirc" => "LATIN SMALL LETTER I WITH CIRCUMFLEX",       # î U+00EE
      "Iuml" => "LATIN CAPITAL LETTER I WITH DIAERESIS",      # Ï U+00CF
      "iuml" => "LATIN SMALL LETTER I WITH DIAERESIS",        # ï U+00EF

    "Ntilde" => "LATIN CAPITAL LETTER N WITH TILDE",          # Ñ U+00D1
    "ntilde" => "LATIN SMALL LETTER N WITH TILDE",            # ñ U+00F1

      "ordm" => "MASCULINE ORDINAL INDICATOR",                # º U+00BA
    "oacute" => "LATIN SMALL LETTER O WITH ACUTE",            # ó U+00F3
    "Ograve" => "LATIN CAPITAL LETTER O WITH GRAVE",          # Ò U+00D2
    "ograve" => "LATIN SMALL LETTER O WITH GRAVE",            # ò U+00F2
     "Ocirc" => "LATIN CAPITAL LETTER O WITH CIRCUMFLEX",     # Ô U+00D4
     "ocirc" => "LATIN SMALL LETTER O WITH CIRCUMFLEX",       # ô U+00F4
      "Ouml" => "LATIN CAPITAL LETTER O WITH DIAERESIS",      # Ö U+00D6
      "ouml" => "LATIN SMALL LETTER O WITH DIAERESIS",        # ö U+00F6
    "Otilde" => "LATIN CAPITAL LETTER O WITH TILDE",          # Õ U+00D5
    "otilde" => "LATIN SMALL LETTER O WITH TILDE",            # õ U+00F5
    "Oslash" => "LATIN CAPITAL LETTER O WITH STROKE",         # Ø U+00D8
    "oslash" => "LATIN SMALL LETTER O WITH STROKE",           # ø U+00F8
     "OElig" => "LATIN CAPITAL LIGATURE OE",                  # Œ U+0152
     "oelig" => "LATIN SMALL LIGATURE OE",                    # œ U+0153

      "real" => "BLACK-LETTER CAPITAL R",                     # ℜ U+211C

    "Scaron" => "LATIN CAPITAL LETTER S WITH CARON",          # Š U+0160
    "scaron" => "LATIN SMALL LETTER S WITH CARON",            # š U+0161
     "szlig" => "LATIN SMALL LETTER SHARP S",                 # ß U+00DF

     "trade" => "TRADE MARK SIGN",                            # ™ U+2122

    "Uacute" => "LATIN CAPITAL LETTER U WITH ACUTE",          # Ú U+00DA
    "uacute" => "LATIN SMALL LETTER U WITH ACUTE",            # ú U+00FA
    "Ugrave" => "LATIN CAPITAL LETTER U WITH GRAVE",          # Ù U+00D9
    "ugrave" => "LATIN SMALL LETTER U WITH GRAVE",            # ù U+00F9
     "Ucirc" => "LATIN CAPITAL LETTER U WITH CIRCUMFLEX",     # Û U+00DB
     "ucirc" => "LATIN SMALL LETTER U WITH CIRCUMFLEX",       # û U+00FB
      "Uuml" => "LATIN CAPITAL LETTER U WITH DIAERESIS",      # Ü U+00DC
      "uuml" => "LATIN SMALL LETTER U WITH DIAERESIS",        # ü U+00FC

    "Yacute" => "LATIN CAPITAL LETTER Y WITH ACUTE",          # Ý U+00DD
    "yacute" => "LATIN SMALL LETTER Y WITH ACUTE",            # ý U+00FD
      "Yuml" => "LATIN CAPITAL LETTER Y WITH DIAERESIS",      # Ÿ U+0178
      "yuml" => "LATIN SMALL LETTER Y WITH DIAERESIS",        # ÿ U+00FF

     "THORN" => "LATIN CAPITAL LETTER THORN",                 # Þ U+00DE
     "thorn" => "LATIN SMALL LETTER THORN",                   # þ U+00FE

# This is *not* the same as the HEBREW LETTER ALEF (aleph),
# although it is a \p{Other_Letter} not a \p{Symbol}.
   "alefsym" => "ALEF SYMBOL",                                # ℵ U+2135

# Greek letter aliases, or things that sort with them

     "Alpha" => "GREEK CAPITAL LETTER ALPHA",                 # Α U+0391
     "alpha" => "GREEK SMALL LETTER ALPHA",                   # α U+03B1
      "Beta" => "GREEK CAPITAL LETTER BETA",                  # Β U+0392
      "beta" => "GREEK SMALL LETTER BETA",                    # β U+03B2
     "Gamma" => "GREEK CAPITAL LETTER GAMMA",                 # Γ U+0393
     "gamma" => "GREEK SMALL LETTER GAMMA",                   # γ U+03B3
     "Delta" => "GREEK CAPITAL LETTER DELTA",                 # Δ U+0394
     "delta" => "GREEK SMALL LETTER DELTA",                   # δ U+03B4
   "Epsilon" => "GREEK CAPITAL LETTER EPSILON",               # Ε U+0395
   "epsilon" => "GREEK SMALL LETTER EPSILON",                 # ε U+03B5
      "Zeta" => "GREEK CAPITAL LETTER ZETA",                  # Ζ U+0396
      "zeta" => "GREEK SMALL LETTER ZETA",                    # ζ U+03B6
       "Eta" => "GREEK CAPITAL LETTER ETA",                   # Η U+0397
       "eta" => "GREEK SMALL LETTER ETA",                     # η U+03B7
     "Theta" => "GREEK CAPITAL LETTER THETA",                 # Θ U+0398
  "thetasym" => "GREEK THETA SYMBOL",                         # ϑ U+03D1
     "theta" => "GREEK SMALL LETTER THETA",                   # θ U+03B8
      "Iota" => "GREEK CAPITAL LETTER IOTA",                  # Ι U+0399
      "iota" => "GREEK SMALL LETTER IOTA",                    # ι U+03B9
     "Kappa" => "GREEK CAPITAL LETTER KAPPA",                 # Κ U+039A
     "kappa" => "GREEK SMALL LETTER KAPPA",                   # κ U+03BA
    "Lambda" => "GREEK CAPITAL LETTER LAMDA",                 # Λ U+039B
    "lambda" => "GREEK SMALL LETTER LAMDA",                   # λ U+03BB
        "Mu" => "GREEK CAPITAL LETTER MU",                    # Μ U+039C
     "micro" => "MICRO SIGN",                                 # µ U+00B5
        "mu" => "GREEK SMALL LETTER MU",                      # μ U+03BC
        "Nu" => "GREEK CAPITAL LETTER NU",                    # Ν U+039D
        "nu" => "GREEK SMALL LETTER NU",                      # ν U+03BD
        "Xi" => "GREEK CAPITAL LETTER XI",                    # Ξ U+039E
        "xi" => "GREEK SMALL LETTER XI",                      # ξ U+03BE
   "Omicron" => "GREEK CAPITAL LETTER OMICRON",               # Ο U+039F
   "omicron" => "GREEK SMALL LETTER OMICRON",                 # ο U+03BF
        "Pi" => "GREEK CAPITAL LETTER PI",                    # Π U+03A0
       "piv" => "GREEK PI SYMBOL",                            # ϖ U+03D6
        "pi" => "GREEK SMALL LETTER PI",                      # π U+03C0
       "Rho" => "GREEK CAPITAL LETTER RHO",                   # Ρ U+03A1
       "rho" => "GREEK SMALL LETTER RHO",                     # ρ U+03C1
     "sigma" => "GREEK SMALL LETTER SIGMA",                   # σ U+03C3
    "sigmaf" => "GREEK SMALL LETTER FINAL SIGMA",             # ς U+03C2
       "Tau" => "GREEK CAPITAL LETTER TAU",                   # Τ U+03A4
       "tau" => "GREEK SMALL LETTER TAU",                     # τ U+03C4
     "upsih" => "GREEK UPSILON WITH HOOK SYMBOL",             # ϒ U+03D2
   "Upsilon" => "GREEK CAPITAL LETTER UPSILON",               # Υ U+03A5
   "upsilon" => "GREEK SMALL LETTER UPSILON",                 # υ U+03C5
       "Phi" => "GREEK CAPITAL LETTER PHI",                   # Φ U+03A6
       "phi" => "GREEK SMALL LETTER PHI",                     # φ U+03C6
       "Chi" => "GREEK CAPITAL LETTER CHI",                   # Χ U+03A7
       "chi" => "GREEK SMALL LETTER CHI",                     # χ U+03C7
       "Psi" => "GREEK CAPITAL LETTER PSI",                   # Ψ U+03A8
       "psi" => "GREEK SMALL LETTER PSI",                     # ψ U+03C8
     "Omega" => "GREEK CAPITAL LETTER OMEGA",                 # Ω U+03A9
     "omega" => "GREEK SMALL LETTER OMEGA",                   # ω U+03C9

# \p{Format} characters

       "zwj" => "ZERO WIDTH JOINER",                          # ‍ U+200D
      "zwnj" => "ZERO WIDTH NON-JOINER",                      # ‌ U+200C
       "rlm" => "RIGHT-TO-LEFT MARK",                         # ‏ U+200F
       "lrm" => "LEFT-TO-RIGHT MARK",                         # ‎ U+200E

# Various punctuation and symbols in UCA order.  
# None of these is a combining Mark.

     "oline" => "OVERLINE",                                   # ‾ U+203E
      "ensp" => "EN SPACE",                                   #   U+2002
      "nbsp" => "NO-BREAK SPACE",                             #   U+00A0
     "cedil" => "CEDILLA",                                    # ¸ U+00B8
       "uml" => "DIAERESIS",                                  # ¨ U+00A8
     "acute" => "ACUTE ACCENT",                               # ´ U+00B4
     "tilde" => "SMALL TILDE",                                # ˜ U+02DC
      "emsp" => "EM SPACE",                                   #   U+2003
      "macr" => "MACRON",                                     # ¯ U+00AF
    "thinsp" => "THIN SPACE",                                 #   U+2009
       "shy" => "SOFT HYPHEN",                                # ­ U+00AD
     "ndash" => "EN DASH",                                    # – U+2013
     "mdash" => "EM DASH",                                    # — U+2014
     "iexcl" => "INVERTED EXCLAMATION MARK",                  # ¡ U+00A1
    "iquest" => "INVERTED QUESTION MARK",                     # ¿ U+00BF
    "hellip" => "HORIZONTAL ELLIPSIS",                        # … U+2026
    "middot" => "MIDDLE DOT",                                 # · U+00B7
      "apos" => "APOSTROPHE",                                 # ' U+0027
     "lsquo" => "LEFT SINGLE QUOTATION MARK",                 # ‘ U+2018
     "rsquo" => "RIGHT SINGLE QUOTATION MARK",                # ’ U+2019
     "sbquo" => "SINGLE LOW-9 QUOTATION MARK",                # ‚ U+201A
    "lsaquo" => "SINGLE LEFT-POINTING ANGLE QUOTATION MARK",  # ‹ U+2039
    "rsaquo" => "SINGLE RIGHT-POINTING ANGLE QUOTATION MARK", # › U+203A
      "quot" => "QUOTATION MARK",                             # " U+0022
     "ldquo" => "LEFT DOUBLE QUOTATION MARK",                 # “ U+201C
     "rdquo" => "RIGHT DOUBLE QUOTATION MARK",                # ” U+201D
     "bdquo" => "DOUBLE LOW-9 QUOTATION MARK",                # „ U+201E
     "laquo" => "LEFT-POINTING DOUBLE ANGLE QUOTATION MARK",  # « U+00AB
     "raquo" => "RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK", # » U+00BB
      "lang" => "LEFT-POINTING ANGLE BRACKET",                # 〈 U+2329
      "rang" => "RIGHT-POINTING ANGLE BRACKET",               # 〉 U+232A
      "sect" => "SECTION SIGN",                               # § U+00A7
      "para" => "PILCROW SIGN",                               # ¶ U+00B6
      "copy" => "COPYRIGHT SIGN",                             # © U+00A9
       "reg" => "REGISTERED SIGN",                            # ® U+00AE
     "frasl" => "FRACTION SLASH",                             # ⁄ U+2044
       "amp" => "AMPERSAND",                                  # & U+0026
    "permil" => "PER MILLE SIGN",                             # ‰ U+2030
    "dagger" => "DAGGER",                                     # † U+2020
    "Dagger" => "DOUBLE DAGGER",                              # ‡ U+2021
      "bull" => "BULLET",                                     # • U+2022
     "prime" => "PRIME",                                      # ′ U+2032
     "Prime" => "DOUBLE PRIME",                               # ″ U+2033
      "circ" => "MODIFIER LETTER CIRCUMFLEX ACCENT",          # ˆ U+02C6
       "deg" => "DEGREE SIGN",                                # ° U+00B0
    "weierp" => "SCRIPT CAPITAL P",                           # ℘ U+2118
      "larr" => "LEFTWARDS ARROW",                            # ← U+2190
      "rarr" => "RIGHTWARDS ARROW",                           # → U+2192
      "uarr" => "UPWARDS ARROW",                              # ↑ U+2191
      "darr" => "DOWNWARDS ARROW",                            # ↓ U+2193
      "harr" => "LEFT RIGHT ARROW",                           # ↔ U+2194
     "crarr" => "DOWNWARDS ARROW WITH CORNER LEFTWARDS",      # ↵ U+21B5
      "lArr" => "LEFTWARDS DOUBLE ARROW",                     # ⇐ U+21D0
      "uArr" => "UPWARDS DOUBLE ARROW",                       # ⇑ U+21D1
      "rArr" => "RIGHTWARDS DOUBLE ARROW",                    # ⇒ U+21D2
      "dArr" => "DOWNWARDS DOUBLE ARROW",                     # ⇓ U+21D3
      "hArr" => "LEFT RIGHT DOUBLE ARROW",                    # ⇔ U+21D4
    "forall" => "FOR ALL",                                    # ∀ U+2200
      "part" => "PARTIAL DIFFERENTIAL",                       # ∂ U+2202
     "exist" => "THERE EXISTS",                               # ∃ U+2203
     "empty" => "EMPTY SET",                                  # ∅ U+2205
     "nabla" => "NABLA",                                      # ∇ U+2207
      "isin" => "ELEMENT OF",                                 # ∈ U+2208
     "notin" => "NOT AN ELEMENT OF",                          # ∉ U+2209
        "ni" => "CONTAINS AS MEMBER",                         # ∋ U+220B
      "prod" => "N-ARY PRODUCT",                              # ∏ U+220F
       "sum" => "N-ARY SUMMATION",                            # ∑ U+2211
    "plusmn" => "PLUS-MINUS SIGN",                            # ± U+00B1
    "divide" => "DIVISION SIGN",                              # ÷ U+00F7
     "times" => "MULTIPLICATION SIGN",                        # × U+00D7
        "lt" => "LESS-THAN SIGN",                             # < U+003C
        "ne" => "NOT EQUAL TO",                               # ≠ U+2260
        "gt" => "GREATER-THAN SIGN",                          # > U+003E
       "not" => "NOT SIGN",                                   # ¬ U+00AC
    "brvbar" => "BROKEN BAR",                                 # ¦ U+00A6
     "minus" => "MINUS SIGN",                                 # − U+2212
    "lowast" => "ASTERISK OPERATOR",                          # ∗ U+2217
     "radic" => "SQUARE ROOT",                                # √ U+221A
      "prop" => "PROPORTIONAL TO",                            # ∝ U+221D
     "infin" => "INFINITY",                                   # ∞ U+221E
       "ang" => "ANGLE",                                      # ∠ U+2220
       "and" => "LOGICAL AND",                                # ∧ U+2227
        "or" => "LOGICAL OR",                                 # ∨ U+2228
       "cap" => "INTERSECTION",                               # ∩ U+2229
       "cup" => "UNION",                                      # ∪ U+222A
       "int" => "INTEGRAL",                                   # ∫ U+222B
    "there4" => "THEREFORE",                                  # ∴ U+2234
       "sim" => "TILDE OPERATOR",                             # ∼ U+223C
      "cong" => "APPROXIMATELY EQUAL TO",                     # ≅ U+2245
     "asymp" => "ALMOST EQUAL TO",                            # ≈ U+2248
     "equiv" => "IDENTICAL TO",                               # ≡ U+2261
        "le" => "LESS-THAN OR EQUAL TO",                      # ≤ U+2264
        "ge" => "GREATER-THAN OR EQUAL TO",                   # ≥ U+2265
       "sub" => "SUBSET OF",                                  # ⊂ U+2282
      "nsub" => "NOT A SUBSET OF",                            # ⊄ U+2284
       "sup" => "SUPERSET OF",                                # ⊃ U+2283
      "sube" => "SUBSET OF OR EQUAL TO",                      # ⊆ U+2286
      "supe" => "SUPERSET OF OR EQUAL TO",                    # ⊇ U+2287
     "oplus" => "CIRCLED PLUS",                               # ⊕ U+2295
    "otimes" => "CIRCLED TIMES",                              # ⊗ U+2297
      "perp" => "UP TACK",                                    # ⊥ U+22A5
      "sdot" => "DOT OPERATOR",                               # ⋅ U+22C5
     "lceil" => "LEFT CEILING",                               # ⌈ U+2308
     "rceil" => "RIGHT CEILING",                              # ⌉ U+2309
    "lfloor" => "LEFT FLOOR",                                 # ⌊ U+230A
    "rfloor" => "RIGHT FLOOR",                                # ⌋ U+230B
       "loz" => "LOZENGE",                                    # ◊ U+25CA
    "spades" => "BLACK SPADE SUIT",                           # ♠ U+2660
     "clubs" => "BLACK CLUB SUIT",                            # ♣ U+2663
    "hearts" => "BLACK HEART SUIT",                           # ♥ U+2665
     "diams" => "BLACK DIAMOND SUIT",                         # ♦ U+2666

    #
    # override non-combining forms
    #

        "ACUTE"                 => "COMBINING ACUTE ACCENT",
        "acute"                 => "COMBINING ACUTE ACCENT",

        "GRAVE"                 => "COMBINING GRAVE ACCENT",
        "grave"                 => "COMBINING GRAVE ACCENT",

        "CIRCUMFLEX"            => "COMBINING CIRCUMFLEX ACCENT",
        "CIRCUM"                => "COMBINING CIRCUMFLEX ACCENT",
        "CIRC"                  => "COMBINING CIRCUMFLEX ACCENT",
        "circumflex"            => "COMBINING CIRCUMFLEX ACCENT",
        "circum"                => "COMBINING CIRCUMFLEX ACCENT",
        "circ"                  => "COMBINING CIRCUMFLEX ACCENT",

                        # typo protection 

        "COMBINING DIERESIS"    => "COMBINING DIAERESIS",
        "COMBINING DIEARESIS"   => "COMBINING DIAERESIS",
        "DIERESIS"              => "COMBINING DIAERESIS",
        "DIEARESIS"             => "COMBINING DIAERESIS",
        "DIAERESIS"             => "COMBINING DIAERESIS",
        "dieresis"              => "COMBINING DIAERESIS",
        "diearesis"             => "COMBINING DIAERESIS",
        "diaeresis"             => "COMBINING DIAERESIS",
        "diaer"                 => "COMBINING DIAERESIS",
        "diear"                 => "COMBINING DIAERESIS",
        "dier"                  => "COMBINING DIAERESIS",

        "TILDE"                 => "COMBINING TILDE",
        "tilde"                 => "COMBINING TILDE",
        "til"                   => "COMBINING TILDE",

        "CEDILLE"               => "COMBINING CEDILLA",
        "CEDILLA"               => "COMBINING CEDILLA",
        "CEDIL"                 => "COMBINING CEDILLA",
        "cedille"               => "COMBINING CEDILLA",
        "cedilla"               => "COMBINING CEDILLA",
        "cedil"                 => "COMBINING CEDILLA",

        "MACRON"                => "COMBINING MACRON",
        "macron"                => "COMBINING MACRON",

	"CARON"			=> "COMBINING CARON",
	"caron"			=> "COMBINING CARON",

    # 
    # special glyphs
    # 

	# Hawaiʻi, aloha ʻoe
    	"okina"			=> "MODIFIER LETTER TURNED COMMA",

        # * transliteration of Arabic ain (voiced pharyngeal fricative)
        "ain"                   => "MODIFIER LETTER LEFT HALF RING",

        "stress"                => "MODIFIER LETTER VERTICAL LINE",
        "stress1"               => "MODIFIER LETTER VERTICAL LINE",
        "primary_stress"        => "MODIFIER LETTER VERTICAL LINE",
        "pstress"               => "MODIFIER LETTER VERTICAL LINE",
        "pstr"                  => "MODIFIER LETTER VERTICAL LINE",

        "secondary_stress"      => "MODIFIER LETTER LOW VERTICAL LINE",
        "stress2"               => "MODIFIER LETTER LOW VERTICAL LINE",
        "sstress"               => "MODIFIER LETTER LOW VERTICAL LINE",
        "sstr"                  => "MODIFIER LETTER LOW VERTICAL LINE",

    # 
    # classification glyphs
    # 

        # OBSOLETE
        "obs"                   => "DAGGER",
        "obsolete"              => "DAGGER",
        "dagger"                => "DAGGER",

        # ALIEN
        "ali"                   => "DOUBLE VERTICAL LINE",
        "alien"                 => "DOUBLE VERTICAL LINE",
        "foreign"               => "DOUBLE VERTICAL LINE",
        "unassimilated"         => "DOUBLE VERTICAL LINE",

        # ERRONEOUS
        ## "err"                => "CURVED STEM PARAGRAPH SIGN ORNAMENT",

        # CATACHRESTIC
        "spu"                   => "PILCROW SIGN",
        "spurious"              => "PILCROW SIGN",
        "err"                   => "PILCROW SIGN",
        "error"                 => "PILCROW SIGN",
        "erroneous"             => "PILCROW SIGN",
        "catachrestic"          => "PILCROW SIGN",
        "catach"                => "PILCROW SIGN",
        "cata"                  => "PILCROW SIGN",

        # CROSS REFERENCE
        "xref"                  => "MULTIPLICATION SIGN",

        # ILLUSTRATIVE
        "ill"                   => "SINGLE RIGHT-POINTING ANGLE QUOTATION MARK",
        "illus"                 => "SINGLE RIGHT-POINTING ANGLE QUOTATION MARK",
        "illustrative"          => "SINGLE RIGHT-POINTING ANGLE QUOTATION MARK",

);
