class CreateCharacters < ActiveRecord::Migration[5.2]
def change
    create_table :characters do |x|
        x.string :name
        x.integer :show_id
        x.integer :actor_id
    end
end

end
