package Text::Zilla::Role::Dir::Base;
BEGIN {
  $Text::Zilla::Role::Dir::Base::AUTHORITY = 'cpan:GETTY';
}
BEGIN {
  $Text::Zilla::Role::Dir::Base::VERSION = '0.001';
}
# ABSTRACT: Minimum implementation for a dir
use Moose::Role;

with qw(
	Text::Zilla::Role::Dir
);

1;
__END__
=pod

=head1 NAME

Text::Zilla::Role::Dir::Base - Minimum implementation for a dir

=head1 VERSION

version 0.001

=head1 AUTHOR

Torsten Raudssus <torsten@raudssus.de>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

