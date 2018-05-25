/*jslint node: true */
"use strict";

exports.clientName = 'TTT';
exports.minClientVersion = '1.1.0';

// https://console.developers.google.com
exports.pushApiProjectNumber = 0;
exports.pushApiKey = '';

exports.port = 6655;
//exports.myUrl = 'wss://mydomain.com/bb';
exports.bServeAsHub = true;
exports.bSaveJointJson = true;
exports.bLight = false;

// this is used by wallet vendor only, to redirect bug reports to developers' email
exports.bug_sink_email = 'admin@example.org';
exports.bugs_from_email = 'bugs@example.org';

exports.HEARTBEAT_TIMEOUT = 5 * 1000;

exports.storage = 'sqlite';


exports.initial_witnesses = [
	"34NRY6HRBMWYMJQUKBF22R7JEKXYUHHW",
	"3C3OHD7WEFKV6RDF2U4M74RVK7YMDP7I",
	"4QBVMWX7DRAIVV4CZEVKS3IAQAFDPFBB",
	"4VCBX74SQMW46OKDTHXDVIFVIP2V6NFX",
	"4VYYR2YO6NV4NTF572AUBEKJLSTM4J4E",
	"AKB7DYDKTIMSOUNHUFB5PHKXOOYCM3YF",
	"B4Z366GZMCWJGPCQI5ROPK3L5OEBT7QD",
	"D27P6DGHLPO5A7MSOZABHOOWQ3BJ56ZI",
	"I6IK6MIYY34C4LV3JU6MNMGCJJN6VSKC",
	"KPQ3CRPBG5FSKVEH6Y76ETGD5D2N7QZ7",
	"NKLP6XURGMNT3ZUCJBCUVHB6BRNZTZL5",
	"QSOMNL7YPFQCYDKFUO63Y7RBLXDRDVJX"

];

exports.initial_peers = [
	"wss://raytest.trustnote.org",
	"wss://shawtest.trustnote.org"
];

console.log('finished hub conf');
