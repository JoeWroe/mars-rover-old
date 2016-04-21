require 'controller'

describe Controller do

  it { is_expected.to respond_to(:online?).with(1).argument }

end
