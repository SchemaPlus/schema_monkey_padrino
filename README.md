[![Gem Version](https://badge.fury.io/rb/schema_monkey_rails.svg)](http://badge.fury.io/rb/schema_monkey_rails)
[![Build Status](https://secure.travis-ci.org/SchemaPlus/schema_monkey_rails.svg)](http://travis-ci.org/SchemaPlus/schema_monkey_rails)
[![Coverage Status](https://img.shields.io/coveralls/SchemaPlus/schema_monkey_rails.svg)](https://coveralls.io/r/SchemaPlus/schema_monkey_rails)
[![Dependency Status](https://gemnasium.com/lomba/schema_monkey_rails.svg)](https://gemnasium.com/SchemaPlus/schema_monkey_rails)

# SchemaMonkey::Rails

Arranges to insert [SchemaMonkey](https://github.com/SchemaPlus/schema_monkey) into a rails app--and with it will come all the ActiveRecord extensions based on it that you have included in your app.

## Installation && Usage

In your application's Gemfile

```ruby
gem "schema_monkey_rails"
```
## Compatibility

SchemaMonkey::Rails is tested on:

<!-- SCHEMA_DEV: MATRIX - begin -->
<!-- These lines are auto-generated by schema_dev based on schema_dev.yml -->
* ruby **1.9.3** with activerecord **4.2**, using **mysql2**, **sqlite3** or **postgresql**
* ruby **2.1.5** with activerecord **4.2**, using **mysql2**, **sqlite3** or **postgresql**

<!-- SCHEMA_DEV: MATRIX - end -->
That's it.  Just require the gem and it will define a Railtie that will insert SchemaMonkey appropriately.

## History

* 0.1.0 - Initial release
 
## Development & Testing

Are you interested in contributing to SchemaMonkey::Rails?  Thanks!  Please follow the standard protocol: fork, feature branch, develop, push, and issue pull request.

Some things to know about to help you develop and test:

* **schema_dev**:  SchemaMonkey::Rails uses [schema_dev](https://github.com/SchemaPlus/schema_dev) to
  facilitate running rspec tests on the matrix of ruby, activerecord, and database
  versions that the gem supports, both locally and on
  [travis-ci](http://travis-ci.org/SchemaPlus/schema_monkey_rails)

  To to run rspec locally on the full matrix, do:

        $ schema_dev bundle install
        $ schema_dev rspec

  You can also run on just one configuration at a time;  For info, see `schema_dev --help` or the [schema_dev](https://github.com/SchemaPlus/schema_dev) README.

  The matrix of configurations is specified in `schema_dev.yml` in
  the project root.

