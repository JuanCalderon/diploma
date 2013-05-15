class Event < ActiveRecord::Base
  attr_accessible :name, :description, :template, :x, :y, :width, :height, :status
  mount_uploader :template, TemplateUploader
  has_many :participants
end
