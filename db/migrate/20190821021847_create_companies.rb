class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :motto
      t.integer :age

      t.timestamps
    end
  end
end
