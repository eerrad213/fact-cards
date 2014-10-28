class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :subject
      t.string :content
      t.text :fact
      t.string :references

      t.timestamps
    end
  end
end
