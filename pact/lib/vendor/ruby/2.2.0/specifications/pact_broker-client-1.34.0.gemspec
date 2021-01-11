# -*- encoding: utf-8 -*-
# stub: pact_broker-client 1.34.0 ruby lib

Gem::Specification.new do |s|
  s.name = "pact_broker-client"
  s.version = "1.34.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Beth Skurrie"]
  s.date = "2020-11-20"
  s.description = "Client for the Pact Broker. Publish, retrieve and query pacts and verification results."
  s.email = ["bskurrie@dius.com.au"]
  s.executables = ["pact-broker"]
  s.files = ["bin/pact-broker"]
  s.homepage = "https://github.com/bethesque/pact_broker-client.git"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0")
  s.rubygems_version = "2.4.5.5"
  s.summary = "See description"

  s.installed_by_version = "2.4.5.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, ["~> 0.18"])
      s.add_runtime_dependency(%q<term-ansicolor>, ["~> 1.7"])
      s.add_runtime_dependency(%q<table_print>, ["~> 1.5"])
      s.add_runtime_dependency(%q<thor>, ["< 2.0", ">= 0.20"])
      s.add_runtime_dependency(%q<rake>, ["~> 13.0"])
      s.add_development_dependency(%q<fakefs>, ["~> 0.4"])
      s.add_development_dependency(%q<webmock>, ["~> 3.0"])
      s.add_development_dependency(%q<conventional-changelog>, ["~> 1.3"])
      s.add_development_dependency(%q<pact>, ["~> 1.16"])
      s.add_development_dependency(%q<pact-support>, ["= 1.15.0"])
    else
      s.add_dependency(%q<httparty>, ["~> 0.18"])
      s.add_dependency(%q<term-ansicolor>, ["~> 1.7"])
      s.add_dependency(%q<table_print>, ["~> 1.5"])
      s.add_dependency(%q<thor>, ["< 2.0", ">= 0.20"])
      s.add_dependency(%q<rake>, ["~> 13.0"])
      s.add_dependency(%q<fakefs>, ["~> 0.4"])
      s.add_dependency(%q<webmock>, ["~> 3.0"])
      s.add_dependency(%q<conventional-changelog>, ["~> 1.3"])
      s.add_dependency(%q<pact>, ["~> 1.16"])
      s.add_dependency(%q<pact-support>, ["= 1.15.0"])
    end
  else
    s.add_dependency(%q<httparty>, ["~> 0.18"])
    s.add_dependency(%q<term-ansicolor>, ["~> 1.7"])
    s.add_dependency(%q<table_print>, ["~> 1.5"])
    s.add_dependency(%q<thor>, ["< 2.0", ">= 0.20"])
    s.add_dependency(%q<rake>, ["~> 13.0"])
    s.add_dependency(%q<fakefs>, ["~> 0.4"])
    s.add_dependency(%q<webmock>, ["~> 3.0"])
    s.add_dependency(%q<conventional-changelog>, ["~> 1.3"])
    s.add_dependency(%q<pact>, ["~> 1.16"])
    s.add_dependency(%q<pact-support>, ["= 1.15.0"])
  end
end
