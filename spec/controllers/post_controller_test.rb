require 'rspec_helper'

describe PostController, :type => :controller do

  context "data retrieval of" do
    it "GET /post returns 400 response code if there is no data" do
      get('show')
        expect(response.status).to eq(400)
    end

    it "POST /post returns 201 response code if there is no data" do
      get('create', params: {"data": {"type":"posts", "attributes":{"href":"http://google.com"}}} )
      expect(response.status).to eq(201)
    end

    it "GET /post returns 200 response code if data exists" do
      get('show')
        expect(response.status).to eq(200)
    end

    it "POST /post returns array of response with content" do
      get('create', params: {"data": {"type":"posts", "attributes":{"href":"http://google.com"}}} )
      expect(response.status).to eq(201)
    end

  end #EOC

end #EOD

