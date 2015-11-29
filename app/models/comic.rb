require 'uri'

class Comic < ActiveRecord::Base
  validates :series, presence: true
  validates :year, presence: true
  validates :uri, presence: true
  validate :uri do
    begin
      URI.parse(uri)
    rescue URI::InvalidURIError => e
      errors.add(:uri, "URI must be valid: #{e}")
    end
  end
end
