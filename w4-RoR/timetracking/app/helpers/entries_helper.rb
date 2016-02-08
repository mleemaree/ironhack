module EntriesHelper

	def total_hours_in_month(entries,month = Date.today.month, year = Date.today.year)
		start_date = Date.new(year, month)
		end_date = Date.new(year, month).end_of_month
		my_entries = entries.where("date >= ? and date <= ?", start_date, end_date)
		my_entries.reduce(0) do | sum, entry|
			sum += entry.hours + entry.minutes.to_f/60
		end
	end
end
