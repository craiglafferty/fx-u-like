require 'bundler/setup'
require "fx/version"
require "open-uri"

class Fx

  # Lets get the exchange rates and save a local copy
  # This can be moved to a seperate file and use a scheduled job to run daily
  download_data = open('http://www.ecb.europa.eu/stats/eurofxref/eurofxref-hist-90d.xml') 
  IO.copy_stream(download_data,'lib/currency_data/currencies.xml')

end