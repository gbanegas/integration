class CreateCorporates < ActiveRecord::Migration
  def change
    create_table :corporates do |t|
      t.string :label
      t.references :person, index: true

      t.timestamps
    end
  end
end
