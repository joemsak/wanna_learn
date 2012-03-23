require 'active_record'

db = YAML.load(File.open('config/database.yml'))['test']
ActiveRecord::Base.establish_connection(db)
