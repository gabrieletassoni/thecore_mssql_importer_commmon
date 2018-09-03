class AddSqlServerConnectorParams < ActiveRecord::Migration[5.2]
  def change
    Settings.ns('mssql_connector').username = 'sa'
    Settings.ns('mssql_connector').password = 'your_password'
    Settings.ns('mssql_connector').host = 'localhost'
    Settings.ns('mssql_connector').port = 1433
    Settings.ns('mssql_connector').database = 'test'
    Settings.ns('mssql_connector').table_read = 'test_table'
    Settings.ns('mssql_connector').latest_migration_code = ''
  end
end
