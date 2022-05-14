class CreateEmpruntordis < ActiveRecord::Migration[6.1]
  def change
    create_table :empruntordis do |t|
      t.references :adherent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
