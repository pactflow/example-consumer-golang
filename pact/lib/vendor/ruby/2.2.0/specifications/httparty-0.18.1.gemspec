# -*- encoding: utf-8 -*-
# stub: httparty 0.18.1 ruby lib

Gem::Specification.new do |s|
  s.name = "httparty"
  s.version = "0.18.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["John Nunemaker", "Sandro Turriate"]
  s.date = "2020-06-10"
  s.description = "Makes http fun! Also, makes consuming restful web services dead easy."
  s.email = ["nunemaker@gmail.com"]
  s.executables = ["httparty"]
  s.files = ["bin/httparty"]
  s.homepage = "https://github.com/jnunemaker/httparty"
  s.licenses = ["MIT"]
  s.post_install_message = "When you HTTParty, you must party hard!"
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.4.5.5"
  s.summary = "Makes http fun! Also, makes consuming restful web services dead easy."

  s.installed_by_version = "2.4.5.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multi_xml>, [">= 0.5.2"])
      s.add_runtime_dependency(%q<mime-types>, ["~> 3.0"])
    else
      s.add_dependency(%q<multi_xml>, [">= 0.5.2"])
      s.add_dependency(%q<mime-types>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<multi_xml>, [">= 0.5.2"])
    s.add_dependency(%q<mime-types>, ["~> 3.0"])
  end
end
