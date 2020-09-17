class User < ApplicationRecord
    has_many :lists, dependent: :destroy

    validates :name, presence: true, length: { maximum: 20 }
end
