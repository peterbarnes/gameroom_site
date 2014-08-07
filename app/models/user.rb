class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActiveModel::SecurePassword

  field :name,            type: String
  field :password_digest, type: String
  has_secure_password

  validates_presence_of :name
  validates_uniqueness_of :name

end
