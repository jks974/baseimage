FROM ubuntu:14.04

MAINTAINER Jks

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# Set up lang
RUN apt-get install -y language-pack-fr
ENV LANGUAGE fr_FR.UTF-8
ENV LANG fr_FR.UTF-8
ENV LC_ALL fr_FR.UTF-8
RUN locale-gen fr_FR.UTF-8
RUN dpkg-reconfigure locales

# Install essential stuff
RUN apt-get install -y build-essential git make gcc
RUN apt-get install -y software-properties-common
RUN apt-get install -y python python-dev python-setuptools python-pip python-virtualenv
RUN apt-get install -y curl
