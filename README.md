# semver-command

[![CI Status](https://github.com/mbarbin/semver-command/workflows/ci/badge.svg)](https://github.com/mbarbin/semver-command/actions/workflows/ci.yml)

:warning: This repository is now a public archive.

I started working on this repository with the goal of having a user-friend CLI to help me validate and compare opam package versions I intended to assign to my OCaml packages. However, I learned since that:

1. opam package versions do not use semver (https://opam.ocaml.org/doc/Manual.html#Version-ordering):
> Version Ordering follows the basics of the Debian definition.

2. The functionality I was looking for is already or will be in opam:

- From OCaml, using `OpamVersionCompare`
- From the command line using [`opam admin compare-versions`](https://github.com/ocaml/opam/pull/6124)

These points makes this repository obsolete.
