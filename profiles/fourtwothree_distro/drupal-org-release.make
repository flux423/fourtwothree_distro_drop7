api = 2
core = 7.x
base= panopoly

; Use Panopoly instead of Drupal core:
 projects[panopoly][type] = core
 projects[panopoly][download][type] = git
 projects[panopoly][download][url] = git://github.com/pantheon-systems/drops-7.git
 projects[panopoly][version] = master
 
; Pull in Custom Profile fourtwothree_distro:
 projects[fourtwothree_distro][type] = profile
 projects[fourtwothree_distro][download][type] = git
 projects[fourtwothree_distro][download][url] = https://github.com/flux423/fourtwothree_distro.git
 projects[fourtwothree_distro][version] = 7.x-1.x


