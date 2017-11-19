class AddFunctionNameToBlocks < ActiveRecord::Migration[5.1]
  def change
    add_column :blocks, :function_name, :string
  end
end
