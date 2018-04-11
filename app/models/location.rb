class Location < ApplicationRecord
    belongs_to :user
    # validates :locale, presence: true
    validates_presence_of :locale
end
