class AddExternalIpamProvider < ActiveRecord::Migration[6.0]
  def up
    create_table :external_ipam_providers do |t|
      t.string :name
    end
    add_reference :subnets, :external_ipam_provider
    add_foreign_key :subnets, :external_ipam_providers
  end

  def down
    remove_column :subnets, :external_ipam_provider_id
    drop_table :external_ipam_providers
  end
end
