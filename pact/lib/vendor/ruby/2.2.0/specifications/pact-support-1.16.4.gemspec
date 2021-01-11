# -*- encoding: utf-8 -*-
# stub: pact-support 1.16.4 ruby lib

Gem::Specification.new do |s|
  s.name = "pact-support"
  s.version = "1.16.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["James Fraser", "Sergei Matheson", "Brent Snook", "Ronald Holshausen", "Beth Skurrie"]
  s.date = "2020-11-12"
  s.email = ["james.fraser@alumni.swinburne.edu", "sergei.matheson@gmail.com", "brent@fuglylogic.com", "uglyog@gmail.com", "bskurrie@dius.com.au"]
  s.homepage = "https://github.com/pact-foundation/pact-support"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0")
  s.rubygems_version = "2.4.5.5"
  s.summary = "Shared code for Pact gems"

  s.installed_by_version = "2.4.5.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<randexp>, ["~> 0.1.7"])
      s.add_runtime_dependency(%q<term-ansicolor>, ["~> 1.0"])
      s.add_runtime_dependency(%q<awesome_print>, ["~> 1.1"])
      s.add_runtime_dependency(%q<diff-lcs>, ["~> 1.4"])
      s.add_development_dependency(%q<rspec>, ["< 4.0", ">= 2.14"])
      s.add_development_dependency(%q<rake>, ["~> 10.0.3"])
      s.add_development_dependency(%q<webmock>, ["~> 3.3"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<fakefs>, ["~> 0.11.2"])
      s.add_development_dependency(%q<hashie>, ["~> 2.0"])
      s.add_development_dependency(%q<activesupport>, [">= 0"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
      s.add_development_dependency(%q<conventional-changelog>, ["~> 1.3"])
      s.add_development_dependency(%q<bump>, ["~> 0.5"])
    else
      s.add_dependency(%q<randexp>, ["~> 0.1.7"])
      s.add_dependency(%q<term-ansicolor>, ["~> 1.0"])
      s.add_dependency(%q<awesome_print>, ["~> 1.1"])
      s.add_dependency(%q<diff-lcs>, ["~> 1.4"])
      s.add_dependency(%q<rspec>, ["< 4.0", ">= 2.14"])
      s.add_dependency(%q<rake>, ["~> 10.0.3"])
      s.add_dependency(%q<webmock>, ["~> 3.3"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<fakefs>, ["~> 0.11.2"])
      s.add_dependency(%q<hashie>, ["~> 2.0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<appraisal>, [">= 0"])
      s.add_dependency(%q<conventional-changelog>, ["~> 1.3"])
      s.add_dependency(%q<bump>, ["~> 0.5"])
    end
  else
    s.add_dependency(%q<randexp>, ["~> 0.1.7"])
    s.add_dependency(%q<term-ansicolor>, ["~> 1.0"])
    s.add_dependency(%q<awesome_print>, ["~> 1.1"])
    s.add_dependency(%q<diff-lcs>, ["~> 1.4"])
    s.add_dependency(%q<rspec>, ["< 4.0", ">= 2.14"])
    s.add_dependency(%q<rake>, ["~> 10.0.3"])
    s.add_dependency(%q<webmock>, ["~> 3.3"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<fakefs>, ["~> 0.11.2"])
    s.add_dependency(%q<hashie>, ["~> 2.0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<appraisal>, [">= 0"])
    s.add_dependency(%q<conventional-changelog>, ["~> 1.3"])
    s.add_dependency(%q<bump>, ["~> 0.5"])
  end
end
