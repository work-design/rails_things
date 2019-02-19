class ThingsRecord < ApplicationRecord
  self.abstract_class = true
  self.primary_key = 'Z_PK'
  establish_connection(
    adapter: 'sqlite3',
    database: RailsThings.config.db_path
  )

end
