Plugin 'skalnik/vim-vroom'

let g:vroom_use_vimux = 1
let g:vroom_use_bundle_exec = 0
let g:vroom_spec_command = 'vssh -t cd /vagrant/easy_post/ \&\& bundle exec foreman run rspec'
