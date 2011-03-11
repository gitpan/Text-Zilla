package Text::Zilla::Role::Rights;
BEGIN {
  $Text::Zilla::Role::Rights::AUTHORITY = 'cpan:GETTY';
}
BEGIN {
  $Text::Zilla::Role::Rights::VERSION = '0.001';
}
# ABSTRACT: Role for the rights of a file
use Moose::Role;

sub tzil_r { shift->tzil_is_readable(@_) }
has tzil_is_readable => (
	is => 'ro',
	isa => 'Bool',
	default => sub { 1 },
);

sub tzil_w { shift->tzil_is_writeable(@_) }
has tzil_is_writeable => (
	is => 'ro',
	isa => 'Bool',
	default => sub { 0 },
);

sub tzil_x { shift->tzil_is_executable(@_) }
has tzil_is_executable => (
	is => 'ro',
	isa => 'Bool',
	default => sub { 0 },
);

1;
__END__
=pod

=head1 NAME

Text::Zilla::Role::Rights - Role for the rights of a file

=head1 VERSION

version 0.001

=head1 AUTHOR

Torsten Raudssus <torsten@raudssus.de>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

