# == Schema Information
#
# Table name: users
#
#  id                    :integer          not null, primary key
#  name                  :string(255)
#  email                 :string(255)
#  password_digest       :string(255)
#  remember_digest       :string(255)
#  admin                 :boolean          default(FALSE)
#  activation_digest     :string(255)
#  activated             :boolean          default(FALSE)
#  activated_at          :datetime
#  reset_digest          :string(255)
#  reset_sent_at         :datetime
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  authentication_digest :string(255)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
