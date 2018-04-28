[![Build Status](https://travis-ci.org/surreymagpie/running_club.svg?branch=master)](https://travis-ci.org/surreymagpie/running_club)

# Running Club

### Introduction
This application is a project aimed at providing a website and membership management system for a UK Athletics affiliated running or athletics club.

### Local development
You will need ruby (currently v2.4.1) and postgresql already installed. 

```bash
# Clone this repository:
git clone https://github.com/surreymagpie/running_club.git
cd running_club

# Download all of the required gems and setup the databases
bin/setup

# Start a server, watch for bundle changes and automatically run the test suite on any changes.
bin/guard
```

### Configuration

Make a copy of the example configuration and edit it for your needs:

```bash
cp config/example.application.yml config/application.yml
```

### Testing
To run the test suite alone, use `bin/rspec`.
