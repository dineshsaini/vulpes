module Cache
  class Manager < Vulpes::Object

    def initialize
      super("Cache Manager")
      create_db_instance
    end

    def self.get_instance
      @instance ||= new
    end

    def cache_dork(dork)


    end

    def get_dorks

    end


    private
      
    def create_db_instance
      db_type = Vulpes::Config.get('db_type')

      @db_instance = case db_type
        when "mysql"
          require 'db/sql/connector'
          Db::Sql::Connector.get_instance
        else
          raise InvalidDatabaseError, "invaild database '#{db_type}' in configuration."
        end

      Vulpes::Logger.debug("Acquired DB connector of type(#{@db_instance})")
    end

    private_class_method :new

  end
end
