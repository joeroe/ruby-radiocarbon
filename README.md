# ruby-radiocarbon

![latest release on rubygems.org](https://img.shields.io/gem/v/radiocarbon)
![downloads from rubygems.org](https://img.shields.io/gem/dt/radiocarbon)
![tests](https://github.com/joeroe/ruby-radiocarbon/actions/workflows/tests.yml/badge.svg)
[![test coverage](https://coveralls.io/repos/github/joeroe/ruby-radiocarbon/badge.svg?branch=main)](https://coveralls.io/github/joeroe/ruby-radiocarbon?branch=main)

A Ruby gem for fast radiocarbon calibration.

Full documentation can be found [at rubydoc.info](https://rubydoc.info/github/joeroe/ruby-radiocarbon).

## Installation

Install the latest release from [https://rubygems.org/gems/radiocarbon](RubyGems):

```
gem install radiocarbon
```

Or by add it to your project's Gemfile:

```
gem 'radiocarbon', '~> 0.1.0'
```

## Usage

As a Ruby library:

```ruby

# Returns a calibrated radiocarbon date
c14_date = Radiocarbon::C14Date.new(age = 10000, error = 30)
cal_date = c14_date.calibrate()

# Returns the probability distribution of a calibrated date over the full
# range of the calibration curve
cal_date.pdist
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
