# Memento kickstarter plugin

This plugin lets you use [Memento](https://www.bmeme.com/memento) to start a new development project from a list of templates.

[![Maintained? Yes](https://img.shields.io/badge/Maintained%3F-Yes-success)](https://github.com/bmeme/memento-kickstarter) ![GitHub last commit](https://img.shields.io/github/last-commit/bmeme/memento-kickstarter) [![GitHub issues](https://img.shields.io/github/issues/bmeme/memento-kickstarter)](https://github.com/bmeme/memento-kickstarter/issues) ![GitHub top language](https://img.shields.io/github/languages/top/bmeme/memento-kickstarter) ![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/bmeme/memento-kickstarter)


## Installation

To install and update this plugin you can use [Memento Plugins](https://github.com/bmeme/memento-plugins).

```
$ memento plugins add git@github.com:bmeme/memento-kickstarter.git memento-kickstarter
```

```
$ memento plugins upgrade memento-kickstarter
```

Alternatively, clone the repository inside the directory `Memento/Tool/custom` of your Memento installation.

```
cd Memento/Tool/custom
```
```
git clone https://github.com/bmeme/memento-kickstarter.git
```

## Usage

```
memento kickstarter create
```

### Available project templates

| Kickstarter | Project repository | Note |
| - | - | - |
| NodeJS | [Docker NodeJS Kickstarter](https://github.com/bmeme/docker-nodejs-kickstarter.git) |  |
| Java | [Docker Java Kickstarter](https://github.com/bmeme/docker-java-kickstarter) | |
| Drupal | Bmeme Drupal Kickstarter | `private` |
| Perl | [Docker Perl Kickstarter](https://github.com/bmeme/docker-perl-kickstarter) | |
| Python | [Python Kickstarter](https://github.com/bmeme/docker-python-kickstarter)| | 
| GatsbyJS | [GatsbyJS Kickstarter](https://github.com/bmeme/gatsby-dev.git) | `unmaintained` |


## Contributing

Any feedback, bug report or idea is extremely welcome.

Reach us through our [website](https://www.bmeme.com) or send us an email at [info@bonsaimeme.com](mailto:info@bonsaimeme.com).

## License

[MIT](https://choosealicense.com/licenses/mit/)
