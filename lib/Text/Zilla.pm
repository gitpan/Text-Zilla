package Text::Zilla;
BEGIN {
  $Text::Zilla::AUTHORITY = 'cpan:GETTY';
}
BEGIN {
  $Text::Zilla::VERSION = '0.002';
}
# ABSTRACT: Generating files as easy as possible

use Moose ();
use Moose::Exporter;

my ( $import, $unimport, $init_meta ) = Moose::Exporter->setup_import_methods(
	with_meta => [ 'tzil_file', 'tzil_dir' ],
	also      => 'Moose',
	class_metaroles => {
		class       => [ 'Text::Zilla::Role::MetaClass' ],
	},
);

sub init_meta {
	my ( $class, %args ) = @_;
	my $for = $args{for_class};
	Moose->init_meta( for_class => $for );
	goto $init_meta;
}

sub tzil_file {
	my ( $meta, @file_class_names ) = @_;
	$meta->tzil_type('file');
	push @file_class_names, 'ShortBase' if !@file_class_names;
	for (@file_class_names) {
		my $file_class = __PACKAGE__.'::Role::File::'.$_;
		Moose::with( $meta, $file_class );
	}
}

sub tzil_dir {
	my ( $meta, @dir_class_names ) = @_;
	$meta->tzil_type('dir');
	push @dir_class_names, 'ShortBase' if !@dir_class_names;
	for (@dir_class_names) {
		my $dir_class = __PACKAGE__.'::Role::Dir::'.$_;
		Moose::with( $meta, $dir_class );
	}
}

1;


__END__
=pod

=head1 NAME

Text::Zilla - Generating files as easy as possible

=head1 VERSION

version 0.002

=head1 SYNOPSIS

  use Text::Zilla::File;
  use Text::Zilla::Dir;

  my $root = Text::Zilla::Dir->new;
  my $test_txt = Text::Zilla::File->new('This is a test');
  my $testdir = Text::Zilla::Dir->new;
  my $othertest_txt = Text::Zilla::File->new('More tests!');
  $testdir->tzil_set_entry('othertest.txt',$othertest_txt);
  $root->tzil_set_entry('testdir',$testdir);
  $root->tzil_set_entry('test.txt',$test_txt);

  $root->tzil_to('.');

=head1 DESCRIPTION

B<This package is still in development - API may change.>

This distribution tries to make a norm for generating files of any kind. Its for generating specific files like a /etc directory of a unix host, but should also be able to be used for generating 100.000 HTML files for a static webpage.

=head1 SEE ALSO

=over 4

=item *

L<Text::Zilla::Dir>

=item *

L<Text::Zilla::Types>

=item *

L<Text::Zilla::Role::Dir::Stash>

=item *

L<Text::Zilla::Role::Dir::Base>

=item *

L<Text::Zilla::Role::Dir>

=item *

L<Text::Zilla::Role::File::Base>

=item *

L<Text::Zilla::Role::Rights>

=item *

L<Text::Zilla::Role::File>

=item *

L<Text::Zilla::Role::MetaClass>

=item *

L<Text::Zilla::File>

=back

=head1 SUPPORT

IRC

  Join #textzilla on irc.perl.org.

Repository

  http://github.com/Getty/p5-text-zilla
  Pull request and additional contributors are welcome

Issue Tracker

  http://github.com/Getty/p5-text-zilla/issues

=head1 AUTHOR

Torsten Raudssus <torsten@raudssus.de>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

