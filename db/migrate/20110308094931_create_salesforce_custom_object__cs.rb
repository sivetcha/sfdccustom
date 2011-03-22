class CreateSalesforceCustomObject_cs < ActiveRecord::Migration
  def self.up
    create_table :salesforce_custom_object_cs do |t|
      t.string :first_name__c
      t.string :last_name__c
      t.string :phone__c

      t.timestamps
    end
  end

  def self.down
    drop_table :salesforce_custom_object_cs
  end
end
