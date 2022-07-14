class CreateWebpages < ActiveRecord::Migration[7.0]
  def change
    create_table :webpages do |t|
      t.text :raw_html
      t.string :url

      t.timestamps
    end
  end
end
