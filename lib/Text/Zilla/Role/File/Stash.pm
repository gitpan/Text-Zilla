package Text::Zilla::Role::File::Stash;
BEGIN {
  $Text::Zilla::Role::File::Stash::AUTHORITY = 'cpan:GETTY';
}
BEGIN {
  $Text::Zilla::Role::File::Stash::VERSION = '0.003';
}
# ABSTRACT: File which has a stash
use Moose::Role;

with qw(
	Text::Zilla::Role::File::Base
	Text::Zilla::Role::Stash
);

1;
__END__
=pod

=head1 NAME

Text::Zilla::Role::File::Stash - File which has a stash

=head1 VERSION

version 0.003

=head1 AUTHOR

Torsten Raudssus <torsten@raudssus.de>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

