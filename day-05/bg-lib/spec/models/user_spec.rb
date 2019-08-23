require "rails_helper"

RSpec.describe User, type: :model do
  before do
    @user = build(:user)
  end

  it "should be valid" do
    expect(@user.valid?).to be_truthy
  end

  it "should require a name" do
    @user.name = ""
    expect(@user.valid?).to be_falsey
  end

  it "should require an email" do
    @user.email = ""
    expect(@user.valid?).to be_falsey
  end

  it "should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      expect(@user.valid?).to be_truthy
    end
  end

  it "should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      expect(@user.valid?).to be_falsey
    end
  end

  it "should have a unique email address" do
    skip
    user_a = create(:user)
    user_b = user_a.dup

    puts user_a.email
    puts user_b.email

    # user_b.save

    expect(@user.errors[:email]).to be_present
    expect(@user.valid?).to be_falsey
  end

  it "should require a password" do
    @user.password = @user.password_confirmation = " " * 6
    expect(@user.valid?).to be_falsey
  end

  it "should have a minimum length for password" do
    @user.password = @user.password_confirmation = "a" * 5
    expect(@user.valid?).to be_falsey
  end
end
