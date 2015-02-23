class Todo < ActiveRecord::Base
  default_scope { order("created_at DESC") }

  scope :incomplete, -> { where(complete: false) }
  scope :complete, -> { where(complete: true) }

  validates :content, presence: true
end
