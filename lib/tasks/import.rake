require 'nokogiri'
require 'open-uri'

namespace :scrape do
  desc 'Scrapes fest schedule'
  task shows: :environment do
    doc = Nokogiri::HTML(File.open('/Users/jorge/projects/fest-scheduler/lib/tasks/fest.html'))
    doc.css('div.sc-col-xs-12 div.sc-col-xs-12').each do |node|
      day = node.css('h3.schedule-date-label')
      puts "each day #{day}"
      doc.css('table.table-time-sort tr').each do |row|
        time = row.css('td')[0]
        band = row.css('td')[1]
        venue = row.css('td')[2]
      end
    end
  end
end
