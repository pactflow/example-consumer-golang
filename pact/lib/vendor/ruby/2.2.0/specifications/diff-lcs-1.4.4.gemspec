# -*- encoding: utf-8 -*-
# stub: diff-lcs 1.4.4 ruby lib

Gem::Specification.new do |s|
  s.name = "diff-lcs"
  s.version = "1.4.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/halostatue/diff-lcs/issues", "homepage_uri" => "https://github.com/halostatue/diff-lcs", "source_code_uri" => "https://github.com/halostatue/diff-lcs" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["Austin Ziegler"]
  s.date = "2020-07-01"
  s.description = "Diff::LCS computes the difference between two Enumerable sequences using the\nMcIlroy-Hunt longest common subsequence (LCS) algorithm. It includes utilities\nto create a simple HTML diff output format and a standard diff-like tool.\n\nThis is release 1.4.3, providing a simple extension that allows for\nDiff::LCS::Change objects to be treated implicitly as arrays and fixes a\nnumber of formatting issues.\n\nRuby versions below 2.5 are soft-deprecated, which means that older versions\nare no longer part of the CI test suite. If any changes have been introduced\nthat break those versions, bug reports and patches will be accepted, but it\nwill be up to the reporter to verify any fixes prior to release. The next\nmajor release will completely break compatibility."
  s.email = ["halostatue@gmail.com"]
  s.executables = ["htmldiff", "ldiff"]
  s.extra_rdoc_files = ["Code-of-Conduct.md", "Contributing.md", "History.md", "License.md", "Manifest.txt", "README.rdoc", "docs/COPYING.txt", "docs/artistic.txt"]
  s.files = ["Code-of-Conduct.md", "Contributing.md", "History.md", "License.md", "Manifest.txt", "README.rdoc", "bin/htmldiff", "bin/ldiff", "docs/COPYING.txt", "docs/artistic.txt"]
  s.homepage = "https://github.com/halostatue/diff-lcs"
  s.licenses = ["MIT", "Artistic-2.0", "GPL-2.0+"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8")
  s.rubygems_version = "2.4.5.5"
  s.summary = "Diff::LCS computes the difference between two Enumerable sequences using the McIlroy-Hunt longest common subsequence (LCS) algorithm"

  s.installed_by_version = "2.4.5.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe-doofus>, ["~> 1.0"])
      s.add_development_dependency(%q<hoe-gemspec2>, ["~> 1.1"])
      s.add_development_dependency(%q<hoe-git>, ["~> 1.6"])
      s.add_development_dependency(%q<hoe-rubygems>, ["~> 1.0"])
      s.add_development_dependency(%q<rspec>, ["< 4", ">= 2.0"])
      s.add_development_dependency(%q<rake>, ["< 14", ">= 10.0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.22"])
    else
      s.add_dependency(%q<hoe-doofus>, ["~> 1.0"])
      s.add_dependency(%q<hoe-gemspec2>, ["~> 1.1"])
      s.add_dependency(%q<hoe-git>, ["~> 1.6"])
      s.add_dependency(%q<hoe-rubygems>, ["~> 1.0"])
      s.add_dependency(%q<rspec>, ["< 4", ">= 2.0"])
      s.add_dependency(%q<rake>, ["< 14", ">= 10.0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<hoe>, ["~> 3.22"])
    end
  else
    s.add_dependency(%q<hoe-doofus>, ["~> 1.0"])
    s.add_dependency(%q<hoe-gemspec2>, ["~> 1.1"])
    s.add_dependency(%q<hoe-git>, ["~> 1.6"])
    s.add_dependency(%q<hoe-rubygems>, ["~> 1.0"])
    s.add_dependency(%q<rspec>, ["< 4", ">= 2.0"])
    s.add_dependency(%q<rake>, ["< 14", ">= 10.0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<hoe>, ["~> 3.22"])
  end
end
