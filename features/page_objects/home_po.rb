class Home
    attr_accessor :actionSearchBUtton
    attr_accessor :searchSrcText
    attr_accessor :btnShowAll
  
    # Create the object
    def initialize()
      @actionSearchBUtton = "action_search"
      @searchSrcText = "search_src_text"
      @btnShowAll = "btn_show_all"
    end
  
    def clickActionSearchButton
        find_element(id: @actionSearchBUtton).click
    end

    def fillSearchSrcText (text)
        find_element(id: @searchSrcText).send_keys(text)
    end
    
    def btnShowAllIsDisplayed
        find_element(id: @btnShowAll).displayed?
    end

    def pressEnterToSearch
        press_keycode(66)
    end
    
  end
  