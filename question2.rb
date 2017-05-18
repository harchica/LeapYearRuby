  def get_days(year, month)
    if month == 2  && year % 4 == 0 && year % 100 != 0
      return 29
    elsif month == 2 && (year % 100 == 0 || year % 4 != 0)
      return 28
    elsif month ==2 || month == 4 || month == 6 || month == 9 || month == 11
      return 30
    else
      return 31
    end
  end

  puts "年を入力してください："
  year = gets.to_i
  puts "月を入力してください："
  month = gets.to_i

  days = get_days(year, month)
  puts "#{year}年#{month}月は#{days}日間あります"