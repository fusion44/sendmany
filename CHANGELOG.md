# Change Log
All notable changes to this project will be documented in this file.
 
The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]
### added
- Click on a channel item to view channel the details of the channel page
- Long-press an item in the channels list to open the close channels page. 

### changed
- Channel list items display peer alias instead of channel id
- Better handling of error cases in ListPeersBloc and PeersListWidget
- Update dependencies and gRPC files
- Applied pedantic rules to the Dart source
- Improve error handling while handling peer data

### known issues
- Confirmation count not updated when opening a channel
- When switching between nodes, the app must be restarted
- 
## [0.5.0] - 2019-12-12
Initial release
 