class Email
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user

  field :address, type: String
  field :author_type, type: String
end