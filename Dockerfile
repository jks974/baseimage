FROM ubuntu:14.04

MAINTAINER Jks

# Update package repository
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty main restricted" > /etc/apt/sources.list
RUN echo "deb-src http://us.archive.ubuntu.com/ubuntu/ trusty main restricted" > /etc/apt/sources.list
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates main restricted" > /etc/apt/sources.list
RUN echo "deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-updates main restricted" > /etc/apt/sources.list
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty universe" > /etc/apt/sources.list
RUN echo "deb-src http://us.archive.ubuntu.com/ubuntu/ trusty universe" > /etc/apt/sources.list
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates universe" > /etc/apt/sources.list
RUN echo "deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-updates universe" > /etc/apt/sources.list
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty multiverse" > /etc/apt/sources.list
RUN echo "deb-src http://us.archive.ubuntu.com/ubuntu/ trusty multiverse" > /etc/apt/sources.list
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates multiverse" > /etc/apt/sources.list
RUN echo "deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-updates multiverse" > /etc/apt/sources.list
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb http://security.ubuntu.com/ubuntu trusty-security main restricted" > /etc/apt/sources.list
RUN echo "deb-src http://security.ubuntu.com/ubuntu trusty-security main restricted" > /etc/apt/sources.list
RUN echo "deb http://security.ubuntu.com/ubuntu trusty-security universe" > /etc/apt/sources.list
RUN echo "deb-src http://security.ubuntu.com/ubuntu trusty-security universe" > /etc/apt/sources.list
RUN echo "deb http://security.ubuntu.com/ubuntu trusty-security multiverse" > /etc/apt/sources.list
RUN echo "deb-src http://security.ubuntu.com/ubuntu trusty-security multiverse" > /etc/apt/sources.list
#RUN echo "deb http://extras.ubuntu.com/ubuntu trusty main" > /etc/apt/sources.list
#RUN echo "deb-src http://extras.ubuntu.com/ubuntu trusty main" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# Set up FR lang
RUN apt-get install -y language-pack-fr
ENV LANGUAGE fr_FR.UTF-8
ENV LANG fr_FR.UTF-8
ENV LC_ALL fr_FR.UTF-8
RUN locale-gen fr_FR.UTF-8
RUN dpkg-reconfigure locales

# Install some packets
RUN apt-get install -y build-essential git make gcc
RUN apt-get install -y software-properties-common
RUN apt-get install -y python python-dev python-setuptools python-pip python-virtualenv
RUN apt-get install -y curl
