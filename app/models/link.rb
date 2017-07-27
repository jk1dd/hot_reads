class Link < ApplicationRecord
  validates :url, presence: true

  def self.ten_hot
    where(updated_at: 24.hours.ago..Time.now).order('count DESC').limit(10)
  end

  def update_count
    update(count: count+1)
  end
end
