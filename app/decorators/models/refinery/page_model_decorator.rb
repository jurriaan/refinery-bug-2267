puts "Decorating Refinery::Page"
# Edit this file or routes.rb to 'undecorate' Refinery::Page
# For example remove this comment.
Refinery::Page.class_eval do
  def decorated?
    true
  end
end