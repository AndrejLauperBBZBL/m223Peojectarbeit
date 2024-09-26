class CreateLicenses < ActiveRecord::Migration[7.2]
  def change
    create_table :licenses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
