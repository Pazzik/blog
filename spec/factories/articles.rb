FactoryGirl.define do
  factory :article do
  	title 'article title'
  	text 'article text'

  	factory :article_with_comments do
  		after :create do |article,evaluator|
  			create_list :comment, 3, article: article
  		end
  	end
  end
end