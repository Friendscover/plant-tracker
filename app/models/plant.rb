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

    def images=(attachables)
        attachables = Array(attachables).compact_blank

       if attachables.any?
         attachment_changes["images"] =
           ActiveStorage::Attached::Changes::CreateMany.new("images", self, images.blobs + attachables)
       end
    end

    private
    def days_parser(date)
        DateTime.now - DateTime.parse("#{date}")
    end
end
