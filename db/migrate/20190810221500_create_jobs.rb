class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.integer :users_id
      t.integer :pets_id
      t.string :type
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
