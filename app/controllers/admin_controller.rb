require 'benchmark'

class AdminController < ApplicationController
  def _query q
    ActiveRecord::Base.connection.exec_query q
  end

  def db_manager
    unless user_signed_in? and current_user.id == 1
      render :file => "public/401.html", :status => :unauthorized
    else
      if @query = params[:q]
        begin
          @t = Benchmark.realtime do
            @table = _query @query
          end
          @err = nil
        rescue => ex
          @table = nil
          @err = ex.message
        end
      end
    end
  end
end
