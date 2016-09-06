require 'watir-webdriver'
require 'rspec'
require 'page_helper'
require 'require_all'
require 'saucelabs'
require 'nokogiri'
require 'active_support/core_ext'
require 'saucelabs'

require 'active_support/core_ext'
require 'simplecov'
require 'simplecov-rcov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::RcovFormatter
]

SimpleCov.start


require './lib/page_helper'
require './lib/data_helper'

require_all './lib/pages'


World PageHelper
World DataHelper

