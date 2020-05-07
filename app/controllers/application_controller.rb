class ApplicationController < ActionController::Base
  add_flash_types :danger, :info, :warning, :success
  include SessionHelper
end
