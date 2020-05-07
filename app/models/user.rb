class User < ApplicationRecord
has_secure_password

validates :email,
  presence: {message: "L'email est obligatoire."},
  uniqueness: {message: "L'email est déjà associé à un compte."},
  format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "L'email n'est pas au bon format."}

validates :password_digest,
  presence: true,
  length: {minimum: 6}

end
