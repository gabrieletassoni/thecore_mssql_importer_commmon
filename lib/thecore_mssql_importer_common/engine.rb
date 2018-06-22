require 'thecore'
module ThecoreMssqlImporterCommon
  class Engine < ::Rails::Engine

    initializer 'thecore_mssql_importer_common.add_to_migrations' do |app|
      unless app.root.to_s == root.to_s
        # APPEND TO MAIN APP MIGRATIONS FROM THIS GEM
        config.paths['db/migrate'].expanded.each do |expanded_path|
          app.config.paths['db/migrate'] << expanded_path
        end
      end
    end

  end
end
