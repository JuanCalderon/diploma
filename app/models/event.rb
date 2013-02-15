class Event < ActiveRecord::Base
  # attr_accessible :title, :body
  mount_uploader :template, TemplateUploader
end
