class PostController < JSONAPI::ResourceController
    def create 
        content = ParserService.new(params["data"]["attributes"]).run
        url = Post.new(:href => params["data"]["attributes"]["href"], :content => content)
        if url.save!
            render json: '{ "message" : "added to succesfully"}' , status: 201
        else
            render json: '{ "message" : "unable to add url"}' , status: 400
        end
    end

    def show
        @posts = Post.all();
        if @posts.present?
            render json: @posts , status: 200
        else
            render json: '[]', status: 400
        end    
    end

    private

    def url_params
        params.permit(:href)
    end
end