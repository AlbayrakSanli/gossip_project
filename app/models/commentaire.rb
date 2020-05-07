class Commentaire < ApplicationRecord
  validates :commentaire,
    presence: {message: "Vous n'avez rien mis en commentaire."}
end
