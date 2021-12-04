require 'test_helper'

class MangaTest < ActiveSupport::TestCase
  
  test 'should not save empty manga' do
    manga = Manga.new
    manga.save
    refute manga.valid?
  end
  
  test 'should save valid note' do
    manga = Manga.new

    manga.title = 'My Manga'
    manga.LatestChapter = 20 
    manga.State = "Airing"
    manga.Genre = "Finished"
    manga.Published = 2020-2-22

    manga.save
    assert manga.valid?
  end

  test 'should not save duplidate note title' do

    manga1 = Manga.new
    manga1.title = 'MangaA'
    manga1.LatestChapter = 20 
    manga1.State = "Airing"
    manga1.Genre = "Finished"
    manga1.Published = 2020-2-22
    manga1.save
    assert manga1.valid?

    manga2 = Manga.new
    manga2.title = 'MangaA'
    manga2.LatestChapter = 20 
    manga2.State = "Airing"
    manga2.Genre = "Finished"
    manga2.Published = 2020-2-22
    manga2.save
    assert manga2.valid?
  end

end
