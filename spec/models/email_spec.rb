require 'rails_helper'

describe Email do
  describe "fields" do
    it "has an 'address'" do
      email = Email.new(address: "laura@test.com")

      expect(email.address).to match ("laura@test.com")
    end

    it "has an 'author_type'" do
      email = Email.new(author_type: "admin")

      expect(email.author_type).to match ("admin")
    end

    it "belongs to a User" do
      user = User.new(name: "Laura")

      email = Email.new(address: "laura@test.com", user_id: user.id)

      expect(email.user_id).to match (user.id)
    end
  end
end