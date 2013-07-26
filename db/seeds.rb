# encoding: utf-8

Publisher.create([
  { name: "Comicdex Press" }
], without_protection: true )

SeriesType.create([
  { name: "Weekly", schedule: "Once per week" },
  { name: "Monthly", schedule: "Once per month" },
  { name: "Yearly", schedule: "Once per year" },
  { name: "Sporadic", schedule: "Whenever we damn well please" },
], without_protection: true )

Series.create([
  { name: "Funny Stories", description: "Hilarious Hijinks!",   publisher_id: 1, series_type_id: 1 },
  { name: "Scary Stories", description: "Terrifying Tales!",  publisher_id: 1, series_type_id: 3 },
  { name: "Action Stories", description: "Edge-of-Your-Seat Excitement!",  publisher_id: 1, series_type_id: 4 }
], without_protection: true )

Volume.create([
  { name: "Volume I",  number: 1, series_id: 1 },
  { name: "Volume II", number: 2, series_id: 1 },
  { name: "Volume I",  number: 1, series_id: 2 },
  { name: "Volume I",  number: 1, series_id: 3 }
], without_protection: true )

(1..Random.rand(50)).each do |number|
  i = Issue.create(
    title: "Funny Fables #{number.to_s.rjust(2, '0')}",
    number: number,
    description: "#{number.to_s.rjust(2, '0')}",
    publication_date: 'Apr 1 2010'.to_date + (number*7),
  )
  i.volume_id = 1
  i.save!
end
(1..Random.rand(50)).each do |number|
  i = Issue.create(
    title: "Funnier Fables #{number.to_s.rjust(2, '0')}",
    number: number,
    description: "#{number.to_s.rjust(2, '0')}",
    publication_date: 'Apr 1 2011'.to_date + (number*7),
  )
  i.volume_id = 2
  i.save!
end
(1..Random.rand(50)).each do |number|
  i = Issue.create(
    title: "Scary Stories#{number.to_s.rjust(2, '0')}",
    number: number,
    description: "#{number.to_s.rjust(2, '0')}",
    publication_date: "Oct 31 #{1941+number}".to_date,
  ) 
  i.volume_id = 3
  i.save!
end
(1..Random.rand(50)).each do |number|
  i = Issue.create(
    title: "Big Bada Boom #{number.to_s.rjust(2, '0')}",
    number: number,
    description: "GUNS AND EXPLOSIONS! OH YEAH * #{number.to_s.rjust(2, '0')}",
    publication_date: 'Jul 4 2000'.to_date + (number*50) + Random.rand(365),
  )
  i.volume_id = 4
  i.save!
end
