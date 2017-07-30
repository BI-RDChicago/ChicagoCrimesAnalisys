class Crime < ApplicationRecord
	belongs_to :CommunityArea, foreign_key: 'community_area_id';
	belongs_to :iucr;
end
