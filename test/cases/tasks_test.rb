require_relative 'helper'
require 'active_record/schema_dumper'

class TasksTest < ActiveSupport::TestCase
#   class << self
#     def before_open_database(args)
#       @new_database_config = args[:config].merge('database' => 'postgis_adapter_test2')
#       @new_database_config.stringify_keys!
#     end
#     attr_reader :new_database_config
#   end
#
#   include RGeo::ActiveRecord::AdapterTestHelper
#

#   def setup
#     ActiveRecord::Tasks::DatabaseTasks.create(ARTest.config['default_env2'])
#   end
#
#   def teardown
#     ActiveRecord::Base.remove_connection
#     ActiveRecord::Base.clear_active_connections!
#     TasksTest::DEFAULT_AR_CLASS.connection.execute("DROP DATABASE IF EXISTS \"postgis_adapter_test2\"")
#   end
# #
# #   define_test_methods do
#   def test_create_database_without_enable_extension
#     refute connection.extension_enabled?('postgis')
#   end
#
#   def test_create_database_and_enable_extension
#     connection.enable_extension('postgis')
#     assert connection.extension_enabled?('postgis')
#   end
#
#   def test_empty_sql_dump
#     setup_database_tasks
#     ::ActiveRecord::Tasks::DatabaseTasks.structure_dump(TasksTest.new_database_config, tmp_sql_filename)
#     sql = ::File.read(tmp_sql_filename)
#     assert(sql !~ /CREATE TABLE/)
#   end
#
#   def test_basic_geography_sql_dump
#     setup_database_tasks
#     connection.create_table(:spatial_test) do |t|
#       t.point "latlon", geographic: true
#     end
#     ::ActiveRecord::Tasks::DatabaseTasks.structure_dump(TasksTest.new_database_config, tmp_sql_filename)
#     data = ::File.read(tmp_sql_filename)
#     assert(data.index('latlon geography(Point,4326)'))
#   end
#
#   def test_index_sql_dump
#     setup_database_tasks
#     connection.create_table(:spatial_test) do |t|
#       t.point "latlon", geographic: true
#       t.string "name"
#     end
#     connection.add_index :spatial_test, :latlon, spatial: true
#     connection.add_index :spatial_test, :name, using: :btree
#     ::ActiveRecord::Tasks::DatabaseTasks.structure_dump(TasksTest.new_database_config, tmp_sql_filename)
#     data = ::File.read(tmp_sql_filename)
#     assert(data.index('latlon geography(Point,4326)'))
#     assert data.index('CREATE INDEX index_spatial_test_on_latlon ON spatial_test USING gist (latlon);')
#     assert data.index('CREATE INDEX index_spatial_test_on_name ON spatial_test USING btree (name);')
#   end
#
#   def test_empty_schema_dump
#     setup_database_tasks
#     ::File.open(tmp_sql_filename, "w:utf-8") do |file|
#       ::ActiveRecord::SchemaDumper.dump(::ActiveRecord::Base.connection, file)
#     end
#     data = ::File.read(tmp_sql_filename)
#     assert(data.index('ActiveRecord::Schema'))
#   end
#
#   def test_basic_geometry_schema_dump
#     setup_database_tasks
#     connection.create_table(:spatial_test) do |t|
#       t.geometry 'object1'
#       t.spatial "object2", limit: { srid: connection.default_srid, type: "geometry" }
#     end
#     ::File.open(tmp_sql_filename, "w:utf-8") do |file|
#       ::ActiveRecord::SchemaDumper.dump(connection, file)
#     end
#     data = ::File.read(tmp_sql_filename)
#     assert(data.index("t.spatial \"object1\", limit: {:srid=>#{connection.default_srid}, :type=>\"geometry\"}"))
#     assert(data.index("t.spatial \"object2\", limit: {:srid=>#{connection.default_srid}, :type=>\"geometry\"}"))
#   end
#
#   def test_basic_geography_schema_dump
#     setup_database_tasks
#     connection.create_table(:spatial_test) do |t|
#       t.point "latlon1", geographic: true
#       t.spatial "latlon2", limit: { srid: 4326, type: "point", geographic: true }
#     end
#     ::File.open(tmp_sql_filename, "w:utf-8") do |file|
#       ::ActiveRecord::SchemaDumper.dump(connection, file)
#     end
#     data = ::File.read(tmp_sql_filename)
#     assert(data.index('t.spatial "latlon1", limit: {:srid=>4326, :type=>"point", :geographic=>true}'))
#     assert(data.index('t.spatial "latlon2", limit: {:srid=>4326, :type=>"point", :geographic=>true}'))
#   end
#
#   def test_index_schema_dump
#     setup_database_tasks
#     connection.create_table(:spatial_test) do |t|
#       t.point "latlon", geographic: true
#     end
#     connection.add_index :spatial_test, :latlon, spatial: true
#     ::File.open(tmp_sql_filename, "w:utf-8") do |file|
#       ::ActiveRecord::SchemaDumper.dump(connection, file)
#     end
#     data = ::File.read(tmp_sql_filename)
#     assert data.index('t.spatial "latlon", limit: {:srid=>4326, :type=>"point", :geographic=>true}')
#     assert data.index('add_index "spatial_test", ["latlon"], :name => "index_spatial_test_on_latlon", :spatial => true')
#   end
#
#   def test_add_index_with_nil_options
#     setup_database_tasks
#     connection.create_table(:test) do |t|
#       t.string "name"
#     end
#     connection.add_index :test, :name, nil
#     ::ActiveRecord::Tasks::DatabaseTasks.structure_dump(TasksTest.new_database_config, tmp_sql_filename)
#     data = ::File.read(tmp_sql_filename)
#     assert data.index('CREATE INDEX index_test_on_name ON test USING btree (name);')
#   end
#
#   def test_add_index_via_references
#     setup_database_tasks
#     connection.create_table(:cats)
#     connection.create_table(:dogs) do |t|
#       t.references :cats, index: true
#     end
#     ::ActiveRecord::Tasks::DatabaseTasks.structure_dump(TasksTest.new_database_config, tmp_sql_filename)
#     data = ::File.read(tmp_sql_filename)
#     assert data.index('CREATE INDEX index_dogs_on_cats_id ON dogs USING btree (cats_id);')
#   end
# end
#
# private
#
def connection
  ActiveRecord::Base.connection
end
#
# def tmp_sql_filename
#   ::File.expand_path('../tmp/tmp.sql', ::File.dirname(__FILE__))
# end
#
# def setup_database_tasks
#   ::FileUtils.rm_f(tmp_sql_filename)
#   ::FileUtils.mkdir_p(::File.dirname(tmp_sql_filename))
#   ::ActiveRecord::Tasks::DatabaseTasks.create(TasksTest.new_database_config)
# end

end
