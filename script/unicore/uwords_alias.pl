###############################################################
#
# File "uwords_alias.pl" containing aliases for use with 
#
#   use charnames ":uwords";
#
# (1) Override names of common NON-combining code points
#     because these do not occur in the words.utf8 file.
#
# (2) Provide aliases for special sigils used by the words.utf8 file.
# 
###############################################################

use utf8;
use strict;
use warnings qw[ FATAL all ];

# "return" is to quiet perl -wc

return (

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

                        # typo protection :)

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
