class CreateArticle < ActiveRecord::Migration
  def change
    create_table :articles do |t|
        t.string :title
        t.string :author
        t.string :publication
        t.string :fulltext
        t.string :length
    end
  end
end
