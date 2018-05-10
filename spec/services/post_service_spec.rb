require 'rspec_helper'
require 'spec_helper'
require 'post_service'

RSpec.describe ParserService do
  before :each do
    @data = { "href" => "https://kgangadhar.herokuapp.com"}
    @service= ParserService.new(@data)
  end

  describe '#new' do
    it " returns a search object" do
      expect(@service).to be_a ParserService
    end
  end

  describe '#run' do
    it 'returns srapped content' do
        content = ParserService.new(@data).run
        expect(content.length).to eq(4)
        expect(content[:h1][0]).to eq("Karthik Gangadhar")
    end
  end

end
