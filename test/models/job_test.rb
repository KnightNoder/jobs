# == Schema Information
#
# Table name: jobs
#
#  id          :integer          not null, primary key
#  company     :string
#  description :text
#  title       :string
#  url         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#

require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
