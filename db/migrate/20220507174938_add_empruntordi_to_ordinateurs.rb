class AddEmpruntordiToOrdinateurs < ActiveRecord::Migration[6.1]
  def change
     add_reference :ordinateurs, :empruntordi, foreign_key: true
  end
end
