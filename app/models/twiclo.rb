class Twiclo < ApplicationRecord
    validates :content, presence: true
    validates :content, presence: true, length: { in: 1..140 }
end
