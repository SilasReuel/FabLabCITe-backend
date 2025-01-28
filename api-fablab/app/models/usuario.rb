class Usuario < ApplicationRecord
  enum :tipo, { usuario: "Usuário", aluno: "Aluno", admin: "Admin" }
end
