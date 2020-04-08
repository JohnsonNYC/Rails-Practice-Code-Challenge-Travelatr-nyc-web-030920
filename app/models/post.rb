class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination

    validates :content, presence: true, length: {minimum: 100}

    # didn't work
    # validates :destination, presence: true
    # validates :blogger, presence: true
    
    

    def num_of_likes
        self.likes
    end
    
end
