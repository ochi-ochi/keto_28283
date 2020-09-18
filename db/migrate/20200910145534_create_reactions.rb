class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|
      t.references     :user_id,      null: false
      t.integer        :from_user,    null: false
      t.references     :article_id,   null: false
      t.integer        :status,       null: false
      t.timestamps
    end
  end
end
