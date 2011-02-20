package Text::Markup::HTML;

use 5.8.1;
use strict;

our $VERSION = '0.10';

sub parser {
    my ($file, $opts) = @_;
    open my $fh, '<:raw', $file or die "Cannot open $file: $!\n";
    local $/;
    return <$fh>;
}

1;
__END__

=head1 Name

Text::Markup::HTML - HTML parse for Text::Markup

=head1 Synopsis

  use Text::Markup;
  my $html = Text::Markup->new->parse(file => 'hellow.html');

=head1 Description

This is the L<HTML|http://whatwg.org/html/> parser for L<Text::Markup>. All it
does is read in the HTML file and return it as a string. It recognizes files
with the following extensions as Markdown:

=over

=item F<.html>

=item F<.htm>

=item F<.xhtml>

=item F<.xhtm>

=back

=head1 Author

David E. Wheeler <david@justatheory.com>

=head1 Copyright and License

Copyright (c) 2011 David E. Wheeler. Some Rights Reserved.

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.

=cut
