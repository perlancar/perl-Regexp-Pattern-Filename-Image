package Regexp::Pattern::Filename::Image;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;
#use utf8;

use Filename::Image ();

our %RE;

$RE{filename_image} = {
    summary => 'Image filename',
    pat => $Filename::Image::RE,
    tags => ['anchored'],
    examples => [
        {str=>'foo', matches=>0, summary=>'No extension'},
        {str=>'jpg', matches=>0, summary=>'Not an extension'},
        {str=>'foo.jpg', matches=>1},
        {str=>'foo bar.GIF', matches=>1, summary=>'Case insensitive'},
        {str=>'foo.GIF is the file', matches=>0, summary=>'Regex is anchored'},
        {str=>'foo.mp3', matches=>0},
    ],
};

1;
# ABSTRACT: Image filename

=head1 DESCRIPTION

This is a L<Regexp::Pattern> wrapper for L<Filename::Image>.


=head1 SEE ALSO

L<Regexp::Pattern>

L<Filename::Image>
