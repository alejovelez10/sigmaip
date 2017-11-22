# == Schema Information
#
# Table name: claims
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  company    :string
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  typep      :string
#

class Claim < ApplicationRecord
end
