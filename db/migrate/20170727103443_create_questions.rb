class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :content, null: false
      t.belongs_to :user
      t.timestamps
    end
  end
end
