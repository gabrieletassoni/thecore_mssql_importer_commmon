$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "thecore_mssql_importer_common/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "thecore_mssql_importer_common"
  s.version     = ThecoreMssqlImporterCommon::VERSION
  s.authors     = ["Gabriele Tassoni"]
  s.email       = ["gabriele.tassoni@gmail.com"]
  s.homepage = 'https://www.taris.it' #    = "TODO"
  s.summary = 'Thecorized thecore_mssql_importer_common' #     = "TODO: Summary of ThecoreMssqlImporterCommon."
  s.description = 'Thecorized thecore_mssql_importer_common full description.' # = "TODO: Description of ThecoreMssqlImporterCommon."
  s.license     = "MIT"
  s.post_install_message = %q{
Please remember to change the following params either using a migration or by editing via the GUI:

Settings.ns('mssql_connector').username = 'sa'
Settings.ns('mssql_connector').password = 'your_password'
Settings.ns('mssql_connector').host = 'localhost'
Settings.ns('mssql_connector').port = 1433
Settings.ns('mssql_connector').database = 'test'
Settings.ns('mssql_connector').table_read = 'test_table'
Settings.ns('mssql_connector').latest_migration_code = ''

}

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency 'thecore_backend_commons', '~> 2.0'
  s.add_dependency 'tiny_tds', '~> 2.1'
end
