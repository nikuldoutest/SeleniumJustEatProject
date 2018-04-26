require_relative 'page'

class Home < Page

  # header
  LOGO_LOCATOR = { class: 'logo' }

  SEARCH_INPUT_LOCATOR = { id: 'edit-search-block-form--2' }
  TOP_NAV_LINKS_LOCATOR = { css: 'div#block-menu-menu-quick-links-poets-org' }
  PRIZES_LINK_LOCATOR = { link: 'Prizes' }
  HEADER_BOTTOM_LOCATOR = { css: 'div#header-bottom-l' }
  # programs
  AAP_HOME_LINK_LOCATOR = { link: 'Academy of American Poets' }
  NPM_LINK_LOCATOR = { link: 'National Poetry Month' }
  MAGAZINE_LINK_LOCATOR = { link: 'American Poets Magazine' }
  # body
  SOCIAL_LINKS_BLOCK_LOCATOR = { css: 'div#block-aap-main-aap-follow-aap' }
  PAD_WRAPPER_LOCATOR = { css: 'div#poem-content-wrapper' }
  PAD_CONTENT_LOCATOR = { css: 'div#poem-content' }
  PAD_MORE_LINK_LOCATOR = { link: 'more' }
  PAD_ABOUT_LOCATOR = { css: 'div#options-wrapper' }
  PAD_POEM_LINK_LOCATOR = { link: 'poem' }
  PAD_SIGN_UP_LOCATOR = { css: 'div.subscribe a.ctools-use-modal' }


end