# Fullwidth

Convert ASCII to equivalent ｆｕｌｌｗｉｄｔｈ characters.

## Installation

Add this line to your application's Gemfile:

    gem 'fullwidth'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fullwidth

## Usage

``` ruby
"foobar".to_fullwidth        # => "ｆｏｏｂａｒ"
"hello, world.".to_fullwidth # => "ｈｅｌｌｏ，　ｗｏｒｌｄ．"
"鋸".to_fullwidth            # => "鋸"
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/fullwidth/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
