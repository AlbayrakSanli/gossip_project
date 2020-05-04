class Team < ApplicationRecord
validates :first_name,
  presence: {message: "Le nom du membre de l'équipe est obligatoire."},
  length: {minimum: 3, message: "Le nom du membre de l'équipe est trop court."},
  format: {with: /\A[a-zA-Z]+\z/, message: "Le nom du membre de l'équipe ne doit comporter que des lettres."}
  
validates :last_name,
  presence: {message: "Le prénom du membre de l'équipe est obligatoire."},
  length: {minimum: 3, message: "Le prénom du membre de l'équipe est trop court."},
  format: {with: /\A[a-zA-Z]+\z/, message: "Le prénom du membre de l'équipe ne doit comporter que des lettres."}

validates :age,
  presence: {message: "L'âge du membre de l'équipe est obligatoire."},
  length: {maximum: 3, message: "L'âge du membre de l'équipe est trop grand."},
  format: {with: /\A[0-9]+\z/, message: "L'âge du membre de l'équipe ne doit comporter que des chiffres."}

validates :competence,
  presence: {message: "Le contenu est obligatoire."},
  length: {maximum: 150, message: "Le contenu est trop long."},
  uniqueness: {message: "Ce contenu existe déjà."}

validates :taste,
  presence: {message: "Le contenu est obligatoire."},
  length: {maximum: 150, message: "Le contenu est trop long."},
  uniqueness: {message: "Ce contenu existe déjà."}
end
