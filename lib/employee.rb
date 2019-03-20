require 'securerandom'

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store, presence: true
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true }
  validates :hourly_rate, numericality: { greater_than: 40 }
  validates :hourly_rate, numericality: { less_than: 200 }

  before_save :generate_password

  # after_create :generate_password
  # before_create :generate_password

  private

  # Password generation before create (also worked for before save)
  def generate_password
    self.password = SecureRandom.base64(6)
  end

  # Password generation after create
  # def generate_password
  #   self.password = SecureRandom.base64(6)
  #   self.update(password: self.password)
  # end
end


