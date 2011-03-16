package Text::Zilla::Role::Stash;
BEGIN {
  $Text::Zilla::Role::Stash::AUTHORITY = 'cpan:GETTY';
}
BEGIN {
  $Text::Zilla::Role::Stash::VERSION = '0.003';
}
# ABSTRACT: Something with a stash ;)
use Moose::Role;

has tzil_stash => (
	traits    => ['Hash'],
	is        => 'rw',
	isa       => 'HashRef',
	default   => sub {{}},
	handles   => {
		tzil_stash_set => 'set',
		tzil_stash_get => 'get',
		tzil_stash_empty => 'is_empty',
		tzil_stash_count => 'count',
		tzil_stash_delete => 'delete',
	},
);

sub parent_tzil_stash {
	my ( $self, %new_stash ) = @_;
	for (keys %new_stash) {
		$self->tzil_stash_set($_,$new_stash{$_});
	}
}

1;
__END__
=pod

=head1 NAME

Text::Zilla::Role::Stash - Something with a stash ;)

=head1 VERSION

version 0.003

=head1 AUTHOR

Torsten Raudssus <torsten@raudssus.de>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

