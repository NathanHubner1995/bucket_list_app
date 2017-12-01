class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.belongs_to :list

      t.timestamps
    end
  end
end
