class Tail < ActiveRecord::Base
  validates :title, length: { maximum: 140 }, presence: true
  validates :teller, length: { maximum: 70 }
  validates :content, presence: true
end
