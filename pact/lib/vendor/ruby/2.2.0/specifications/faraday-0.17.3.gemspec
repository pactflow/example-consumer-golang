# -*- encoding: utf-8 -*-
# stub: faraday 0.17.3 ruby lib

Gem::Specification.new do |s|
  s.name = "faraday"
  s.version = "0.17.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/lostisland/faraday/issues", "changelog_uri" => "https://github.com/lostisland/faraday/blob/master/CHANGELOG.md", "homepage_uri" => "https://lostisland.github.io/faraday", "source_code_uri" => "https://github.com/lostisland/faraday/" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["@technoweenie", "@iMacTia", "@olleolleolle"]
  s.date = "2019-12-31"
  s.email = "technoweenie@gmail.com"
  s.homepage = "https://lostisland.github.io/faraday"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9")
  s.rubygems_version = "2.4.5.5"
  s.summary = "HTTP/REST API client library."

  s.installed_by_version = "2.4.5.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multipart-post>, ["< 3", ">= 1.2"])
    else
      s.add_dependency(%q<multipart-post>, ["< 3", ">= 1.2"])
    end
  else
    s.add_dependency(%q<multipart-post>, ["< 3", ">= 1.2"])
  end
end
