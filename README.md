# Hub for Trustnote network

This is a node for Trustnote network that serves as [relay](../../../trustnote-relay), plus facilitates exchange of end-to-end encrypted messages among devices connected to Trustnote network.  The hub does not hold any private keys and cannot send payments itself.

The messages are used for the following purposes:
* Convey private payment information from payer to payee.
* Exchange partially signed transactions when sending from a multisig address.  One of the devices initiates a transaction and signs it with its private key, then it sends the partially signed transaction to the other devices that participate on the multisig address, the user(s) confirm the transaction on the other devices, they sign and return the signatures to the initiator.
* Multilateral signing, when several addresses sign the same unit, e.g. when exchanging one asset for another, or when signing a contract.  The exchange of messages is similar to the multisig scenario above.
* Plain text chat between users, in particular, users can send each other the newly generated addresses to receive payments to.
* Plain text chat with bots that offer a service and can receive or send payments.  [Faucet](../../../trustnote-faucet) is an example of such bot.

The hub helps deliver such messages when the recipient is temporarily offline or is behind NAT.  If the recipient is connected, the message is delivered immediately, otherwise it is stored and delivered as soon as the recipient connects to the hub.  As soon as delivered, the message is deleted from the hub.

Since all messages are encrypted with the recipient's key, the hub cannot read them.

Users set their hub address in their wallet settings.  The default hub is wss://trustnote.org/bb but users can change it to your hub address.

## Install

Install node.js, clone the repository, then say
```sh
npm install
```
Set up a proxy, such as nginx, to forward all websocket connections on a specific path to your daemon running the hub code.  See example configuration for nginx in [trustnote-common](../../../trustnote-common) documentation.

## Run
```sh
node start.js > log &
```
## Customize

If you want to change any defaults, refer to the documentation of [trustnote-common](../../../trustnote-common), the core Trustnote library `require()`'d from here.

## Push notifications for Android

To enable push notifications for the users of your hub you need to create a new project in Google Console https://console.developers.google.com and add Google Cloud Messaging API.  In your hub's conf (conf.js or conf.json) add these two settings copied from the Google Console:
* `pushApiProjectNumber`: get it from settings (under dots menu in the upper right)
* `pushApiKey`: your API key
