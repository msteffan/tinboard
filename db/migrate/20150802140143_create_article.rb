class CreateArticle < ActiveRecord::Migration
  def change
    create_table :articles do |t|
        t.string :title
        t.string :author
        t.string :publication
        t.string :fulltext
        t.integer :length
    end
  end
end
