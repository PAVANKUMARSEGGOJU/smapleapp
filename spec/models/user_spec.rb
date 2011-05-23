require 'spec_helper'

describe User do
  before(:each) do

@attr = {:name=>"exam user", :email=>"sexam@user.com"}

it "should create a new instance given a valid attribute" do

User.create!(:name=>"exam user", :email=>"sexam@user.com")
end

it "should require a name" do
no_name_user =  User.new(:email=>"sasi@exam.com")
no_name_user.should_not_be_valid
end

it "should require a email" do
no_email_user = User.new(:name=>"exam user")
no_email_user.should_not_be_valid

end


it "should reject names that are too long " do

long_name = "a" *51
long_name_user = User.new(@attr.merge(:name=>long_name))
long_name_user.should
end

it "should accept vaild email addresses" do
addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
addresses.each do |address|
valid_email_user = User.new(@attr.merge(:email=>address))
valid_email_user.should be_valid
end
end


it "should reject invalid email addresses" do
addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
addresses.each do |address|
invalid_email_user = User.new(@attr.merge(:email=>address))
invalid_email_user.should_not_be_valid
end
end

it "should reject duplicate email address" do
User.create!(@attr)
user.with_duplicate_email  = User.new(@attr)
user.with_duplicate-email.should_not_be_valid
end
end

it "should reject email address identical up to case " do
upcased_email = @attr[:email].upcase
User.create!(@attr.merge(:email =>upcase_email)
user_with-duplicate_email = User.new(@attr)
user_with_duplicate_email.should_not_be_valid
end
end

end

# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

