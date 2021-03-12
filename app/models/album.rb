class Album < ApplicationRecord
    belongs_to :user
    has_many_attached :images,dependent: :destroy
    has_many :comments
    validates :album_name,presence:true
    validates :album_description,presence:true
    
end
