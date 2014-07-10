require 'raml/body'

describe Raml::Body do

  describe '.new' do
    subject { Raml::Body.new('the content_type') }
    its(:content_type) { should == 'the content_type' }
  end

  describe '#content_type' do
    let(:body) { Raml::Body.new('the content_type') }
    before { body.content_type = 'content_type' }
    subject { body.content_type }
    it { should == 'content_type' }
  end

  describe '#schema' do
    let(:body) { Raml::Body.new('the content_type') }
    before { body.schema = 'schema' }
    subject { body.schema }
    it { should == 'schema' }
  end

end
