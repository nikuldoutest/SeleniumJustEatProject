require_relative 'page'

class Footer < Page

  #Social Media Links Footer
  FACEBOOK_LINK_LOCATOR = { link: 'Facebook' }
  TWITTER_LINK_LOCATOR = { link: 'Twitter' }
  GOOGLEPLUS_LINK_LOCATOR = { link: 'Google+' }
  BLOG_LINK_LOCATOR = { link: 'Just Eat Blog' }
  INSTAGRAM_LINK_LOCATOR = { link: 'Instagram' }


  #Cards Image Footer
  CREDITCARDS_IMG_LOCATOR = { class: 'c-footer-icon-list--cards'}


  #Feedback Footer
  FEEDBACK_MODAL_LINK_LOCATOR = { class: 'c-footer-feedback'}
  FEEDBACK_LOGO_LOCATOR = { class: 'c-footer-feedback--logo'}
  FEEDBACK_LINK_LOCATOR = { class: 'c-footer-feedback--link'}


  #Application Links Footer
  ANDROID_APP_LINK_LOCATOR = { class: 'c-footer-list-app-icon'}
  #IPHONE_APP_LOGO_LOCATOR = { class: 'c-footer-feedback--logo'}


  #About Us Section Footer
  PRICE_PROMISE_LINK_LOCATOR = { link: 'Price Promise' }
  FOR_RESTAURANTS_LINK_LOCATOR = { link: 'For Restaurants' }
  CONTACT_US_LINK_LOCATOR = { link: 'Contact Us' }
  ABOUT_US_LINK_LOCATOR = { link: 'About Us' }
 # FAQ_LINK_LOCATOR = { link: 'FAQ's' }--------------------
  BLOG_LINK_LOCATOR = { link: 'Blog' }
  PRIVACY_POLICY_LINK_LOCATOR = { link: 'Privacy Policy / Terms & Conditions' }
  CAREER_LINK_LOCATOR = { link: 'Career Opportunities' }


end