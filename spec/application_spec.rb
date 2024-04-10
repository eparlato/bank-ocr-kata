# frozen_string_literal: true

require "spec_helper"
require "Application"

RSpec.describe Application do
  it "works" do
    expect(Application.new.works?).to equal(true)
  end
end
