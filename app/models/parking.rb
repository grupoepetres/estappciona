class Parking < ApplicationRecord
	belongs_to :user
    belongs_to :parkingtype
    has_many :additionalservices, :dependent => :destroy
    has_many :rates, :dependent => :destroy
    has_many :parkinghistories, :dependent => :destroy
    #mount_uploader :imagen, PictureUploader

def self.search(search)
  where("departamento LIKE ?", "%#{search}%") 
  where("ciudad LIKE ?", "%#{search}%")
  where("distrito LIKE ?", "%#{search}%")
end

end
