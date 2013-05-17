# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

page = Refinery::Page.create!({:title => "Tree"});
non_draft = page.children.create!({:title => "2nd level"});
draft = page.children.create!({:title => "2nd level draft", draft: true});
draft.children.create!({:title => '3rd level non-draft, with draft parent'});
page = Refinery::Page.create!({:title => "root draft", draft: true});
page.children.create!({:title => '2rd level non-draft, with draft parent'})