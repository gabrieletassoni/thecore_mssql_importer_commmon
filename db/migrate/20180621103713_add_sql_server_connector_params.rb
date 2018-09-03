class AddSqlServerConnectorParams < ActiveRecord::Migration[5.2]
  def change
    Settings.ns('mssql_connector').username = 'bancolini'
    Settings.ns('mssql_connector').password = 'B@2(0l121'
    Settings.ns('mssql_connector').host = '10.0.123.1'
    Settings.ns('mssql_connector').port(kind: 'integer', default: 3499)
    Settings.ns('mssql_connector').port = 3500
    Settings.ns('mssql_connector').database = 'bancolini'
    Settings.ns('mssql_connector').table_read = 'test'
    Settings.ns('mssql_connector').latest_migration_code = ''
  end
end
