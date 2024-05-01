class AddAdmin < ActiveRecord::Migration[7.1]
  def change
    User.create! do |u|
      u.email = "admin@gmail.com"
      u.password = "mini-admini"
      u.admin = true
    end
  end
end
