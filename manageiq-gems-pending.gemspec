# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'manageiq/gems/pending/version'

Gem::Specification.new do |s|
  s.name          = "manageiq-gems-pending"
  s.version       = ManageIQ::Gems::Pending::VERSION
  s.authors       = ["ManageIQ Developers"]

  s.summary       = "Core utility classes for ManageIQ."
  s.description   = "Classes pending extraction to their own gems."
  s.homepage      = "https://github.com/ManageIQ/manageiq-gems-pending/"
  s.license       = "Apache-2.0"

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib", "lib/gems/pending", "lib/gems/pending/util"]

  s.required_ruby_version = "> 2.4"

  s.add_runtime_dependency "activesupport",           "~> 6.0"
  s.add_runtime_dependency "awesome_spawn",           "~> 1.5"
  s.add_runtime_dependency "aws-sdk-s3",              "~> 1.0"
  s.add_runtime_dependency "bundler",                 "~> 2.1", ">= 2.1.4", "!= 2.2.10"
  s.add_runtime_dependency "erubis",                  "= 2.7.0" # For winrm-elevated; can be removed when we upgrade to winrm-elevated >= 1.1.2
  s.add_runtime_dependency "fog-openstack",           "~> 0.3"
  s.add_runtime_dependency "more_core_extensions",    "~> 4.4"
  s.add_runtime_dependency "nokogiri",                "~> 1.13", ">= 1.13.6"
  s.add_runtime_dependency "sys-proctable",           "~> 1.2.5"
  s.add_runtime_dependency "sys-uname",               "~> 1.2.1"
  s.add_runtime_dependency "winrm",                   "~> 2.1"
  s.add_runtime_dependency "winrm-elevated",          "~> 1.0.1"

  s.add_development_dependency "ftpd",                      "~> 2.1.0"
  s.add_development_dependency "manageiq-style"
  s.add_development_dependency "rake",                      ">= 12.3.3"
  s.add_development_dependency "rspec",                     "~> 3.5.0"
  s.add_development_dependency "simplecov",                 ">= 0.21.2"
  s.add_development_dependency "timecop",                   "~> 0.9.1"
  s.add_development_dependency "xml-simple",                "~> 1.1.0"
end
