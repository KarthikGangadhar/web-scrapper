require 'post_service'

class PostController < JSONAPI::ResourceController
    def create 
        if params["data"].present? && params["data"]["attributes"].present? && params["data"]["attributes"]["href"].present?
            href = params["data"]["attributes"]["href"];
            @posts = Post.all()
            urlexists = @posts.any?{|post| post['href'] == href }
            if !urlexists
                content = ParserService.new(params["data"]["attributes"]).run
                url = Post.new(:href => params["data"]["attributes"]["href"], :content => content)
                if url.save!
                    render json: '{ "message" : "added succesfully"}' , status: 201
                end
            else
                render json: '{ "message" : "href already exists"}' , status: 400                    
            end
        else
            render json: '{ "message" : "href is missing"}' , status: 400
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