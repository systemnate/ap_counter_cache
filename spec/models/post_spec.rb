require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "comments" do
    let(:post) { create(:post) }
    let!(:comments) { create_list(:comment, 3, post: post) }

    before do
      post.update_column(:comments_count, 0)
      post.reload
    end

    it "returns the correct number of comments when comments_count equals 0" do
      expect(post.comments_count).to eq 0
      collection = post.comments
      ap collection
      expect(collection).to_not eq([])
      expect(collection.length).to eq 3
    end
  end
end
