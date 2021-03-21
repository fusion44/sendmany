# Change Log

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [0.7.0] - XXXX-XX-XX

### added

- Local notifications while the app is closed and new chat messages have arrived

### changed
- Channel open UI shows an error when peer refused the connection


## [0.6.0] - 2020-04-17

### added

- Add a new lightning chat page
- View channel details by clicking on a channel item
- Long-press an item in the channels list to open the close channels page.
- A version indicator to the preferences page
- Add a FAB to switch between manual and QR scan modes when adding another node
- Show fees paid for each transaction in transaction list

### changed

- Channel list items display peer alias instead of channel id
- Better handling of error cases in ListPeersBloc and PeersListWidget
- Update dependencies and gRPC files
- Applied pedantic rules to the Dart source
- Improve error handling while handling peer data
- Fix handling of reloads in transaction list

### known issues

- Confirmation count not updated when opening a channel
- When switching between nodes, the app must be restarted
- The app currently doesn't automatically reconnect when connectivity changes occur
- There are no notifications when a new chat message arrives

## [0.5.0] - 2019-12-12

Initial release
