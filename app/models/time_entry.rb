class TimeEntry < ActiveRecord::Base
  belongs_to :project
  belongs_to :developer
  validates :developer_id, presence: true
  validates :project_id, presence: true
  validates :duration, presence: true
  validates :worked_on, presence: true

end
