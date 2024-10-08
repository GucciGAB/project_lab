class Event < ApplicationRecord
    validates :title, presence: true, format: { with: /\A[a-zA-Z0-9\s]+\z/, message: "must not contain special characters" }
    validates :content, presence: true, length: {minimun: 10, maximum: 20}
    validates :location, presence: true, inclusion: {in: %w(SPC Calauan Tiaong)}
    validates :end_date, comparison: { greater_than_or_equal_to: :start_date, message: "must be after or equal to the start date" }
end
