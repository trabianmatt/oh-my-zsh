# To use: add a .zendesk file into your directory with the URL to the
# individual project. For example:
# https://help.trabian.com/tickets/8994
open_zendesk_ticket () {
  if [ ! -f ~/.zendesk-url ]; then
    echo "There is no .zendesk file in the home directory..."
    return 0;
  else
    zendesk_url=$(cat ~/.zendesk-url);
    echo "Opening ticket #$1";
    `open $zendesk_url/tickets/$1`;
  fi
}

push_ticket() {
  `echo $1 >> ~/.zendesk-tickets`
  update_motd
}

update_motd() {
  `echo "Here's some tickets you may want to work on: " > /etc/motd`
  `cat ~/.zendesk-tickets >> /etc/motd`
}

peek_ticket() {

  ticket=$(head -1 ~/.zendesk-tickets)
  zendesk_url=$(cat ~/.zendesk-url);

  `open $zendesk_url/tickets/$ticket`

}

pop_ticket() {
  peek_ticket
  `sed 1d ~/.zendesk-tickets > ~/.zendesk-tickets-tmp`
  `mv ~/.zendesk-tickets{-tmp,}`
  update_motd
}

alias zo='open_zendesk_ticket'
alias ticket='open_zendesk_ticket'

alias pusht='push_ticket'
alias peekt='peek_ticket'
alias popt='pop_ticket'
