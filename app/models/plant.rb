class Plant < ApplicationRecord
    validates :name, presence: true
    validates :birthday, presence: true
    validates :last_watering, presence: true

    has_many_attached :images

    def age
        days_parser(birthday).to_i
    end

    def birth
        self.birthday.strftime("%Y/%m/%d")
    end

    def days_since_watering
        days_parser(last_watering).to_i
    end

    private
    def days_parser(date)
        days = DateTime.now - DateTime.parse("#{date}")
    end
end
