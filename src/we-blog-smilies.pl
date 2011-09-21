#!/usr/bin/env perl

# we-blog-smilies - Convert all smiley (emoticon) text tags to pictures

# Copyright (c) 2011 Ton Kersten

# This program is  free software:  you can redistribute it and/or modify it
# under  the terms  of the  GNU General Public License  as published by the
# Free Software Foundation, version 3 of the License.
#
# This program  is  distributed  in the hope  that it will  be useful,  but
# WITHOUT  ANY WARRANTY;  without  even the implied  warranty of MERCHANTA-
# BILITY  or  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
# License for more details.
#
# You should have received a copy of the  GNU General Public License  along
# with this program. If not, see <http://www.gnu.org/licenses/>.

use strict;
use warnings;

# General script information:
use constant NAME    => basename($0, '.pl');        # Script name.
use constant VERSION => '0.7';                      # Script version.

my $smurl = '<img class="smiley" alt="smiley" src="/images/smilies';

my %smilies = (
	':-{0,1}\)'   => 'regular_smile.gif',	':-{0,1}D'    => 'teeth_smile.gif',
	':-{0,1}O'    => 'omg_smile.gif',	':-{0,1}P'    => 'tongue_smile.gif',
	';-{0,1}\)'   => 'wink_smile.gif',	':-{0,1}\('   => 'sad_smile.gif',
	':-{0,1}S'    => 'confused_smile.gif',	':-{0,1}\|'   => 'what_smile.gif',
	':\'\('       => 'cry_smile.gif',	':-{0,1}\$'   => 'red_smile.gif',
	'\(H\)'       => 'shades_smile.gif',	':-{0,1}\@'   => 'angry_smile.gif',
	'\(A\)'       => 'angel_smile.gif',	'\(6\)'       => 'devil_smile.gif',
	':-{0,1}\#'   => '47_47.gif',		'8o\|'        => '48_48.gif',
	'8-{0,1}\|'   => '49_49.gif',		'\^o\)'       => '50_50.gif',
	':-{0,1}\*'   => '51_51.gif',		'\+o\('       => '52_52.gif',
	':\^\)'       => '71_71.gif',		'\*-\)'       => '72_72.gif',
	'\<:o\)'      => '74_74.gif',		'8-\)'        => '75_75.gif',
	'\|-{0,1}\)'  => '77_77.gif',		'\(C\)'       => 'coffee.gif',
	'\(Y\)'       => 'thumbs_up.gif',	'\(N\)'       => 'thumbs_down.gif',
	'\(B\)'       => 'beer_mug.gif',	'\(D\)'       => 'martini.gif',
	'\(X\)'       => 'girl.gif',		'\(Z\)'       => 'guy.gif',
	'\(\{\)'      => 'guy_hug.gif',		'\(\}\)'      => 'girl_hug.gif',
	'\:-{0,1}\['  => 'bat.gif',		'\(\^\)'      => 'cake.gif',
	'\(L\)'       => 'heart.gif',		'\(U\)'       => 'broken_heart.gif',
	'\(K\)'       => 'kiss.gif',		'\(G\)'       => 'present.gif',
	'\(F\)'       => 'rose.gif',		'\(W\)'       => 'wilted_rose.gif',
	'\(P\)'       => 'camera.gif',		'\(\~\)'      => 'film.gif',
	'\(\@\)'      => 'cat.gif',		'\(\&\)'      => 'dog.gif',
	'\(T\)'       => 'phone.gif',		'\(I\)'       => 'lightbulb.gif',
	'\(8\)'       => 'note.gif',		'\(S\)'       => 'moon.gif',
	'\(\*\)'      => 'star.gif',		'\(E\)'       => 'envelope.gif',
	'\(O\)'       => 'clock.gif',		'\(sn\)'      => '53_53.gif',
);

while ( <> )
{
	my $tag;
	foreach $tag (keys %smilies)
	{
		s!$tag!$smurl/$smilies{$tag}\" />!g;
	}
	print;
}
print "\n";

__END__

=head1 NAME

# we-blog-smilies - Convert all smiley (emoticon) text tags to pictures

=head1 SYNOPSIS

Bcat <file> | <we-blog-smilies>

=head1 DESCRIPTION

B<we-blog-smilies> converts all smiley (emoticon) text tags to pictures

=head1 BUGS

To report a bug or to send a patch, please, add a new issue to the bug
tracker at <http://code.google.com/p/we-blog/issues/>, or visit the
discussion group at <http://groups.google.com/group/we-blog/>.

=head1 COPYRIGHT

Copyright (c) 2011 Ton Kersten

This program is free software; see the source for copying conditions. It is
distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.

=cut
