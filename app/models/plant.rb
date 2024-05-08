class Plant < ApplicationRecord
    validates :name, presence: true
    validates :birthday, presence: true
    validates :last_watering, presence: true

    has_many_attached :images
end
