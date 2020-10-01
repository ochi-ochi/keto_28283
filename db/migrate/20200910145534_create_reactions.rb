class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|
      t.references     :user,      null: false
      t.integer        :from_user,    null: false
      t.references     :article,   null: false
      t.integer        :status,       null: false
      t.timestamps
    end
  end
end
