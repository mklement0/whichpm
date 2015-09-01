[![npm version](https://img.shields.io/npm/v/whichpm.svg)](https://npmjs.com/package/whichpm) [![license](https://img.shields.io/npm/l/whichpm.svg)](https://github.com/mklement0/whichpm/blob/master/LICENSE.md)

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

**Contents**

- [whichpm &mdash; introduction](#whichpm-&mdash-introduction)
- [Examples](#examples)
- [Installation](#installation)
  - [Installation from the npm registry](#installation-from-the-npm-registry)
  - [Manual installation (OSX and Linux)](#manual-installation-osx-and-linux)
- [Usage](#usage)
- [License](#license)
  - [Acknowledgements](#acknowledgements)
  - [npm dependencies](#npm-dependencies)
- [Changelog](#changelog)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# whichpm &mdash; introduction

`whichpm` is a cross-platform CLI that locates installed [Perl](https://www.perl.org/) modules,
and optionally reports information about them, including detection of accidental duplicates.

Analogous to how the common `which` Unix utility locates binaries by their filename,
`whichpm` locates Perl modules by their module (package) name.

# Examples

```nohighlight
# Locate the Data::Dumper module.
$ whichpm Data::Dumper
/usr/lib/perl/5.18/Data/Dumper.pm

# Locate the Data::Dumper module, and also print
# version information and core-module status.
$ whichpm -v Data::Dumper
Data::Dumper    2.145   core>=5.005 /usr/lib/perl/5.18/Data/Dumper.pm

# Locate the Data::Dumper module and open it in your system's default text
# editor.
$ whichpm -e Data::Dumper

# Look for accidental duplicates of the Foo::Bar module.
# Normally, only 1 path should be returned.
$ whichpm -a Foo::Bar
/usr/lib/perl/5.18/Foo/Bar.pm
./Foo/Bar.pm

# Print the paths of all installed modules.
$ whichpm -a

```

# Installation

**Supported platforms and prerequisites**

**Linux**, **OSX**, and **Windows**, with **Perl v5.4.50 or higher** installed.

## Installation from the npm registry

With [Node.js](http://nodejs.org/) or [io.js](https://iojs.org/) installed, install [the package](https://www.npmjs.com/package/whichpm) as follows:

    [sudo] npm install whichpm -g

**Note**:

* Whether you need `sudo` depends on how you installed Node.js / io.js and whether you've [changed permissions later](https://docs.npmjs.com/getting-started/fixing-npm-permissions); if you get an `EACCES` error, try again with `sudo`.
* The `-g` ensures [_global_ installation](https://docs.npmjs.com/getting-started/installing-npm-packages-globally) and is needed to put `whichpm` in your system's `$PATH`.

## Manual installation (OSX and Linux)

* Download [the CLI](https://raw.githubusercontent.com/mklement0/whichpm/stable/bin/whichpm) as `whichpm`.
* Make it executable with `chmod +x whichpm`.
* Move it or symlink it to a folder in your `$PATH`, such as `/usr/local/bin` (OSX) or `/usr/bin` (Linux).

# Usage

Find brief usage information below; for complete documentation, run `whichpm --man` or read the [manual online](doc/whichpm.md).

<!-- DO NOT EDIT THE FENCED CODE BLOCK and RETAIN THIS COMMENT: The fenced code block below is updated by `make update-readme/release` with CLI usage information. -->

```nohighlight
$ whichpm --help

 Prints the filesystem paths of the specified Perl modules, if installed.

    whichpm    [-v] [-q] [-e] <module_name>...
    whichpm -a [-v] [-q] [-e] [<module_name>...]

    -a ... lists all installed module files / all module files matching  
           the specified name(s) (checks for accidental duplicates)
    -v ... verbose mode: also prints name, version, core-module status
    -q ... suppresses warnings
    -e ... opens modules in default text editor

 Standard options: --help, --man, --version, --home
```

<!-- DO NOT EDIT THE NEXT CHAPTER and RETAIN THIS COMMENT: The next chapter is updated by `make update-readme/release` with the contents of 'LICENSE.md'. ALSO, LEAVE AT LEAST 1 BLANK LINE AFTER THIS COMMENT. -->

# License

Copyright (c) 2015 Michael Klement <mklement0@gmail.com> (http://same2u.net), released under the [MIT license](https://spdx.org/licenses/MIT#licenseText).

## Acknowledgements

This project gratefully depends on the following open-source components, according to the terms of their respective licenses.

[npm](https://www.npmjs.com/) dependencies below have optional suffixes denoting the type of dependency; the *absence* of a suffix denotes a required *run-time* dependency: `(D)` denotes a *development-time-only* dependency, `(O)` an *optional* dependency, and `(P)` a *peer* dependency.

<!-- DO NOT EDIT THE NEXT CHAPTER and RETAIN THIS COMMENT: The next chapter is updated by `make update-readme/release` with the dependencies from 'package.json'. ALSO, LEAVE AT LEAST 1 BLANK LINE AFTER THIS COMMENT. -->

## npm dependencies

* [doctoc (D)](https://github.com/thlorenz/doctoc)
* [json (D)](https://github.com/trentm/json)
* [replace (D)](https://github.com/harthur/replace)
* [semver (D)](https://github.com/npm/node-semver#readme)
* [tap (D)](https://github.com/isaacs/node-tap)
* [urchin (D)](https://github.com/tlevine/urchin)

<!-- DO NOT EDIT THE NEXT CHAPTER and RETAIN THIS COMMENT: The next chapter is updated by `make update-readme/release` with the contents of 'CHANGELOG.md'. ALSO, LEAVE AT LEAST 1 BLANK LINE AFTER THIS COMMENT. -->

# Changelog

Versioning complies with [semantic versioning (semver)](http://semver.org/).

<!-- NOTE: An entry template for a new version is automatically added each time `make version` is called. Fill in changes afterwards. -->

* **v0.1.0** (2015-09-01):
  * Initial release.
