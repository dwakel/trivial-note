class Note < ApplicationRecord
    has_many :items, dependent: :destroy
end
