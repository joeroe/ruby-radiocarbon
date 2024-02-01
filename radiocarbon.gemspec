# frozen_string_literal: true
require 'rake'

Gem::Specification.new do |gem|
  gem.name        = 'radiocarbon'
  gem.version     = '0.1.0.9000'
  gem.summary     = 'Radiocarbon calibration'
  gem.description = 'Fast calibration of radiocarbon dates.'
  gem.authors     = ['Joe Roe']
  gem.email       = 'joeroe@hey.com'
  gem.files       = FileList['lib/radiocarbon.rb', 
                   'lib/radiocarbon/*.rb',
                   'lib/radiocarbon/curves/*.rb'].to_a
  gem.homepage    = 'https://rubygems.org/gems/radiocarbon'
  gem.license     = 'MIT'
  gem.metadata    = {
    'source_code_uri' => 'https://github.com/joeroe/ruby-radiocarbon',
    'bug_tracker_uri' => 'https://github.com/joeroe/ruby-radiocarbon/issues'
  }
end
