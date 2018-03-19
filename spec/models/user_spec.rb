require 'rails_helper'

RSpec.describe User, type: :model do
  
  it "is valid with valid attributes" do
    expect(User.new(name: "Example User", email: "user@example.com",
                    password: "foobar", password_confirmation: "foobar")).to be_valid
  end
  
  it "is not valid without a name" do
    user = User.new(name: nil)
    expect(user).to_not be_valid
  end
  
  it "is not valid without a blank name" do
    user = User.new(name: "     ")
    expect(user).to_not be_valid
  end
  
  it "is not valid without a blank email" do
    user = User.new(email: "     ")
    expect(user).to_not be_valid
  end
  
end
