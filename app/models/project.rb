class Project < ActiveRecord::Base
has_many :time_entries
validates :name, presence: true
validates :max_hours, presence: true
end
