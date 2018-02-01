class User < ApplicationRecord

		has_many :comments, through: :pins, dependent: :destroy
		has_many :pins, dependent: :destroy

		validates :name, presence: true, length: { maximum: 20 }

end
