# config/initializers/active_storage_ransack.rb
Rails.application.config.to_prepare do
  ActiveStorage::Attachment.class_eval do
    def self.ransackable_attributes(auth_object = nil)
      %w[
        id
        name
        record_type
        record_id
        blob_id
        created_at
        updated_at
      ]
    end
  end
end
