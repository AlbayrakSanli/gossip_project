class Gossip < ApplicationRecord
  validates :title,
    presence: {message: "Le titre est obligatoire."},
    length: {minimum:3, maximum: 14, message: "Le titre est trop long."}

  validates :author,
    presence: {message: "Le nom de l'auteur est obligatoire."},
    length: {minimum: 3, message: "Le nom de l'auteur est trop court."},
    format: {with: /\A[a-zA-Z\s]+\z/, message: "Le nom de l'auteur ne doit comporter que des lettres."}

  validates :content,
    presence: {message: "Le contenu est obligatoire."},
    length: {maximum: 150, message: "Le contenu est trop long."},
    uniqueness: {message: "Ce contenu existe déjà."}

end
