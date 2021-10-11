require "bundler"
Bundler.require

require "active_record"

require File.expand_path("../../lib/attribute_defaults", __FILE__)

ActiveRecord::Base.configurations = YAML::load(IO.read(File.dirname(__FILE__) + "/database.yml"))
ActiveRecord::Base.logger = ActiveSupport::Logger.new(File.dirname(__FILE__) + "/debug.log")
ActiveRecord::Base.establish_connection(:test)

load(File.dirname(__FILE__) + "/schema.rb")


require_relative("test_classes")
