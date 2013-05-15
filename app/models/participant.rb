class Participant < ActiveRecord::Base
  attr_accessible :event_id, :name, :email, :code, :generated, :accesed, :status
  belongs_to :event
end
