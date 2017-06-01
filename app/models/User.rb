class User
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :emails, dependent: :destroy

  field :name, type: String
end