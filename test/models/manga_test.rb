require 'test_helper'

class MangaTest < ActiveSupport::TestCase
  
  setup do
    @user = users(:one)
  end

  test 'should not save empty manga' do
    manga = Manga.new
    manga.save
    refute manga.valid?
  end
  
  test 'should save valid manga' do
    manga = Manga.new

    manga.title = 'My Manga'
    manga.LatestChapter = 20 
    manga.Status = "Airing"
    manga.Genre = "Finished"
    manga.Published = 2020-2-22
    manga.user = @user

    manga.save
    assert manga.valid?
  end

  test 'should not save duplidate manga title' do

    manga1 = Manga.new
    manga1.title = 'MangaA'
    manga1.LatestChapter = 20 
    manga1.Status = "Airing"
    manga1.Genre = "Finished"
    manga1.Published = 2020-2-22
    manga1.user = @user
    manga1.save
    assert manga1.valid?

    manga2 = Manga.new
    manga2.title = 'MangaA'
    manga2.LatestChapter = 20 
    manga2.Status = "Airing"
    manga2.Genre = "Finished"
    manga2.Published = 2020-2-22
    manga2.user = @user
    manga2.save
    refute manga2.valid?
  end

end
