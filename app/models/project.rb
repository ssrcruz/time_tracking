class Project < ActiveRecord::Base
  has_many :time_entries
  validates :name, presence: true
  validates :max_hours, presence: true


  def hour_count
    entries = self.time_entries
    entries.reduce(0) do |sum, e|
      sum + e.duration
    end
  end
end

# <%= c.label :developer_id %>
# <%= c.number_field :developer_id %>
