class Article < ActiveRecord::Base

  validates :title, presence: true
  validates :text, presence: true

  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :video, styles: {
      :medium => {
      :geometry => "640x480",
      :format => 'mp4'
    },
    :thumb => { :geometry => "160x120", :format => 'jpeg', :time => 10}
  }, :processors => [:transcoder]

  validates_attachment_presence :picture
  validates_attachment_size :picture, :less_than => 5.megabytes
  validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/png']

	# validates_attachment_presence :video
 #  validates_attachment_size :video, :less_than => 100.megabytes
 #  validates_attachment_content_type :video, :content_type => ['video/mp4']
end
