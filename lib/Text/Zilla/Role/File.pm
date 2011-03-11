package Text::Zilla::Role::File;
BEGIN {
  $Text::Zilla::Role::File::AUTHORITY = 'cpan:GETTY';
}
BEGIN {
  $Text::Zilla::Role::File::VERSION = '0.002';
}
# ABSTRACT: Required role for all files
use Moose::Role;

with qw(
	Text::Zilla::Role::Rights
);

excludes 'Text::Zilla::Role::Dir';

requires 'tzil_content';

sub tzil_write_to {
	my ( $self, $filename ) = @_;
	die __PACKAGE__." dont getting a filename on tzil_write_to" if !$filename;
	open(TARGET, ">:utf8", $filename) or die __PACKAGE__." cant write to ".$filename;
	print TARGET $self->tzil_content;
	return close TARGET;
}

1;
__END__
=pod

=head1 NAME

Text::Zilla::Role::File - Required role for all files

=head1 VERSION

version 0.002

=head1 AUTHOR

Torsten Raudssus <torsten@raudssus.de>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

