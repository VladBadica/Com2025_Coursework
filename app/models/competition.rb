class Competition < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :date, presence: true
end
