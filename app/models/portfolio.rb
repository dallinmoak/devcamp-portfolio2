class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  include Placeholder
  def self.angular
    where(subtitle: "Angular")
  end

  def self.ruby_on_rails
    where(subtitle: "Ruby on Rails")
  end
  #alternate syntax:
  # scope :ruby_on_rails, -> {where(subtitle: "Ruby on Rails")}

  after_initialize :set_defaults
  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '300', width: '200')
  end
end
