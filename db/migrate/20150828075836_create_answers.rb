class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :title
      t.text :body
      t.boolean :resolved

      t.timestamps
    end
  end
end
