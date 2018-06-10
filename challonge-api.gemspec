# -*- encoding: utf-8 -*-
# stub: challonge-api 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "challonge-api".freeze
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["CHALLONGE! LLC + Frederik Spang Thomsen".freeze]
  s.date = "2018-06-10"
  s.email = "oss@challonge.com".freeze
  s.files = ["lib/challonge".freeze, "lib/challonge-api.rb".freeze, "lib/challonge/api.rb".freeze, "lib/challonge/configuration.rb".freeze, "lib/challonge/match.rb".freeze, "lib/challonge/participant.rb".freeze, "lib/challonge/tournament.rb".freeze]
  s.homepage = "http://challonge.com".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Preconfigured ActiveResource classes for integrating with CHALLONGE!'s API - https://api.challonge.com/v1".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activeresource>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.7.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    else
      s.add_dependency(%q<activeresource>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.7.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    end
  else
    s.add_dependency(%q<activeresource>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.7.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
  end
end
