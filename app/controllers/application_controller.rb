class ApplicationController < ActionController::Base
end


class Teste
  RETRY_LIMIT = 5

  def initialize
    @additive_minutes = 5
    @base_minutes = 10
  end

  def run
    for i in 1..RETRY_LIMIT
      p "Running #{i}"
      p "Minutes: #{@base_minutes + @additive_minutes * i}"
    end
  end
end