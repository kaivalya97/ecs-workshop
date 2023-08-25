#!/usr/bin/env bash

# This script will install ECS prerequisites on Amazon Linux or Amazon Linux 2
# * AWS CLI

set -e

mkdir -p $HOME/bin
echo 'export PATH=$HOME/bin:$PATH' >>~/.bashrc


# AWS CLI
if ! type aws >/dev/null 2>&1; then
	echo 'installing AWS CLI...'
	curl -o awscli-bundle.zip https://s3.amazonaws.com/aws-cli/awscli-bundle.zip
	unzip awscli-bundle.zip
	./awscli-bundle/install -b $HOME/bin/aws
	echo 'AWS CLI installed'
else
	echo 'AWS CLI already installed'
fi

# Test if AWS credentials exist
aws sts get-caller-identity
