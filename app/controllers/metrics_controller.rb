class MetricsController < ApplicationController

	def weekdays
		@date = params[:date] || Date.today

		@monday = @date.to_date.beginning_of_week
		@tuesday = @monday.advance(days: 1)
		@wednesday = @tuesday.advance(days: 1)
		@thursday = @wednesday.advance(days: 1)
		@friday = @thursday.advance(days: 1)

		@users = User.where("role = ?", "Support")
	end

	def sundays
		@date = params[:date] || Date.today

		@sunday1 = @date.to_date.end_of_week
		@sunday2 = @sunday1.advance(days: -7)
		@sunday3 = @sunday2.advance(days: -7)
		@sunday4 = @sunday3.advance(days: -7)

		@sundays = [@sunday4, @sunday3, @sunday2, @sunday1]
	end

	def monthly
		@date = params[:date] || Date.today

		# current week
		@week5day1 = @date.to_date.beginning_of_week
		@week4day1 = @week5day1.advance(days: -7)
		@week3day1 = @week5day1.advance(days: -14)
		@week2day1 = @week5day1.advance(days: -21)
		@week1day1 = @week5day1.advance(days: -28)

		@week1 = [ 	@week1day1, 
					@week1day1.advance(days: 1), 
					@week1day1.advance(days: 2), 
					@week1day1.advance(days: 3), 
					@week1day1.advance(days: 4), 
					@week1day1.advance(days: 5), 
					@week1day1.advance(days: 6) ]

		@week2 = [ 	@week2day1, 
					@week2day1.advance(days: 1), 
					@week2day1.advance(days: 2), 
					@week2day1.advance(days: 3), 
					@week2day1.advance(days: 4), 
					@week2day1.advance(days: 5), 
					@week2day1.advance(days: 6) ]

		@week3 = [ 	@week3day1, 
					@week3day1.advance(days: 1), 
					@week3day1.advance(days: 2), 
					@week3day1.advance(days: 3), 
					@week3day1.advance(days: 4), 
					@week3day1.advance(days: 5), 
					@week3day1.advance(days: 6) ]

		@week4 = [ 	@week4day1, 
					@week4day1.advance(days: 1), 
					@week4day1.advance(days: 2), 
					@week4day1.advance(days: 3), 
					@week4day1.advance(days: 4), 
					@week4day1.advance(days: 5), 
					@week4day1.advance(days: 6) ]

		@week5 = [ 	@week5day1, 
					@week5day1.advance(days: 1), 
					@week5day1.advance(days: 2), 
					@week5day1.advance(days: 3), 
					@week5day1.advance(days: 4), 
					@week5day1.advance(days: 5), 
					@week5day1.advance(days: 6) ]

	end

end