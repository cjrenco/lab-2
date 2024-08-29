
class AuthorEmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless User.exists?(email: value)
      record.errors.add(attribute, "must be the email of an existing user")
    end
  end
end

class Post < ApplicationRecord
  validates :published, presence: true
  validates :title, presence: true, length: {maximum: 100}
  validates :content, presence: true, length: {minimum: 140}
  validates :author, presence: true, author_email: true

  enum published: {
    unpublished: 0,
    published: 1
  }

end