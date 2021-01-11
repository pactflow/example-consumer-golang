# -*- encoding: utf-8 -*-
# stub: pact 1.55.6 ruby lib

Gem::Specification.new do |s|
  s.name = "pact"
  s.version = "1.55.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/pact-foundation/pact-ruby/issues", "changelog_uri" => "https://github.com/pact-foundation/pact-ruby/blob/master/CHANGELOG.md", "documentation_uri" => "https://github.com/pact-foundation/pact-ruby/blob/master/README.md", "source_code_uri" => "https://github.com/pact-foundation/pact-ruby" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["James Fraser", "Sergei Matheson", "Brent Snook", "Ronald Holshausen", "Beth Skurrie"]
  s.date = "2020-11-06"
  s.description = "Enables consumer driven contract testing, providing a mock service and DSL for the consumer project, and interaction playback and verification for the service provider project."
  s.email = ["james.fraser@alumni.swinburne.edu", "sergei.matheson@gmail.com", "brent@fuglylogic.com", "uglyog@gmail.com", "bskurrie@dius.com.au"]
  s.executables = ["pact"]
  s.files = ["bin/pact"]
  s.homepage = "https://github.com/pact-foundation/pact-ruby"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0")
  s.rubygems_version = "2.4.5.5"
  s.summary = "Enables consumer driven contract testing, providing a mock service and DSL for the consumer project, and interaction playback and verification for the service provider project."

  s.installed_by_version = "2.4.5.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>, ["~> 3.0"])
      s.add_runtime_dependency(%q<rack-test>, ["< 2.0.0", ">= 0.6.3"])
      s.add_runtime_dependency(%q<thor>, ["< 2.0", ">= 0.20"])
      s.add_runtime_dependency(%q<webrick>, ["~> 1.3"])
      s.add_runtime_dependency(%q<term-ansicolor>, ["~> 1.0"])
      s.add_runtime_dependency(%q<pact-support>, ["~> 1.15"])
      s.add_runtime_dependency(%q<pact-mock_service>, [">= 3.3.1", "~> 3.0"])
      s.add_development_dependency(%q<rake>, ["~> 13.0"])
      s.add_development_dependency(%q<webmock>, ["~> 3.0"])
      s.add_development_dependency(%q<fakefs>, ["= 0.5"])
      s.add_development_dependency(%q<hashie>, ["~> 2.0"])
      s.add_development_dependency(%q<activesupport>, ["~> 5.2"])
      s.add_development_dependency(%q<faraday>, ["~> 0.13"])
      s.add_development_dependency(%q<conventional-changelog>, ["~> 1.3"])
      s.add_development_dependency(%q<bump>, ["~> 0.5"])
      s.add_development_dependency(%q<pact-message>, ["~> 0.8"])
      s.add_development_dependency(%q<rspec-its>, ["~> 1.3"])
    else
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<rack-test>, ["< 2.0.0", ">= 0.6.3"])
      s.add_dependency(%q<thor>, ["< 2.0", ">= 0.20"])
      s.add_dependency(%q<webrick>, ["~> 1.3"])
      s.add_dependency(%q<term-ansicolor>, ["~> 1.0"])
      s.add_dependency(%q<pact-support>, ["~> 1.15"])
      s.add_dependency(%q<pact-mock_service>, [">= 3.3.1", "~> 3.0"])
      s.add_dependency(%q<rake>, ["~> 13.0"])
      s.add_dependency(%q<webmock>, ["~> 3.0"])
      s.add_dependency(%q<fakefs>, ["= 0.5"])
      s.add_dependency(%q<hashie>, ["~> 2.0"])
      s.add_dependency(%q<activesupport>, ["~> 5.2"])
      s.add_dependency(%q<faraday>, ["~> 0.13"])
      s.add_dependency(%q<conventional-changelog>, ["~> 1.3"])
      s.add_dependency(%q<bump>, ["~> 0.5"])
      s.add_dependency(%q<pact-message>, ["~> 0.8"])
      s.add_dependency(%q<rspec-its>, ["~> 1.3"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<rack-test>, ["< 2.0.0", ">= 0.6.3"])
    s.add_dependency(%q<thor>, ["< 2.0", ">= 0.20"])
    s.add_dependency(%q<webrick>, ["~> 1.3"])
    s.add_dependency(%q<term-ansicolor>, ["~> 1.0"])
    s.add_dependency(%q<pact-support>, ["~> 1.15"])
    s.add_dependency(%q<pact-mock_service>, [">= 3.3.1", "~> 3.0"])
    s.add_dependency(%q<rake>, ["~> 13.0"])
    s.add_dependency(%q<webmock>, ["~> 3.0"])
    s.add_dependency(%q<fakefs>, ["= 0.5"])
    s.add_dependency(%q<hashie>, ["~> 2.0"])
    s.add_dependency(%q<activesupport>, ["~> 5.2"])
    s.add_dependency(%q<faraday>, ["~> 0.13"])
    s.add_dependency(%q<conventional-changelog>, ["~> 1.3"])
    s.add_dependency(%q<bump>, ["~> 0.5"])
    s.add_dependency(%q<pact-message>, ["~> 0.8"])
    s.add_dependency(%q<rspec-its>, ["~> 1.3"])
  end
end
