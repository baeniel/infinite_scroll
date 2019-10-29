class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader

  def self.create_posts
    50.times do
      Post.create(title: "게시물", body: "ㅁㅇㄹㅁㄴㅇㄹㅁㄹㅁㄴㄹ", user: User.first, remote_image_url: "https://insomenia.com/photos/random?keyword=toy")
    end
  end

end
