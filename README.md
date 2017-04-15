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

Now edit the class name in `manifests/init.pp` and `spec/classes/template_spec.rb` to match the name of the module, without forgetting to rename `template_spec.rb` accordingly.

Now we're ready to make it our own and run a build!

```
script/cibuild
.bundle/binstubs/rspec-puppet-init
```

Note that unless you have edited the class name and then run the above scripts, puppet-lint will fail during the cibuild with an error message similar to:

```
--> Checking lint:
manifests/init.pp - ERROR: template not in autoload module layout on line 2
```

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

[![Build Status](https://travis-ci.org/boxen/puppet-template.svg?branch=master)](https://travis-ci.org/boxen/puppet-template)

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

Set `GITHUB_API_TOKEN` in your shell with a [Github oAuth Token](https://help.github.com/articles/creating-an-oauth-token-for-command-line-use) to raise your API rate limit. You can get some work done without it, but you're less likely to encounter errors like `Unable to find module 'boxen/puppet-boxen' on https://github.com`. You can also set this environment variable securely on Travis to ensure your CI builds don't run into the same issue - check out Travis's [docs on repository settings](http://docs.travis-ci.com/user/environment-variables/).

Then write some code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
