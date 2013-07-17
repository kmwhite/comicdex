(1..32).each do |num|
  i = Issue.find(num)

  cover_file=File.open("#{Rails.root}/db/seeds/covers/Knuckles-#{num.to_s.rjust(2, '0')}.jpg")
  i.cover = cover_file
  cover_file.close
  i.save!

end
