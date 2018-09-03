require  'tracker_importer'

namespace :mssql_importer_common do
  desc "Just tests connection to the DB configured in Settings."
  task ping_mssql_server: :environment do
    MSSQLImporterCommon.ping_mssql_server
  end

  desc "Retrieves all records from the reading table."
  task get_all_records: :environment do
    MSSQLImporterCommon.get_all_records
  end
end
