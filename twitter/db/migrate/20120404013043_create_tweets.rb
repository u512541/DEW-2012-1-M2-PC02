class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :usuario
      t.string :status
      t.string :mensaje

      t.timestamps
    end
  end
end
