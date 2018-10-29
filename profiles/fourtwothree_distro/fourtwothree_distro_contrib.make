api = 2
core = 7.x

;contrib mods

projects[adminrole][version] = 1.x
projects[adminrole][subdir] = 423contrib

projects[auto_menutitle][version] = 1.x
projects[auto_menutitle][subdir] = 423contrib

projects[better_exposed_filters][version] = 3.x
projects[better_exposed_filters][subdir] = 423contrib

projects[better_formats][version] = 1.x-dev
projects[better_formats][subdir] = 423contrib

projects[cer][version] = 3.x
projects[cer][subdir] = 423contrib

projects[colorbox][version] = 2.x
projects[colorbox][subdir] = 423contrib

projects[compact_forms][version] = 1.x
projects[compact_forms][subdir] = 423contrib

projects[contemplate][version] = 1.x
projects[contemplate][subdir] = 423contrib

projects[content_type_extras][version] = 1.x
projects[content_type_extras][subdir] = 423contrib

projects[disable_term_node_listings][version] = 1.x
projects[disable_term_node_listings][subdir] = 423contrib

projects[email][version] = 1.x
projects[email][subdir] = 423contrib

projects[entity2text][version] = 1.x
projects[entity2text][subdir] = 423contrib-discontinue

projects[entityform][version] = 2.x
projects[entityform][subdir] = 423contrib

projects[entity_path][version] = 1.x
projects[entity_path][subdir] = 423contrib

projects[entityreference_filter][version] = 1.x
projects[entityreference_filter][subdir] = 423contrib

projects[entityreference_prepopulate][version] = 1.x
projects[entityreference_prepopulate][subdir] = 423contrib

projects[entity_rules][version] = 1.x
projects[entity_rules][subdir] = 423contrib

projects[entityform][version] = 2.x
projects[entityform][subdir] = 423contrib

projects[eva][version] = 1.x
projects[eva][subdir] = 423contrib

projects[field_formatter_settings][version] = 1.x
projects[field_formatter_settings][subdir] = 423contrib

projects[field_multiple_limit][version] = 1.x
projects[field_multiple_limit][subdir] = 423contrib

projects[field_hidden][version] = 1.6
projects[field_hidden][subdir] = 423contrib

projects[flexslider][version] = 1.x
projects[flexslider][subdir] = 423contrib

projects[google_analytics][version] = 2.x
projects[google_analytics][subdir] = 423contrib

projects[globalredirect][version] = 1.x
projects[globalredirect][subdir] = 423contrib

projects[insert_view][version] = 2.x
projects[insert_view][subdir] = 423contrib

projects[imagecache_token][version] = 1.x-dev
projects[imagecache_token][subdir] = 423contrib

projects[jcarousel][version] = 2.x
projects[jcarousel][subdir] = 423contrib

projects[maxlength][version] = 3.x
projects[maxlength][subdir] = 423contrib

projects[menu_icons][version] = 3.x
projects[menu_icons][subdir] = 423contrib

projects[phone][version] = 1.x-dev
projects[phone][subdir] = 423contrib

projects[nodequeue][version] = 2.0-beta1
projects[nodequeue][subdir] = 423contrib

projects[redirect][version] = 1.0-rc1
projects[redirect][subdir] = 423contrib

projects[rules][version] = 2.x
projects[rules][subdir] = 423contrib

projects[superfish][version] = 1.x-dev
projects[superfish][subdir] = 423contrib

projects[title][version] = 1.x
projects[title][subdir] = 423contrib

projects[variable][version] = 2.x
projects[variable][subdir] = 423contrib

projects[views_accordion][version] = 1.x
projects[views_accordion][subdir] = 423contrib

projects[weight][version] = 2.x
projects[weight][subdir] = 423contrib

projects[xmlsitemap][version] = 2.x
projects[xmlsitemap][subdir] = 423contrib


;Patches
#from https://www.drupal.org/node/2225315
projects[entity_rules][patch][] = "https://www.drupal.org/files/issues/entity_rules_entity_rules_get_form_entity_type_settings.patch"

#from https://www.drupal.org/node/2201263
projects[entity_rules][patch][] = "https://www.drupal.org/files/issues/entity_rules_entity_rules_get_type_settings.patch"

#from https://www.drupal.org/node/2163545
projects[superfish][patch][2163545] = "https://drupal.org/files/issues/superfish-drush_make_master-2163545-2.patch"

projects[defaultconfig][patch][13] = "https://www.drupal.org/files/issues/1900574.defaultconfig.undefinedindex_13.patch"
#https://www.drupal.org/node/1900574
projects[entity][patch][] = "https://www.drupal.org/files/issues/entity-1312374-42-fatal-error-if-missing-property-callback.patch"


; Themes
projects[adaptivetheme][version] = 3.x
projects[adaptivetheme][type] = theme

; Include Theme
projects[at_423client][type] = theme
projects[at_423client][download][type] = git
projects[at_423client][download][contrib_destination] = sites/all/themes
projects[at_423client][download][url] = https://github.com/flux423/at_423client.git
