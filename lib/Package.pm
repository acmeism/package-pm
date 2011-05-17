##
# name:      Package
# abstract:  Acmeist Module Packaging Toolchain
# author:    Ingy döt Net <ingy@cpan.org>
# copyright: 2011
# license:   perl

package Package;
use 5.008003;

our $VERSION = '0.10';

1;

=head1 SYNOPSIS

From the command line:

    > pkg new --perl=package --module=Foo::Bar foo-bar-pm

From a Makefile.PL:

    use inc::Package;

NOTE: In this package, C<Package>, the term "package" is used in the Acmeist
sense; a collection of software, doc, tests and an installer, all bundled up
into a nice little package. It does not refer to the Perl, in memory,
namespacing keyword: C<package>.

=head1 DESCRIPTION

Package is a toolchain for packaging module distributions. Not just Perl
modules, but modules from many different languages.

This Perl module/distribtion is a little bit overloaded. It supports 3
distinct things, outlined below.

NOTE: I did consider releasing these as 3 separate packages, and may do so in
the future, but for now it seems (slightly awkward, yet) best to have them all
in the L<Package> distribution.

=head2 Package Creation and Maintenance

This package installs a command line tool called C<pkg>, that can be used to
create and maintain open source module packages in several programming
languages. See L<pkg> and L<Package::Command> for full details.

=head2 A Replacement For inc::Module::Install

This Perl package lets you say:

    use inc::Package;

in your C<Makefile.PL>, instead of:

    use inc::Module::Install;

This does everything Module::Install does and more. It does it in a cleaner
way, and solves many of the problems that Module::Install users have worked
around in various, ugly ways.

See L<inc::Package> for details.

=head2 Module::Install::Package

This Module::Install plugin does all the heavy hitting for C<inc::Package>. It
attempts to fix all the problems of Module::Install, in one go. Yet is really
just a Module::Install plugin, like any other, and can be used with or without
C<inc::Package>.

=head1 STATUS

This is a early, "proving concepts", release. Keep out.
