require 'nokogiri'
require 'open-uri'

namespace :scrape do
  desc 'Scrapes fest schedule'
  task shows: :environment do
    Band.delete_all
    Venue.delete_all
    ShowSet.delete_all
    TimeSlot.delete_all
    doc = Nokogiri::HTML(File.open('/Users/jorge/projects/fest-scheduler/lib/tasks/fest.html'))
    doc.css('div.sc-col-xs-12 div.sc-col-xs-12').each do |node|
      day = node.css('h3.schedule-date-label')
      # puts "each day #{day}"
      date = day[0].content.to_date
      doc.css('table.table-time-sort tr').each do |row|
        # ShowSet
        # Band
        # Venue
        # TimeSlot
        # show_set = ShowSet.create()
        venue = row.css('td')[2].content.strip
        band = row.css('td')[1].content.strip
        time = row.css('td')[0].content
        # puts "place\n #{venue} #{band} #{time}"
        begin
          start = time.split(' - ')[0].strip.to_time
          _end = time.split(' - ')[1].strip.to_time
        rescue
          puts row
          next
        end
        start_time = Time.new(date.year,
                              date.month,
                              date.day,
                              start.hour,
                              start.min)
        end_time = Time.new(date.year,
                            date.month,
                            date.day,
                            _end.hour,
                            _end.min)
        venue = Venue.find_or_create_by(name: venue)
        band = Band.find_or_create_by(name: band)
        time_slot = TimeSlot
                    .find_or_create_by(start_time: start_time,
                                       end_time: end_time)
        ShowSet.create(band: band, venue: venue, time_slot: time_slot)
      end
    end
  end
end
