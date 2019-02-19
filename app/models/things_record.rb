class ThingsRecord < ApplicationRecord
  self.abstract_class = true
  establish_connection(
    adapter: 'sqlite3',
    database: RailsThings.config.db_path
  )

end
