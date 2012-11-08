class Investment < ActiveRecord::Base
  attr_accessible :interest_rate, :principle, :time_horizion

  def result
    (2 ** (time_horizion / (72.0 / interest_rate))) * principle
  end

  end
