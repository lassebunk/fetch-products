require "rails/generators"

module Fetch
  module Products
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path('../templates', __FILE__)
      
      def self.next_migration_number(path)
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end
      
      def create_table
        migration_template "create_products.rb", "db/migrate/create_products.rb"
      end

      def create_model
        copy_file "product.rb", "app/models/product.rb"
      end

      def create_fetch
        copy_file "product_fetch.rb", "app/models/product_fetch.rb"
      end
    end
  end
end