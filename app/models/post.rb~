class Post < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    validates :title, presence: true, length: { minimum: 5 }
    #message: "% Title is not a valid" }, allow_nil: true
end

