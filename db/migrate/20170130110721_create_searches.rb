class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
    	t.string :ip_address
      t.string :query
      t.string :normalized_query
      t.integer :results_count

      t.timestamps
    end
    add_index :searches, [:created_at]
    add_index :searches, [:normalized_query, :created_at], name: "index_searches_on_normalized_query"
  end
end
