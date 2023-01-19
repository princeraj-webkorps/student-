class Gadget < ApplicationRecord

    mount_uploader :image, ImageUploader
    serialize :image, JSON

    belongs_to :user, optional: true

    validates :title,:brand,:price, presence: true

    validates :description,length:{maximum:1000, too_long:"%{count} characters is the maximum allowed"}
    validates :title,length:{maximum:140, too_long:"%{count} characters is the maximum allowed"}
    validates_numericality_of :price, numerically:{only_integer:true},length:{maximum:7}

    BRAND=%w{Mi Realme Samsung Infinix Oppo Apple Vivo Honor Asus Poco Motorola Oneplus}
    CONDITION=%w{New Refurnished Old Better_performance Latest_Design}

end
