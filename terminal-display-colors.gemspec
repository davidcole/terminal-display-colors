$:.unshift File.expand_path('../lib', __FILE__)
require 'terminal-display-colors'

Gem::Specification.new do |s|
  s.name        = 'terminal-display-colors'
  s.version     = TerminalDispayColors::VERSION
  s.authors     = [ 'David Cole' ]
  s.description = 'The terminal-display-colors gem adds color methods to String for easily adding color to terminal output.'
  s.email       = [ 'davidcole@davidcole.net' ]
  s.files       = [ 'demo.rb', 'History.txt', 'Manifest.txt', 'README.rdoc', 'Rakefile', 'lib/terminal-display-colors.rb' ]
  s.homepage    = 'http://github.com/davidcole/terminal-display-colors'
  s.summary     = 'Adds color methods to String for easily adding color to terminal output.'
  s.test_files  = [ 'test/test_terminal-display-colors.rb' ]
  s.license     = 'MIT'
end