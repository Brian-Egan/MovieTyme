# == Schema Information
#
# Table name: users
#
#  id                    :integer          not null, primary key
#  email                 :string(255)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  movies_id             :integer
#  password_digest       :string(255)
#  password_confirmation :string(255)
#  password              :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :password_digest, :movie_ids, :password, :password_confirmation
  has_many :movies
  has_secure_password
end
