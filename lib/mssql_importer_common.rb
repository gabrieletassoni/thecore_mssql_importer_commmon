require 'tiny_tds'

class MSSQLImporterCommon
  # "Just tests connection to the DB configured in Settings."
  def self.ping_mssql_server
    connect
    puts 'Connecting to SQL Server'

    if @client.active? == true then puts 'Done' end

    @client.close
  end

  # "Retrieves all records from the reading table."
  def self.get_all_records
    connect
    # Read all employees
    puts "Reading data from table"
    @client.execute("SELECT * FROM #{Settings.ns('mssql_connector').table_read}").each do |row|
      puts row
    end
  end

  def self.connect
    conn = {
      username: Settings.ns('mssql_connector').username,
      password: Settings.ns('mssql_connector').password,
      host: Settings.ns('mssql_connector').host,
      port: Settings.ns('mssql_connector').port,
      database: Settings.ns('mssql_connector').database,
    }
    @client = TinyTds::Client.new conn
  end
end
