module SpreeChimpy
  module Generators
    class InstallGenerator < Rails::Generators::Base
      class_option :auto_run_migrations, type: :boolean, default: false

      source_root File.expand_path('../../../templates/', __FILE__)

      def copy_initializer_file
        copy_file 'solidus.rb', "config/initializers/solidus_chimpy.rb"
      end

      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=solidus_chimpy'
      end

      def run_migrations
        run_migrations = options[:auto_run_migrations] || ['', 'y', 'Y'].include?(ask 'Would you like to run the migrations now? [Y/n]')
        if run_migrations
          run 'bundle exec rake db:migrate'
        else
          puts 'Skipping rake db:migrate, don\'t forget to run it!'
        end
      end
    end
  end
end
