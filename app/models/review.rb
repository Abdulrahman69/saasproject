class Review < ActiveRecord::Base
    validates :title , length: {maximum: 50 },presence: true 
    validates :body , length: {maximum: 500 },presence: true 
     belongs_to :bike 
end
