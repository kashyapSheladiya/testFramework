# == Schema Information

# Table Name: users

# id :integer
# first_name :string
# last_name :string
# email :string
# active :boolean default(TRUE)
# created_at :datetime not null
# updated_at :datetime not null


class User < ApplicationRecord
    scope :active_users, -> {where(active: true)}
    scope :inactive_users, -> {where(active: false)}

    validates :first_name, presence: true
    validates :last_name, presence: true

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
end