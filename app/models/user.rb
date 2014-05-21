require 'bcrypt'
class User
  include Mongoid::Document
  field :username, type: String
  field :email, type: String
  field :password_digest, type: String

  # validates :username, presence: true, length: { maximum: 30 },
  #                       uniqueness: true
  # validates :email, presence: true, 
  #                   uniqueness: true

  # validates :password_digest, length: { minimum: 6 }, :on => :create

  

  def password
    @password
  end

  def password=(new_password)
    @password = new_password
    self.password_digest = BCrypt::Password.create(new_password)
  end

  def authenticate(test_password)
    if BCrypt::Password.new(self.password_digest) == test_password
      self
    else
      false
    end
  end
end
