# Origin Build Monitor


This repository has a template with a PHP application and a Jenkins application, which is
configured, will build and deploy periodically, to ensure the stability of the Openfhift / Origin
cluster.

The Jenkins application, must have at least 1GB.

### Steps:

  - Login in your project with "oc"
  
  - Create the apps using the template "oc new-app -f https://raw.githubusercontent.com/getupcloud/origin-build-monitor/master/origin-build-monitor.yaml --param=CLIENTNAME=NameOfTheClient"
  
  - Give permission to system user "default" make builds "oc policy add-role-to-user edit -z default"

## That's it, now every 30 minutes your project will make a build, and if it fail, alarm you in PagerDuty.
The Jenkinsfile and the application, came from: https://github.com/juniorjbn/php-test/tree/monitor

