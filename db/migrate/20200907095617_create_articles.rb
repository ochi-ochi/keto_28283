class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :protein  
      t.string :fat
      t.string :carbo
      t.text   :introduction,   null: false
      t.timestamps
    end
  end
end
