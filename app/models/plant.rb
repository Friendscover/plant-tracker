class Plant < ApplicationRecord
    validates :name, presence: true
    validates :birthday, presence: true
    validates :last_watering, presence: true

    has_many_attached :images

    def age
        age = DateTime.now - DateTime.parse("#{birthday}")
        age.to_i
    end

    def birth
        self.birthday.strftime("%Y/%m/%d")
    end
end
