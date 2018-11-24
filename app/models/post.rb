class Post < ApplicationRecord
	include AlgoliaSearch
	belongs_to :user
  Apartment::Tenant.current
	algoliasearch per_environment: true, if: :published?, per_tenant: Proc.new { Apartment::Tenant.current } do
		attribute :title, :body, :user_id
		attributesForFaceting [:user_id]
	end
end