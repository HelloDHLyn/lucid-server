# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Application.create!(:name => 'Lucid', :package => 'com.lynlab.lucid', :platform => 'android')
Release.create!(:applicaton_id => 1, :is_latest => true, :is_release => false, :version_code => 1, :version_name => '0.0.1', :path => '')