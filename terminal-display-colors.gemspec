# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{terminal-display-colors}
  s.version = TerminalDispayColors::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Cole"]
  s.date = %q{2010-05-25}
  s.description = %q{Adds color methods to String for easily adding color to terminal output.}
  s.has_rdoc = true
  s.email = ["davidcole@davidcole.net"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt"]
  s.files = ["demo.rb", "History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "lib/terminal-display-colors.rb", "test/test_helper.rb", "test/test_terminal-display-colors.rb"]
  s.homepage = %q{http://github.com/davidcole/terminal-display-colors}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  #s.rubyforge_project = %q{display-colors}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Adds color methods to String for easily adding color to terminal output.}
  s.test_files = ["test/test_helper.rb", "test/test_terminal-display-colors.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_development_dependency(%q<hoe>, [">= 2.6.0"])
    else
      s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_dependency(%q<hoe>, [">= 2.6.0"])
    end
  else
    s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
    s.add_dependency(%q<hoe>, [">= 2.6.0"])
  end
end
