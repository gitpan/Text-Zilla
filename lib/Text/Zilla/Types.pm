package Text::Zilla::Types;
BEGIN {
  $Text::Zilla::Types::AUTHORITY = 'cpan:GETTY';
}
BEGIN {
  $Text::Zilla::Types::VERSION = '0.002';
}
# ABSTRACT: Type library for Text::Zilla

use MooseX::Types -declare => [qw(
	TzilFile
	TzilDir
	TzilFileOrDir
	TzilDirEntries
)];

use MooseX::Types::Moose qw/HashRef/;

role_type TzilFile, { role => 'Text::Zilla::Role::File' };
role_type TzilDir, { role => 'Text::Zilla::Role::Dir' };

subtype TzilFileOrDir, as TzilFile|TzilDir;

subtype TzilDirEntries, as HashRef[TzilFileOrDir];

1;
__END__
=pod

=head1 NAME

Text::Zilla::Types - Type library for Text::Zilla

=head1 VERSION

version 0.002

=head1 AUTHOR

Torsten Raudssus <torsten@raudssus.de>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

