class Post < ApplicationRecord
	include AlgoliaSearch
	belongs_to :user

	algoliasearch per_environment: true, if: :published? do
		attribute :title, :body, :user_email, :user_id
		attributesForFaceting [:user_id]
	end

	def user_email
		User.find(user_id).email
	end
end