class CreateDiscusses < ActiveRecord::Migration
  def change
    create_table :discusses do |t|
      t.string :title
      t.text :body
      t.timestamps
    end
  end
end
