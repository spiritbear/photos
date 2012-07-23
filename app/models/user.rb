class User < ActiveRecord::Base
  # attr_accessible :title, :body
  acts_as_authentic do |c|
    c.login_field = :email
  end
end
