class Event < ApplicationRecord

  belongs_to :organization

  validates :hostname, presence: true
  validates :organization, presence: true


end
