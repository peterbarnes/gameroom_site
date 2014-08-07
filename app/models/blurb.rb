class Blurb
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name,    type: String
  field :content, type: String

  validates_presence_of :name
  validates_presence_of :content
end
