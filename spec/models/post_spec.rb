require 'spec_helper'

describe Post do
  describe "> Post모델 객체의 생성" do
    it "> 유효한 데이터로 생성한 Post 객체는 유효하다." do
      post = build(:post, title: 'Post Title', content: 'Post Content')
      expect(post).to be_valid
    end

    it "> Title이 없으면 유효하지 않다." do
      post = build(:post, title: nil, content: 'Post Content')
      expect(post).not_to be_valid
    end
    
    it "> Content가 없으면 유효하지 않다." do
    	post = build(:post, title: 'Post Title', content: nil)
    	expect(post).not_to be_valid
    end
    
    it "> 4개의 Comment를 가지고 있다."
    
    it "> Post 생성시 hit는 0이다." do
      post = build(:post, title: 'Post Title', content: 'Post Content')
      expect(post.hit).to be(0)
    end
  end
end