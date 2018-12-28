# Clipar

Get command line paramenters on your code easily. Treat them as methods of an object

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'clipar'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install clipar

## Usage

If you want to pass values to your code from command line like

```
foo=bar cucumber
```

You can do this with CLIPar:

```ruby
require 'clipar'

cli = CLIPar.new
cli.foo
# => "bar"

```
