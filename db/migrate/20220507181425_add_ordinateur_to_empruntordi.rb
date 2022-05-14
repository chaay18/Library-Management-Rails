class AddOrdinateurToEmpruntordi < ActiveRecord::Migration[6.1]
  def change
    add_reference :empruntordis, :ordinateur, foreign_key: true
  end
end
