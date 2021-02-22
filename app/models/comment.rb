class Comment < ApplicationRecord
  has_rich_text :answer
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable
  broadcasts_to :question
  broadcasts
end
