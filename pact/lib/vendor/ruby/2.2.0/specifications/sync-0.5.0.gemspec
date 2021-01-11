# -*- encoding: utf-8 -*-
# stub: sync 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "sync"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Keiju ISHITSUKA"]
  s.bindir = "exe"
  s.date = "2018-12-04"
  s.description = "A module that provides a two-phase lock with a counter."
  s.email = ["keiju@ruby-lang.org"]
  s.homepage = "https://github.com/ruby/sync"
  s.licenses = ["BSD-2-Clause"]
  s.rubygems_version = "2.4.5.5"
  s.summary = "A module that provides a two-phase lock with a counter."

  s.installed_by_version = "2.4.5.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<test-unit>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<test-unit>, [">= 0"])
  end
end
