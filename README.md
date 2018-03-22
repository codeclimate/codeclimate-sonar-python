# Code Climate Sonar-Python Engine

`codeclimate-sonar-python` is a Code Climate engine that wraps [Sonarlint](http://www.sonarlint.org) in standalone mode.

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
  sonar-python:
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
  sonar-python:
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
