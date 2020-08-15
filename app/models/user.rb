# app/models/user.rb
class User < ActiveRecord::Base
  validates :name, presence: {
      message: "Le titre doit être renseigné."
  }

  validates :name, uniqueness: {
      message: "Ce titre est déjà pris."
  }
end
