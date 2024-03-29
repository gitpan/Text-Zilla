package Text::Zilla::Role::File::ShortBase;
BEGIN {
  $Text::Zilla::Role::File::ShortBase::AUTHORITY = 'cpan:GETTY';
}
BEGIN {
  $Text::Zilla::Role::File::ShortBase::VERSION = '0.003';
}
# ABSTRACT: Minimum implementation for a file with shorter function names
use Moose::Role;

with qw(
	Text::Zilla::Role::File
);

requires 'content';

sub tzil_content { shift->content(@_) }
sub write_to { shift->tzil_write_to(@_) }

1;

__END__
=pod

=head1 NAME

Text::Zilla::Role::File::ShortBase - Minimum implementation for a file with shorter function names

=head1 VERSION

version 0.003

=head1 AUTHOR

Torsten Raudssus <torsten@raudssus.de>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

