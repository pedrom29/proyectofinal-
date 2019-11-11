class AddDecriptionToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :decription, :string
  end
end
