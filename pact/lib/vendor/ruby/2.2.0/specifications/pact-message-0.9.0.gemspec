# -*- encoding: utf-8 -*-
# stub: pact-message 0.9.0 ruby lib

Gem::Specification.new do |s|
  s.name = "pact-message"
  s.version = "0.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["Beth Skurrie"]
  s.date = "2020-11-04"
  s.email = ["beth@bethesque.com"]
  s.executables = ["console", "pact-message", "setup"]
  s.files = ["bin/console", "bin/pact-message", "bin/setup"]
  s.homepage = "http://pact.io"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.5"
  s.summary = "Consumer contract library for messages"

  s.installed_by_version = "2.4.5.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<pact-support>, ["~> 1.8"])
      s.add_runtime_dependency(%q<pact-mock_service>, ["~> 3.1"])
      s.add_runtime_dependency(%q<thor>, ["~> 0.20"])
      s.add_development_dependency(%q<rake>, [">= 12.3.3", "~> 12.3"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<pry-byebug>, [">= 0"])
      s.add_development_dependency(%q<conventional-changelog>, ["~> 1.2"])
      s.add_development_dependency(%q<bump>, ["~> 0.5"])
    else
      s.add_dependency(%q<pact-support>, ["~> 1.8"])
      s.add_dependency(%q<pact-mock_service>, ["~> 3.1"])
      s.add_dependency(%q<thor>, ["~> 0.20"])
      s.add_dependency(%q<rake>, [">= 12.3.3", "~> 12.3"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<pry-byebug>, [">= 0"])
      s.add_dependency(%q<conventional-changelog>, ["~> 1.2"])
      s.add_dependency(%q<bump>, ["~> 0.5"])
    end
  else
    s.add_dependency(%q<pact-support>, ["~> 1.8"])
    s.add_dependency(%q<pact-mock_service>, ["~> 3.1"])
    s.add_dependency(%q<thor>, ["~> 0.20"])
    s.add_dependency(%q<rake>, [">= 12.3.3", "~> 12.3"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<pry-byebug>, [">= 0"])
    s.add_dependency(%q<conventional-changelog>, ["~> 1.2"])
    s.add_dependency(%q<bump>, ["~> 0.5"])
  end
end
