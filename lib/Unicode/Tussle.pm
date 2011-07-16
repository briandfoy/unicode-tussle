package Unicode::Tussle;
use vars qw( $VERSION );

$VERSION = '1.01';

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
