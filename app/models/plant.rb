class Plant < ApplicationRecord
    validates :name, presence: true
    validates :birthday, presence: true

    has_many_attached :images
    has_many :waterings, dependent: :destroy

    def age
        days_parser(birthday).to_i
    end

    def birth
        self.birthday.strftime("%Y/%m/%d")
    end

    private
    def days_parser(date)
        DateTime.now - DateTime.parse("#{date}")
    end
end
