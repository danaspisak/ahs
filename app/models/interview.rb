class Interview < ActiveRecord::Base
  has_many :responses
  accepts_nested_attributes_for :responses
  belongs_to :survey
  belongs_to :contact
end
