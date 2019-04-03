class Produto < ApplicationRecord

    belongs_to :departamento, optional: true

    validates :preco, :departamento, presence: true
    validates_length_of :nome, :minimum=> 4
end
