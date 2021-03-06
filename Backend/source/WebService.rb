#!/usr/bin/env ruby

require 'rubygems'
require 'grape'

require 'logger/ScLogger.rb'
require 'logger/ScLoggerConstants.rb'
require 'error/ScError.rb'
require 'error/ScErrorConstants.rb'
require 'request/ScRequest.rb'

require_relative './helpers/SkycloudHelpers.rb'

require_relative './controllers/RbVmomiController.rb'
require_relative './controllers/IaasController.rb'
require_relative './controllers/PaasController.rb'
require_relative './controllers/SaasController.rb'


module SkyCloud
  class WebService < Grape::API
    version 'v1',
    :using => :header,
    :vendor => 'SkyCloud'
    
    helpers SkyCloudHelpers

#    rescue_from :all do |e|
#      SkyCloud::ScRequest.new(false, e)
#    end

    mount RbVmomiController
    mount IaasController
    mount PaasController
    mount SaasController
    
  end
end
