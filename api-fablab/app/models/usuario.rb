class Usuario < ApplicationRecord
  has_secure_password

  validates :nome, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  enum :tipo, { usuario: "Usuário", aluno: "Aluno", admin: "Admin" }
end
