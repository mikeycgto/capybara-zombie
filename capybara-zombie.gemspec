# -*- mode: ruby; encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'capybara/zombie/version'

Gem::Specification.new do |s|
  s.name = "capybara-zombie"
  s.rubyforge_project = "capybara-zombie"
  s.version = Capybara::Zombie::VERSION

  s.authors = ["José Valim"]
  s.email = ["developers@plataformatec.com.br"]
  s.description = "capybara-zombie is a Capybara driver for the zombie in node.js. It is similar to Capybara's rack-test driver in that it runs tests against your rack application directly but fully supports javascript in your application."

  s.files = Dir.glob("{lib,spec}/**/*") + %w(README.rdoc CHANGELOG.rdoc)
  s.extra_rdoc_files = ["README.rdoc"]

  s.homepage = "http://github.com/plataformatec/capybara-zombie"
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.3.6"
  s.summary = "Capybara driver for zombie in node.js"

  s.add_runtime_dependency("capybara", "~> 2.1.0")
  s.add_runtime_dependency("multi_json", "~> 1.8.2")
  s.add_runtime_dependency("childprocess", "~> 0.1.7")

  s.add_development_dependency("bundler")
  s.add_development_dependency("rspec")
  s.add_development_dependency("sinatra")
  s.add_development_dependency("yajl-ruby")
end
