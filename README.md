# Using this Template

## boxen-module-maker
You can use the [boxen-module-maker](https://github.com/petems/boxen-module-maker) gem, which uses this repo as a base, but then tweaks the specs and manifests according to your options.

## Bootstrap

```
mkdir -p ~/src/boxen/puppet-mynewmodule
cd ~/src/boxen/puppet-mynewmodule
git init .
git remote add template https://github.com/boxen/puppet-template.git
git fetch template
git checkout -b master template/master
```

Now we're ready to make it our own!

```
script/cibuild
.bundle/binstubs/rspec-puppet-init
```

Now you'll need to edit `manifests/init.pp` and `spec/classes/template_spec.rb`
for your module.
If your module has other dependencies, be sure to update
`spec/fixtures/Puppetfile`.
From then on, you can use `script/cibuild` to run the tests.

When you're ready to push:

```
git create githubusername/puppet-mynewmodule
git push origin master
```

The rest of the README as follows can be used as a template for your module's README.

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
