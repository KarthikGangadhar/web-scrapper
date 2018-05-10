require 'rspec_helper'
require 'spec_helper'

describe PostController, :type => :controller do

  context "data retrieval of" do
    
    it "POST /post returns 201 response code if there is no data" do
      get('create', params: {"data": {"type":"posts", "attributes":{"href":"https://kgangadhar.herokuapp.com"}}} )
      expect(response.status).to eq(201)
      body = JSON.parse(response.body)
      expect(body["message"]).to eq('added succesfully')
    end

    it "POST /post returns 400 if href already exists" do
      get('create', params: {"type":"posts", "attributes":{"href":"https://kgangadhar.herokuapp.com"}} )
      expect(response.status).to eq(400)
      body = JSON.parse(response.body)
      expect(body["message"]).to eq('href is missing')
    end

    it "GET /post returns 200 response code if data exists" do
      get('show')
        expect(response.status).to eq(200)
    end

    it "POST /post returns when href is empty" do
      get('create', params: {"data": {"type":"posts", "attributes":{}}} )
      expect(response.status).to eq(400)
      body = JSON.parse(response.body)
      expect(body["message"]).to eq('href is missing')
    end

  end #EOC

end #EOD

