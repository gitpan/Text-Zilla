package Text::Zilla::Role::File::Base;
BEGIN {
  $Text::Zilla::Role::File::Base::AUTHORITY = 'cpan:GETTY';
}
BEGIN {
  $Text::Zilla::Role::File::Base::VERSION = '0.002';
}
# ABSTRACT: Minimum implementation for a file
use Moose::Role;

with qw(
	Text::Zilla::Role::File
);

1;
__END__
=pod

=head1 NAME

Text::Zilla::Role::File::Base - Minimum implementation for a file

=head1 VERSION

version 0.002

=head1 AUTHOR

Torsten Raudssus <torsten@raudssus.de>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

