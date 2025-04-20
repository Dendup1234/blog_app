class Article < ApplicationRecord
    #For creating one to many relationship
    include Visible

    has_many :comments, dependent: :destroy

    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 10}

end
