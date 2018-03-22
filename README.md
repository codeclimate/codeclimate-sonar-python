# Code Climate Sonar-PHP Engine

[![CircleCI](https://circleci.com/gh/codeclimate/codeclimate-sonar-php.svg?style=svg&circle-token=72a9e9a49dc6a8653be6a69321012fe1d84abc3d)](https://circleci.com/gh/codeclimate/codeclimate-sonar-php)
[![Maintainability](https://api.codeclimate.com/v1/badges/2bdcb2e92bbc0efb855b/maintainability)](https://codeclimate.com/github/codeclimate/codeclimate-sonar-php/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/2bdcb2e92bbc0efb855b/test_coverage)](https://codeclimate.com/github/codeclimate/codeclimate-sonar-php/test_coverage)

`codeclimate-sonar-php` is a Code Climate engine that wraps [Sonarlint](http://www.sonarlint.org) in standalone mode.

## Installation
```
make image
```

## Tests
```
make test
```

## Usage

1. If you haven't already, [install the Code Climate CLI](https://github.com/codeclimate/codeclimate).
2. Configure a `.codeclimate.yml` file in your repo.
```yml
engines:
  sonar-php:
    enabled: true
    config:
      tests_patterns:
        - src/test/**
exclude_paths:
  - build/
```
3. Run `codeclimate analyze`.

## Custom configurations

### Severity
Ignore issues with severity below the minimum:
```
engines:
  sonar-php:
    enabled: true
    config:
      minimum_severity: critical  # default: major
                                  # valid values are: info, minor, major, critical, blocker
```

## Sonar Documentation

http://www.sonarlint.org/commandline

http://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner

Issue Tracker: http://jira.sonarsource.com/browse/SLCLI

## Copyright

This engine is developed by Code Climate using [SonarLint](http://www.sonarlint.org/commandline), it is not endorsed by SonarSoruce.

See [LICENSE](LICENSE)
