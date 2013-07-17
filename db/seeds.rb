# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs
#
# Most data here taken from:
# http://archiesonic.wikia.com/wiki/Archie_Knuckles_the_Echidna
# and
# http://en.wikipedia.org/wiki/Knuckles_the_Echidna_%28comics%29

Publisher.create([
  { :name => "Archie Comics", :logo => nil, :created_at => "2013-07-12 18:26:11", :updated_at => "2013-07-12 18:26:11" }
], :without_protection => true )

SeriesType.create([
  { :name => "Monthly", :schedule => "once per month", :created_at => "2013-07-12 18:26:42", :updated_at => "2013-07-12 18:26:42" }
], :without_protection => true )

Series.create([
  { :name => "Knuckles the Echidna", :description => "Tales from Sonic's friendly nemesis, Knuckles", :publisher_id => 1, :series_type_id => 1, :created_at => "2013-07-12 18:29:38", :updated_at => "2013-07-12 18:29:49" }
], :without_protection => true )

Volume.create([
  { :name => "Knuckles the Echidna", :number => 1, :series_id => 1, :created_at => "2013-07-12 18:30:18", :updated_at => "2013-07-12 18:30:33" }
], :without_protection => true )

# Setup Covers using
# http://stackoverflow.com/questions/1397461/how-to-set-file-programmatically-using-paperclip
Issue.create([
  { :title => "Knuckles: The Dark Legion", :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 1,  :cover => nil, :publication_date => 'January 1st 1997'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles: The Dark Legion", :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 2,  :cover => nil, :publication_date => 'Februrary 1st 1997'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles: The Dark Legion", :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 3,  :cover => nil, :publication_date => 'March 1st 1997'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 4,  :cover => nil, :publication_date => 'June 1st 1997'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 5,  :cover => nil, :publication_date => 'July 1st 1997'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 6,  :cover => nil, :publication_date => 'August 1st 1997'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 7,  :cover => nil, :publication_date => 'October 1st 1997'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 8,  :cover => nil, :publication_date => 'November 1st 1997'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 9,  :cover => nil, :publication_date => 'December 1st 1997'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 10, :cover => nil, :publication_date => 'January 1st 1998'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 11, :cover => nil, :publication_date => 'Februrary 1st 1998'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 12, :cover => nil, :publication_date => 'March 1st 1998'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 13, :cover => nil, :publication_date => 'April 1st 1998'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 14, :cover => nil, :publication_date => 'May 1st 1998'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 15, :cover => nil, :publication_date => 'June 1st 1998'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 16, :cover => nil, :publication_date => 'July 1st 1998'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 17, :cover => nil, :publication_date => 'August 1st 1998'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 18, :cover => nil, :publication_date => 'September 1st 1998'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 19, :cover => nil, :publication_date => 'October 1st 1998'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 20, :cover => nil, :publication_date => 'November 1st 1998'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 21, :cover => nil, :publication_date => 'December 1st 1998'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 22, :cover => nil, :publication_date => 'January 1st 1999'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 23, :cover => nil, :publication_date => 'February 1st 1999'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 24, :cover => nil, :publication_date => 'March 1st 1999'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 25, :cover => nil, :publication_date => 'April 1st 1999'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 26, :cover => nil, :publication_date => 'May 1st 1999'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 27, :cover => nil, :publication_date => 'June 1st 1999'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 28, :cover => nil, :publication_date => 'July 1st 1999'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 29, :cover => nil, :publication_date => 'August 1st 1999'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 30, :cover => nil, :publication_date => 'September 1st 1999'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 31, :cover => nil, :publication_date => 'October 1st 1999'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" },
  { :title => "Knuckles the Echidna",      :description => "Tales from Sonic's friendly nemesis, Knuckles", :number => 32, :cover => nil, :publication_date => 'November 1st 1999'.to_date, :volume_id => 1, :created_at => "2013-07-12 18:32:41", :updated_at => "2013-07-12 18:32:41" }
], :without_protection => true )
