require 'spec_helper'
require_relative '../../app/helpers/application_helper'

describe ApplicationHelper do
  include ApplicationHelper

  subject(:notice) { notice_with_title("Comic", "Saga") }

  it 'downcases class name and includes series name' do
    expect(notice).to include "comic"
    expect(notice).to include "Saga"
  end
end
