class Enterprise < ApplicationRecord
    belongs_to :sector
    belongs_to :user
end
