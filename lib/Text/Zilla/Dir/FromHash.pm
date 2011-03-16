package Text::Zilla::Dir::FromHash;
BEGIN {
  $Text::Zilla::Dir::FromHash::AUTHORITY = 'cpan:GETTY';
}
BEGIN {
  $Text::Zilla::Dir::FromHash::VERSION = '0.003';
}
# ABSTRACT: Generate a directory based on a hash structure
use Text::Zilla;
use Text::Zilla::Dir;
use Text::Zilla::File;

tzil_dir;

around BUILDARGS => sub {
	my $orig  = shift;
	my $class = shift;
	my $hash = shift;

	die __PACKAGE__." requires a hashref as first parameter" if ref $hash ne 'HASH';

	return $class->$orig( tzil_dir_entries => $class->generate_tzil_entries($hash) );
};

sub generate_tzil_entries {
	my $class = shift;
	my $hash = shift;
	my %result;
	for (keys %{$hash}) {
		my $ref = ref $hash->{$_};
		if ($ref eq 'HASH') {
			$result{$_} = Text::Zilla::Dir::FromHash->new($hash->{$_});
		} else {
			$result{$_} = Text::Zilla::File->new(scalar ($hash->{$_}));
		}
	}
	return \%result;
}

1;
__END__
=pod

=head1 NAME

Text::Zilla::Dir::FromHash - Generate a directory based on a hash structure

=head1 VERSION

version 0.003

=head1 AUTHOR

Torsten Raudssus <torsten@raudssus.de>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

