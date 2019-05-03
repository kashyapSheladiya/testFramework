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
end