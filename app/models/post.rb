class Post < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_attached_file :image, styles: { medium: "500x450#", thumb: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
