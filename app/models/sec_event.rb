class SecEvent < ActiveRecord::Base
  attr_accessible :description, :ip, :node_id, :room_id, :sensor_id, :sec_event_type_id, :user_id
  
  belongs_to :user
  belongs_to :room
  belongs_to :node
  belongs_to :sensor
  belongs_to :sec_event_type
end