puts "Decorating Refinery::Page"
Refinery::Page.class_eval do
  def decorated?
    true
  end
end