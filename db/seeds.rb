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
  { name: "Funny Stories", description: "Kooky Shenanigans!",   publisher_id: 1, series_type_id: 1 },
  { name: "Scary Stories", description: "Terrifying Stories!",  publisher_id: 1, series_type_id: 3 },
  { name: "Lovey Stories", description: "Love Stories?! Bah!",  publisher_id: 1, series_type_id: 4 }
], without_protection: true )

Volume.create([
  { name: "Volume I",  number: 1, series_id: 1 },
  { name: "Volume II", number: 2, series_id: 1 },
  { name: "Volume I",  number: 1, series_id: 2 },
  { name: "Volume I",  number: 1, series_id: 3 }
], without_protection: true )

# Setup Covers using
Issue.create([
  { title: "Funny Tales",          description: "Shut up and read them", number: 1, publication_date: 'Apr 1 2012'.to_date, volume_id: 1 },
  { title: "Funnier Tales",        description: "Shut up and read them", number: 2, publication_date: 'Apr 8 2012'.to_date, volume_id: 1 },
  { title: "Funniest Tales",       description: "Shut up and read them", number: 1, publication_date: 'Apr 15 2012'.to_date, volume_id: 2 },
  { title: "Funniest-er Tales",    description: "Shut up and read them", number: 2, publication_date: 'May 15 2012'.to_date, volume_id: 2 },
  { title: "Scary Stuff",          description: "Shut up and read them", number: 1, publication_date: 'Oct 31 2012'.to_date, volume_id: 3 },
  { title: "Horror'n'Fear",        description: "Shut up and read them", number: 2, publication_date: 'Oct 31 2013'.to_date, volume_id: 3 },
  { title: "Histoires d'amour",    description: "Shut up and read them", number: 1, publication_date: 'Feb 14 2000'.to_date, volume_id: 4 },
  { title: "histoires de romance", description: "Shut up and read them", number: 2, publication_date: 'Feb 14 2007'.to_date, volume_id: 4 }
], without_protection: true )
