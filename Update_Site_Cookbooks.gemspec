# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "Update_Site_Cookbooks/version"

Gem::Specification.new do |s|
  s.name        = "Update_Site_Cookbooks"
  s.version     = Update_Site_Cookbooks::VERSION
  s.authors     = ["da99"]
  s.email       = ["i-hate-spam-45671204@mailinator.com"]
  s.homepage    = "https://github.com/da99/Update_Site_Cookbooks"
  s.summary     = %q{Update opscode cookbooks you downloaded.}
  s.description = %q{
    If you use git and "knife cookbook site": you can use this
    gem to update (aka re-download) your site cookbooks 
    to their latest versions.  It uses your git branch names
    that begin with "chef-vender-" to determine which 
    cookbooks to download.
  }

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'bacon'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'Bacon_Colored'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'Exit_Zero'
  
  # s.rubyforge_project = "Update_Site_Cookbooks"
  # specify any dependencies here; for example:
  s.add_runtime_dependency "chef"
end
