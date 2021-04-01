#!/bin/bash
# bash ~/RubymineProjects/TeamLab/tools/jmeter/jenkins/run_api_crud_tests_for_jenkins.sh

cd ~/RubymineProjects/TeamLab && rm -f Gemfile.lock && git reset --hard && git pull && git checkout develop && git pull;
rm /home/jenkins/workspace/publish.test-jmeter/*;
jmeter -n -t tools/jmeter/jenkins/api_load_test_for_report.jmx -l /home/jenkins/workspace/publish.test-jmeter/report.jtl
