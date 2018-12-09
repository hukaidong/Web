class AdminController < ApplicationController
  def _query q, db
    case db.to_sym
    when :MySQL
      Mysql.connection.exec_query q
    when :BigQuery
      Gsql.query q
    else
      raise "Command Not Found #{db}"
    end
  end

  def db_manager
    # unless user_signed_in? and current_user.id == 1
      # render :file => "public/401.html", :status => :unauthorized
    # else
    @db = params[:db]
    if @query = params[:q]
      begin
        @table = _query @query, params[:db]
        @err = nil
      rescue => ex
        @table = nil
        @err = ex.message
      end
    end
    # end
  end
end
