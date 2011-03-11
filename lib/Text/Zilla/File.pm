package Text::Zilla::File;
BEGIN {
  $Text::Zilla::File::AUTHORITY = 'cpan:GETTY';
}
BEGIN {
  $Text::Zilla::File::VERSION = '0.002';
}
# ABSTRACT: A base file
use Text::Zilla;

has content => (
	is => 'rw',
	isa => 'Str',
	default => sub {""},
);

tzil_file;

around BUILDARGS => sub {
	my $orig  = shift;
	my $class = shift;

	if ( @_ == 1 && !ref $_[0] ) {
		return $class->$orig( content => $_[0] );
	} else {
		return $class->$orig(@_);
	}
};

1;
__END__
=pod

=head1 NAME

Text::Zilla::File - A base file

=head1 VERSION

version 0.002

=head1 AUTHOR

Torsten Raudssus <torsten@raudssus.de>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

