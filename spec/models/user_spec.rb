require 'rails_helper'

describe User do
  describe "fields" do
    it "has a 'name'" do
      user = User.new(name: "Laura")

      expect(user.name).to match ("Laura")
    end

    it "has many emails" do
      email_1 = Email.new(address: "laura@test.com")
      email_2 = Email.new(address: "laura@mail.com")
      user = User.new(name: "Laura")

      user.emails << email_1
      user.emails << email_2
      user.save

      expect(user.emails).to match [email_1, email_2]
    end
  end
end