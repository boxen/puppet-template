# Template Puppet Module for Boxen

An example of how we write Puppet modules for Boxen. Replace this
paragraph with a short explanation of what the heck makes your module
useful.

A great module has a working travis build

[![Build Status](https://travis-ci.org/boxen/puppet-template.png?branch=master)](https://travis-ci.org/boxen/puppet-template)

## Usage

```puppet
boxen::example { 'best example ever':
  salutation => 'fam'
}
```

## Required Puppet Modules

* `boxen`
* `anything-else`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
