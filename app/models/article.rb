class Article < ActiveRecord::Base

  validates :title, presence: true
  validates :text, presence: true

  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates_attachment_presence :picture
  validates_attachment_size :picture, :less_than => 5.megabytes
  validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/png']
end
