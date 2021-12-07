class Conversation < ApplicationRecord
  belongs_to :developer
  belongs_to :business

  has_many :messages, dependent: :destroy

  validates :developer_id, uniqueness: {scope: :business_id}

  accepts_nested_attributes_for :messages

  def other_recipient(user)
    developer == user.developer ? business : developer
  end
end
