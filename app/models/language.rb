class Language < ApplicationRecord
  has_and_belongs_to_many :users
  # validates :name, presence: true
  validates_presence_of :name
end
