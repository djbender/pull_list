require 'rails_helper'

RSpec.describe Comic do
  subject do
    Comic.new(
      series: 'Saga',
      year: '2014',
      uri: 'localhost'
    )
  end

  describe '.valid?' do
    it { is_expected.to validate_presence_of :series }
    it { is_expected.to validate_presence_of :year }
    it { is_expected.to validate_presence_of :uri }
    it { is_expected.to be_valid }

    it "rejects bad URIs" do
      subject.uri = 'bad uri'
      expect(subject).to_not be_valid
    end

    it "accepts good URIs" do
      subject.uri = 'http://example.com'
      expect(subject).to be_valid
    end
  end
end
