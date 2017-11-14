INSERT INTO bots (name, description, pairing_code) VALUES (
	'Transition bot',
	'Allows you to link your Bitcoin and Trustgraph addresses for participation in Trustgraph distribution.',
	'A2WMb6JEIrMhxVk+I0gIIW1vmM3ToKoLkNF8TqUV5UvX@trustgraph.org/tg#0000'
);
INSERT INTO bots (name, description, pairing_code) VALUES (
	'Byte-BTC exchange',
	'Buy or sell Bytes for BTC instantly. Advanced users can offer their price, post pending orders and see the order book.',
	'Ar2ukVqx309sX+LoC9RVOpfATgXskt+Ser5jVr3Q2FOo@trustgraph.org/tg#0000'
);
INSERT INTO bots (name, description, pairing_code) VALUES (
	'Flight delays oracle',
	'If you bought a P2P insurance against flight delays and your flight was delayed, chat with this oracle to have it post the data about your flight. After the data is posted, you can unlock the insurance contract and sweep its funds.',
	'AuP4ngdv0S/rok+IaW1q2D6ye72eXLl3h+CqXNXzkBXn@trustgraph.org/tg#0000'
);
INSERT INTO bots (name, description, pairing_code) VALUES (
	'Sports oracle',
	'If you have a P2P betting contract with another user and you won, chat with this oracle to have it post the data about your football match. After the data is posted, you can unlock the betting contract and sweep its funds.',
	'Ar1O7dGgkkcABYNAbShlY2Pbx6LmUzoyRh6F14vM0vTZ@trustgraph.org/tg#0000'
);
INSERT INTO bots (name, description, pairing_code) VALUES (
	'BTC oracle',
	'This oracle posts Merkle Roots of all Bitcoin transactions in a block every time a new Bitcoin block is mined. You can use its data to P2P trade Bytes vs BTC. If you are receiving Bytes (sending bitcoins), chat with the oracle after sending your bitcoins to get the Merkle Proof of your Bitcoin transaction and unlock your bytes from the smart contract.',
	'A7C96Bhg4Gpb2Upw/Ky/YfGG8BKe5DjTiBuJFGAX50N1@trustgraph.org/tg#0000'
);
INSERT INTO bots (name, description, pairing_code) VALUES (
	'Bounce bot',
	'Just for fun, send some of your bytes to the bot, and they will be bounced back to you. Developer: vakar.',
	'A6WUhxQX7bT1xY5UxoeL2/zNEgXGQXRO5ze4msXu3QrF@trustgraph.com.ar/bb#0000'
);
INSERT INTO bots (name, description, pairing_code) VALUES (
	'Rosie bot',
	'This is an open-source conversational AI, serving Rosie (chatbot base) through Pandorabots'' API. Without modifying the code, developers can serve any other AIML-compliant chatbot.

Developer: Laurentiu-Andronache, https://github.com/Laurentiu-Andronache/trustgraph-chatbot-Rosie',
	'ApOpqXbI7GpqOl3Z96QW/GSNgv04g4RcFr/xpaDmN9cg@trustgraph.org/tg#0000'
);
INSERT INTO bots (name, description, pairing_code) VALUES (
	'Trustgraph Asset Manager',
	'Asset directory and asset creation platform for Trustgraph. The chatbot provides a simple yet powerful interface to define and issue custom Trustgraph assets. Assets behave similarly to the native currency "bytes": they are transferable and exchangeable. They can represent anything that has value such as debt, shares, loyalty points, airtime minutes, commodities, other fiat or crypto currencies.

Developer: Peter Miklos, https://trustgraph.market',
	'Ao2SRelXb23nTnom+KHhLIzK4nyk0WAlE3vRWk5K25Gg@trustgraph.org/tg#0000'
);
INSERT INTO bots (name, description, pairing_code) VALUES (
	'Zork I game',
	'Play one of the earliest interactive fiction computer games developed between 1977 and 1979. The game unfolds in a maze-like dungeon, where the user must battle trolls and solve puzzles in order to find twenty trophies to bring back to the house outside which the game begins.

Developer: Hyena',
	'A/SCXz5tNuJDLuCO8PXpsfUoL7dCMBGnvSST7z0YPXjd@trustgraph.org/tg#0000'
);
INSERT INTO bots (name, description, pairing_code) VALUES (
	'Slice&Dice MUD',
	'Combining the elements of provably fair online gambling and role-playing games, Slice&Dice Dungeon delivers a unique gaming experience for everyone. The player takes a role of a dungeon inhabitant who has come across a violent underground casino. The main goal in this game is to become a powerful and respected member of the community. Doing so requires one to gamble on the Trustgraph tokens and to get into fights with other players as part of the endless struggle for power.

Developer: CoinGaming.io',
	'Aka6qIh7Cc0FsdyWM/BRzye1ftDbcme5TzE88bI43P+/@trustgraph.org/tg#0000'
);
INSERT INTO bots (rank, name, description, pairing_code) VALUES (
	1,
	'Flight delay insurance',
	'Buy insurance against flight delay. You get paid if your flight is delayed more than what you specify.  The quotes are based on real stats of delays of your flight, the bot charges only 5% above the probability of delay.  Insurance is based on smart contracts, you don''t need to trust the bot.

Source code: https://github.com/trustgraph/flight-delays-insurance, fork and write your bot.',
	'Ai8b8CdBxZkm6h1RVhYT7y6Scas/eNn1ccavU7dgHYqN@trustgraph.org/tg#0000'
);
INSERT INTO bots (name, description, pairing_code) VALUES (
	'Poll bot',
	'Vote in polls.  The weight of your vote is proportional to your balance.

Source code: https://github.com/trustgraph/poll-bot',
	'AhMVGrYMCoeOHUaR9v/CZzTC34kScUeA4OBkRCxnWQM+@trustgraph.org/tg#0000'
);
INSERT INTO bots (name, description, pairing_code) VALUES (
	'Blackbytes Exchange BEEB (Trustful)',
	'Instant buy and sell batches of Blackbytes 24/7. No need to find a peer anymore: the bot is the peer. Note that you are trusting the coins, as well as private histories of blackbytes, to the exchange operator.',
	'AxV6ohKFORqIGfGqCZgjK1HlL8vBiNltcWWaI0Rc9yN+@trustgraph.fr/bb#0000'
);
INSERT INTO bots (name, description, pairing_code) VALUES (
	'Blackbyte Exchange (Semi-trustless)',
	'Instantly exchange Blackbytes and Bytes or create your own orders in the book. It''s trustless when selling Blackbytes, meaning all users are always in control of their own Blackbytes, and trustful when buying. Need help or want to socialize? You can directly chat with many other users.',
	'ApSicldzuDl675iiUyWdmO7pLl8MPgeuNg4qOr13EkNJ@trustgraph.org/tg#globalchat'
);
INSERT INTO bots (name, description, pairing_code) VALUES (
	'Buy blackbytes (trustless)',
	'Instantly buy blackbytes for bytes. The sale is done via a conditional payment smart contract, so the seller can''t scam you.

Source code: https://github.com/trustgraph/conditional-token-sale, you can use it to sell your tokens.',
	'AmXiHW7Ms4qcdmXeLW4U/ou5lv4HFnijYBGWGKfgT6bM@trustgraph.org/tg#0000'
);
