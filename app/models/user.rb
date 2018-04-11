class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_one :location
  has_and_belongs_to_many :languages
  # validates :age, :gender, presence: true
  validates_presence_of :age
end
