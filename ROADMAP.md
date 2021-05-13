# ROADMAP
This is a somewhat non-comprehensive roadmap, but it may give a general idea where the development is going. Items may be shifted, changed or removed altogether from one version to another any time.

[0.6.0]
- [x] Redesign channel list to display more useful information
- [x] Channel info screen
- [x] Close channels
- [x] Further integrate chat into the app

[0.7.0]
- [x] Implement PIN setup and entry
- [x] Implement batched payment listing (batch multiple same payments to remove clutter like 1 sat chat payments)
- [ ] Reconnect when gRPC looses connection to the node

[0.8.0]
- [ ] Display values in FIAT
- [ ] Implement a filter to customize the list of payments according to users choosing
- [ ] Integrate with the phones address book (assign nodes to contacts locally on the phone)
- [ ] Optionally rebalance channels (maybe via https://github.com/bitromortac/lndmanage)

[-X-]
- [ ] Switch between mSat and Sat display
- [ ] Tag payments/invoices to better track and sort expenses
- [ ] Integrate with Firefly III
- [ ] Build a UI for Raspiblitz
- [ ] Add an LN network explorer
- [ ] c-lightning support
- [ ] Add an incognito mode where sensitive information's are hidden from people that might look at your phone's screen while you send payments or create invoices.
- [ ] Support LN bits
- [ ] Chat: rebuild history from payments / invoices. To implement this efficiently, we probably have to recreate a message DB in each install. A possible database to use is [Hive](https://pub.dev/packages/hive)
- [ ] Add a lightning network explorer from the perspective of the current active node
- [ ] Channel Info page: Show Channel age
- [ ] Reload app data on backend node change 
- [ ] Implement a payment forwarding history page
- [ ] Implement a show 'what's new' page (display the changelog?)
- [ ] First onboarding page should be a language selection page
- [ ] Rename CreateChannelPage => OpenChannelPage
- [ ] Improve error handling in create_channel_page.dart[69]
- [ ] Improve error messages in open_channel_bloc.dart[27]