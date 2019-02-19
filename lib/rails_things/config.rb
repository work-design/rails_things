require 'active_support/configurable'

module RailsThings #:nodoc:
  include ActiveSupport::Configurable

  configure do |config|
    config.db_path = '~/Library/Containers/com.culturedcode.things/Data/Library/Application Support/Cultured Code/Things/ThingsLibrary.db'
  end

end
