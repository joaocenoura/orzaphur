#!/bin/bash
set -x
function create_keys() {
  DIR="$1"
  mkdir -p $DIR
  rm -rf $DIR/*
  ssh-keygen -t rsa -N "" -C "$2" -f $DIR/id_rsa
}

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

create_keys $BASE_DIR/ssh_keys/git git
create_keys $BASE_DIR/ssh_keys/jenkins jenkins
create_keys $BASE_DIR/ssh_keys/redmine redmine
create_keys $BASE_DIR/ssh_keys/sonar sonarqube
