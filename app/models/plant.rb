class Plant < ApplicationRecord
    validates :name, presence: true
    validates :birthday, presence: true
    validates :last_watering, presence: true
end
