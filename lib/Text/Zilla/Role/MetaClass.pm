package Text::Zilla::Role::MetaClass;
BEGIN {
  $Text::Zilla::Role::MetaClass::AUTHORITY = 'cpan:GETTY';
}
BEGIN {
  $Text::Zilla::Role::MetaClass::VERSION = '0.001';
}
# ABSTRACT: I'm a little teapot, short and stout. Here is my handle, here is my spout
use Moose::Role;

has tzil_type => (
	is => 'rw',
	isa => 'Str',
	predicate => 'has_tzil_type',
);

before tzil_type => sub {
	my ( $self, $new_type ) = @_;
	return if ( !$new_type or ( $self->has_tzil_type and $new_type eq $self->tzil_type ) );
	die $self->name." already is of type ".$self->tzil_type if $self->has_tzil_type;
};

1;
__END__
=pod

=head1 NAME

Text::Zilla::Role::MetaClass - I'm a little teapot, short and stout. Here is my handle, here is my spout

=head1 VERSION

version 0.001

=head1 AUTHOR

Torsten Raudssus <torsten@raudssus.de>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

