class EmpruntDoc < ApplicationRecord
  belongs_to :adherent
  belongs_to :document
end
