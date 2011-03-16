package Text::Zilla::Role::Dir::Stash;
BEGIN {
  $Text::Zilla::Role::Dir::Stash::AUTHORITY = 'cpan:GETTY';
}
BEGIN {
  $Text::Zilla::Role::Dir::Stash::VERSION = '0.003';
}
# ABSTRACT: Directory which has a stash
use Moose::Role;

with qw(
	Text::Zilla::Role::Dir::Base
	Text::Zilla::Role::Stash
);

before tzil_to => sub {
	my ( $self ) = @_;
	for (keys %{$self->tzil_dir_entries}) {
		my $entry = $self->tzil_get_entry($_);
		if ($entry->does('Text::Zilla::Role::Stash')) {
			$entry->parent_tzil_stash(%{$self->tzil_stash});
		}
	}
};

1;
__END__
=pod

=head1 NAME

Text::Zilla::Role::Dir::Stash - Directory which has a stash

=head1 VERSION

version 0.003

=head1 AUTHOR

Torsten Raudssus <torsten@raudssus.de>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

