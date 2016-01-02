# Kernel#iterate [![[version]](https://badge.fury.io/rb/iterate.svg)](http://badge.fury.io/rb/iterate)  [![[travis]](https://travis-ci.org/janlelis/iterate.png)](https://travis-ci.org/janlelis/iterate)

Iterate over one or more collections. It feels like an `.each` implemented as a control structure. It also makes it easier to iterate over multiple objects.


## Usage

```ruby
iterate [1,2], [3,4,5] do |e, f|
  puts "#{e},#{f}"
end

# 1,3
# 2,4
# ,5
```


## Setup

Add to your `Gemfile`:

```ruby
gem 'iterate'
```


## MIT License

Copyright (C) 2010-2016 Jan Lelis <http://janlelis.com>. Released under the MIT license.
