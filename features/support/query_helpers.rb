module QueryHelpers
  def select_date(date, options = {})
    name = options[:from]
    d = date.to_date

    select d.year.to_s,  from: "#{name}_1i"
    select d.month.to_s, from: "#{name}_2i"
    select d.day.to_s,   from: "#{name}_3i"
  end
  
  class MockDate
    def self.today
      '2012-06-05'
    end
  end
  
end

World(QueryHelpers)