class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.integer :users_id
      t.integer :company_id
      t.string :title
      t.string :position
      t.string :description
      t.string :phone_number

      t.timestamps
    end
  end
end
