class Gestor < ApplicationRecord
    validates :nombre, :descripcion, :estado, presence: {message: "Debe ingresar este dato obligatorio"}
end
