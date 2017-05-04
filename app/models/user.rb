class User < ActiveRecord::Base
  validates :frist_name, :last_name, :hashed_password, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :trips

  include BCrypt

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.hashed_password = @password
  end

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    return user if user && user.password == password
  end
end
