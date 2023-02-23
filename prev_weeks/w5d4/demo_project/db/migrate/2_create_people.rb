class CreatePeople < ActiveRecord::Migration[7.0]
    def change
        create_table :people do |p|
            p.string :name
            p.integer :house_id
        end
    end
end

