# Origin Build Monitor


This repository has a template with a PHP application and a Jenkins application, which is
configured, will build and deploy periodically, to ensure the stability of the Openfhift / Origin
cluster.

The Jenkins application, must have at least 1GB.

### Steps:

  - Clone the repo -> https://github.com/getupcloud/origin-build-monitor.git 

  - Run install.sh with client name as first param. " ./install.sh <Client Name> "
    - <Client Name> is used to name the jenkins job, also the alarm on pagerduty.

## That's it, now every 30 minutes your project will make a build, and if it fail, alarm you in PagerDuty.
The Jenkinsfile and the application, came from: https://github.com/juniorjbn/php-test/tree/monitor

