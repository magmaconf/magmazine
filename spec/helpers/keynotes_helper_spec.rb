require 'spec_helper'

describe KeynotesHelper do

  describe "#render_keynote_actions" do
    specify { helper.render_keynote_actions.should_not be_nil }
  end

end
