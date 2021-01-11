# -*- encoding: utf-8 -*-
# stub: rack-reverse-proxy 0.12.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rack-reverse-proxy"
  s.version = "0.12.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jon Swope", "Ian Ehlert", "Roman Ernst", "Oleksii Fedorov"]
  s.date = "2017-04-05"
  s.description = "A Rack based reverse proxy for basic needs.\nUseful for testing or in cases where webserver configuration is unavailable.\n"
  s.email = ["jaswope@gmail.com", "ehlertij@gmail.com", "rernst@farbenmeer.net", "waterlink000@gmail.com"]
  s.homepage = "https://github.com/waterlink/rack-reverse-proxy"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.5"
  s.summary = "A Simple Reverse Proxy for Rack"

  s.installed_by_version = "2.4.5.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<rack-proxy>, [">= 0.6.1", "~> 0.6"])
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
      s.add_development_dependency(%q<rake>, ["~> 10.3"])
    else
      s.add_dependency(%q<rack>, [">= 1.0.0"])
      s.add_dependency(%q<rack-proxy>, [">= 0.6.1", "~> 0.6"])
      s.add_dependency(%q<bundler>, ["~> 1.7"])
      s.add_dependency(%q<rake>, ["~> 10.3"])
    end
  else
    s.add_dependency(%q<rack>, [">= 1.0.0"])
    s.add_dependency(%q<rack-proxy>, [">= 0.6.1", "~> 0.6"])
    s.add_dependency(%q<bundler>, ["~> 1.7"])
    s.add_dependency(%q<rake>, ["~> 10.3"])
  end
end
