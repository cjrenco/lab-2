class CommentEmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless User.exists?(email: value)
      record.errors.add(attribute, "must be the email of an existing user")
    end
  end
end

class Comment < ApplicationRecord
  validates :content, presence: true
  validates :author, presence: true, comment_email: true


end