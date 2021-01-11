# -*- encoding: utf-8 -*-
# stub: term-ansicolor 1.7.1 ruby lib

Gem::Specification.new do |s|
  s.name = "term-ansicolor"
  s.version = "1.7.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Florian Frank"]
  s.date = "2019-01-18"
  s.description = "This library uses ANSI escape sequences to control the attributes of terminal output"
  s.email = "flori@ping.de"
  s.executables = ["term_snow", "term_display", "term_decolor", "term_cdiff", "term_mandel", "term_colortab"]
  s.extra_rdoc_files = ["README.md", "lib/term/ansicolor.rb", "lib/term/ansicolor/attribute.rb", "lib/term/ansicolor/attribute/color256.rb", "lib/term/ansicolor/attribute/color8.rb", "lib/term/ansicolor/attribute/intense_color8.rb", "lib/term/ansicolor/attribute/text.rb", "lib/term/ansicolor/hsl_triple.rb", "lib/term/ansicolor/movement.rb", "lib/term/ansicolor/ppm_reader.rb", "lib/term/ansicolor/rgb_color_metrics.rb", "lib/term/ansicolor/rgb_triple.rb", "lib/term/ansicolor/version.rb"]
  s.files = ["README.md", "bin/term_cdiff", "bin/term_colortab", "bin/term_decolor", "bin/term_display", "bin/term_mandel", "bin/term_snow", "lib/term/ansicolor.rb", "lib/term/ansicolor/attribute.rb", "lib/term/ansicolor/attribute/color256.rb", "lib/term/ansicolor/attribute/color8.rb", "lib/term/ansicolor/attribute/intense_color8.rb", "lib/term/ansicolor/attribute/text.rb", "lib/term/ansicolor/hsl_triple.rb", "lib/term/ansicolor/movement.rb", "lib/term/ansicolor/ppm_reader.rb", "lib/term/ansicolor/rgb_color_metrics.rb", "lib/term/ansicolor/rgb_triple.rb", "lib/term/ansicolor/version.rb"]
  s.homepage = "http://flori.github.com/term-ansicolor"
  s.licenses = ["Apache-2.0"]
  s.rdoc_options = ["--title", "Term-ansicolor - Ruby library that colors strings using ANSI escape sequences", "--main", "README.md"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0")
  s.rubygems_version = "2.4.5.5"
  s.summary = "Ruby library that colors strings using ANSI escape sequences"

  s.installed_by_version = "2.4.5.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<gem_hadar>, ["~> 1.9.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
      s.add_runtime_dependency(%q<tins>, ["~> 1.0"])
    else
      s.add_dependency(%q<gem_hadar>, ["~> 1.9.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<test-unit>, [">= 0"])
      s.add_dependency(%q<tins>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<gem_hadar>, ["~> 1.9.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<test-unit>, [">= 0"])
    s.add_dependency(%q<tins>, ["~> 1.0"])
  end
end
