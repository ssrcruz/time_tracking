class Project < ActiveRecord::Base
validates :name, presence: true
validates :max_hours, presence: true
end
