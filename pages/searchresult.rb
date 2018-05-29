require_relative 'page'

class SearchResult < Page

  CHANGE_LOCATION = {link: 'change location'}
  CUISINES = {link_text: 'Cuisines'}
  REFINE = {link_text: 'Refine'}
  SORT_BY = {class: 'controlList-inner'}
  SEARCH_RESULTS = {class: 'g-col g-span8--mid g-span9--wide listing listing--noTrailingSpace l-vPad--aboveMid'}
  SEARCH_LISTING = {css: 'a.mediaElement.listing-item-link'}

  def ui_elements
    yield CHANGE_LOCATION
    yield CUISINES
    yield REFINE
    yield SORT_BY
    yield SEARCH_RESULTS
  end

  def click_listing
    click SEARCH_LISTING
  end

end