package Text::Zilla::Role::Dir::Stash;
BEGIN {
  $Text::Zilla::Role::Dir::Stash::AUTHORITY = 'cpan:GETTY';
}
BEGIN {
  $Text::Zilla::Role::Dir::Stash::VERSION = '0.001';
}
# ABSTRACT: Directory which has a stash
use Moose::Role;

with qw(
	Text::Zilla::Role::Dir::Base
);

has tzil_stash => (
	traits    => ['Hash'],
	is        => 'ro',
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

after tzil_set_entry => sub {
	my ( $self, $name, $obj ) = @_;
	if ($obj->does('Text::Zilla::Role::Dir::Stash')) {
		my %new_stash = %{$obj->tzil_stash};
		$obj->tzil_stash(\%new_stash);
	}
};

1;
__END__
=pod

=head1 NAME

Text::Zilla::Role::Dir::Stash - Directory which has a stash

=head1 VERSION

version 0.001

=head1 AUTHOR

Torsten Raudssus <torsten@raudssus.de>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

