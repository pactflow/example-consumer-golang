# -*- encoding: utf-8 -*-
# stub: pact-mock_service 3.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "pact-mock_service"
  s.version = "3.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["James Fraser", "Sergei Matheson", "Brent Snook", "Ronald Holshausen", "Beth Skurrie"]
  s.date = "2020-11-13"
  s.email = ["james.fraser@alumni.swinburne.edu", "sergei.matheson@gmail.com", "brent@fuglylogic.com", "uglyog@gmail.com", "beth@bethesque.com"]
  s.executables = ["pact-mock-service", "pact-stub-service"]
  s.files = ["bin/pact-mock-service", "bin/pact-stub-service"]
  s.homepage = "https://github.com/bethesque/pact-mock_service"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0")
  s.rubygems_version = "2.4.5.5"
  s.summary = "Provides a mock service for use with Pact"

  s.installed_by_version = "2.4.5.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, ["~> 2.0"])
      s.add_runtime_dependency(%q<rspec>, [">= 2.14"])
      s.add_runtime_dependency(%q<find_a_port>, ["~> 1.0.1"])
      s.add_runtime_dependency(%q<thor>, ["< 2.0", ">= 0.19"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<webrick>, ["~> 1.3"])
      s.add_runtime_dependency(%q<term-ansicolor>, ["~> 1.0"])
      s.add_runtime_dependency(%q<pact-support>, [">= 1.16.4", "~> 1.16"])
      s.add_runtime_dependency(%q<filelock>, ["~> 1.1"])
      s.add_development_dependency(%q<rack-test>, ["~> 0.7"])
      s.add_development_dependency(%q<rake>, [">= 13.0.1", "~> 13.0"])
      s.add_development_dependency(%q<webmock>, ["~> 3.4"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<fakefs>, ["~> 0.4"])
      s.add_development_dependency(%q<hashie>, ["~> 2.0"])
      s.add_development_dependency(%q<activesupport>, ["~> 5.1"])
      s.add_development_dependency(%q<faraday>, ["~> 0.12"])
      s.add_development_dependency(%q<octokit>, ["~> 4.7"])
      s.add_development_dependency(%q<conventional-changelog>, ["~> 1.3"])
      s.add_development_dependency(%q<bump>, ["~> 0.5"])
    else
      s.add_dependency(%q<rack>, ["~> 2.0"])
      s.add_dependency(%q<rspec>, [">= 2.14"])
      s.add_dependency(%q<find_a_port>, ["~> 1.0.1"])
      s.add_dependency(%q<thor>, ["< 2.0", ">= 0.19"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<webrick>, ["~> 1.3"])
      s.add_dependency(%q<term-ansicolor>, ["~> 1.0"])
      s.add_dependency(%q<pact-support>, [">= 1.16.4", "~> 1.16"])
      s.add_dependency(%q<filelock>, ["~> 1.1"])
      s.add_dependency(%q<rack-test>, ["~> 0.7"])
      s.add_dependency(%q<rake>, [">= 13.0.1", "~> 13.0"])
      s.add_dependency(%q<webmock>, ["~> 3.4"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<fakefs>, ["~> 0.4"])
      s.add_dependency(%q<hashie>, ["~> 2.0"])
      s.add_dependency(%q<activesupport>, ["~> 5.1"])
      s.add_dependency(%q<faraday>, ["~> 0.12"])
      s.add_dependency(%q<octokit>, ["~> 4.7"])
      s.add_dependency(%q<conventional-changelog>, ["~> 1.3"])
      s.add_dependency(%q<bump>, ["~> 0.5"])
    end
  else
    s.add_dependency(%q<rack>, ["~> 2.0"])
    s.add_dependency(%q<rspec>, [">= 2.14"])
    s.add_dependency(%q<find_a_port>, ["~> 1.0.1"])
    s.add_dependency(%q<thor>, ["< 2.0", ">= 0.19"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<webrick>, ["~> 1.3"])
    s.add_dependency(%q<term-ansicolor>, ["~> 1.0"])
    s.add_dependency(%q<pact-support>, [">= 1.16.4", "~> 1.16"])
    s.add_dependency(%q<filelock>, ["~> 1.1"])
    s.add_dependency(%q<rack-test>, ["~> 0.7"])
    s.add_dependency(%q<rake>, [">= 13.0.1", "~> 13.0"])
    s.add_dependency(%q<webmock>, ["~> 3.4"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<fakefs>, ["~> 0.4"])
    s.add_dependency(%q<hashie>, ["~> 2.0"])
    s.add_dependency(%q<activesupport>, ["~> 5.1"])
    s.add_dependency(%q<faraday>, ["~> 0.12"])
    s.add_dependency(%q<octokit>, ["~> 4.7"])
    s.add_dependency(%q<conventional-changelog>, ["~> 1.3"])
    s.add_dependency(%q<bump>, ["~> 0.5"])
  end
end
