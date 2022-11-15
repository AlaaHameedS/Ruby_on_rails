class Book < ApplicationRecord

    belongs_to :author
    #serialize :answers
end
