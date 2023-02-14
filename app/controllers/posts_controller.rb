class PostsController < ApplicationController

    def new
        @post = Post.new
    end

    def create
        @post = Post.new
        @post["title"] = params["posts"]["title"]
        @post["description"] = params["posts"]["description"]
        @post["posted_on"] = params["posts"]["posted_on"]
        @post["place_id"] = params["posts"]["place_id"]
        @post.save

        redirect_to("/posts")
    end
end
