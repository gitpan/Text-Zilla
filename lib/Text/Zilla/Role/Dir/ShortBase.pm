package Text::Zilla::Role::Dir::ShortBase;
BEGIN {
  $Text::Zilla::Role::Dir::ShortBase::AUTHORITY = 'cpan:GETTY';
}
BEGIN {
  $Text::Zilla::Role::Dir::ShortBase::VERSION = '0.002';
}
# ABSTRACT: Minimum implementation for a dir with shorter function names
use Moose::Role;

with qw(
	Text::Zilla::Role::Dir
);

sub parent { shift->tzil_parent(@_) }
sub has_parent { shift->has_tzil_parent(@_) }

sub entries { shift->tzil_dir_entries(@_) }
sub set_entry { shift->tzil_set_entry(@_) }
sub get_entry { shift->tzil_get_entry(@_) }
sub has_entries { shift->tzil_has_entries(@_) }
sub count_entries { shift->tzil_count_entries(@_) }
sub delete_entry { shift->tzil_delete_entry(@_) }
sub to { shift->tzil_to }

1;
__END__
=pod

=head1 NAME

Text::Zilla::Role::Dir::ShortBase - Minimum implementation for a dir with shorter function names

=head1 VERSION

version 0.002

=head1 AUTHOR

Torsten Raudssus <torsten@raudssus.de>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

