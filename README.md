[![Build Status](https://travis-ci.org/surreymagpie/running_club.svg?branch=master)](https://travis-ci.org/surreymagpie/running_club)

# Running Club

### Introduction
This application is a project aimed at providing a website and membership management system for a UK Athletics affiliated running or athletics club.

For local development, you will need ruby (currently v2.4.1) and postgresql already installed. Clone this repository:

```bash

git clone https://github.com/surreymagpie/running_club.git

```

then run ` bin/setup ` which should download all of the required gems and setup your database. Then run ` bin/guard ` to start a server, watch for bundle changes and automatically run the test suite on any changes.

### Configuration

Make a copy of the example configuration and edit it for your needs:

```bash

cp config/example.application.yml config/application.yml

```

### Testing
To run the test suite alone, use `bin/rspec`.
