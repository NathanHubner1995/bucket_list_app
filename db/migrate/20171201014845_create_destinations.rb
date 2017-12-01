class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.string :city
      t.belongs_to :list

      t.timestamps
    end
  end
end
