class Album < ApplicationRecord
    has_many :tracks, dependent: :destroy
    has_and_belongs_to_many :tags
end
