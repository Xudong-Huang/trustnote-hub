/*jslint node: true */
"use strict";
require('trustnote-relay');
var conf = require('./conf');
var network = require('trustnote-common/network');
var eventBus = require('trustnote-common/event_bus.js');
var push = require('./push');

var ojb_hash = require('trustnote-common/object_hash');

eventBus.on('peer_version', function (ws, body) {
	if (body.program == conf.clientName) {
		if (conf.minClientVersion && compareVersions(body.program_version, '1.0.7') == '==')
			return;
		if (conf.minClientVersion && compareVersions(body.program_version, conf.minClientVersion) == '<')
			network.sendJustsaying(ws, 'new_version', { version: conf.minClientVersion });
		// if (compareVersions(body.program_version, '1.5.1') == '<')
		// 	ws.close(1000, "mandatory upgrade");
	}

	// var joint = JSON.parse('{"unit":{"unit":"nIcYRvz1AiAwoMWhOz/h5tRL3fZvI2CdEg4tNo7hhLk=","version":"1.0","alt":"1","witness_list_unit":"MtzrZeOHHjqVZheuLylf0DX7zhp10nBsQX5e/+cA3PQ=","last_ball_unit":"dimZTmLvmjNfo7I6Go9juCIokk5I+tgyxAfNPlg16G4=","last_ball":"SVnrEYhIOKmku91eWlwnPMV2gf/lMYpg36AL/zfakag=","headers_commission":344,"payload_commission":157,"main_chain_index":65936,"timestamp":1527218469,"parent_units":["Y+A+trJA30+P6PsC0hX5CwhNDj80w4OmJMcnq5Ou1FU="],"authors":[{"address":"D27P6DGHLPO5A7MSOZABHOOWQ3BJ56ZI","authentifiers":{"r":"+/d2BCSgLE30z8M1XUHQc6slv9w+Srf8yOQZf7IZQP4i1Xzmyj2ycce5yKnQOj3ZBupX28cQ+FWB1DRbkTrn2g=="}}],"messages":[{"app":"payment","payload_hash":"15LThwlDEC1nRe48EGg5giJsMkQ9Bhe3Z/kRyZ0RmNY=","payload_location":"inline","payload":{"inputs":[{"unit":"rHwZyXWZRFeU/LA3Kga+xGvjijNXYQwTbufMjqdxmPg=","message_index":0,"output_index":0}],"outputs":[{"address":"D27P6DGHLPO5A7MSOZABHOOWQ3BJ56ZI","amount":82375}]}}]}}');

	// var s = ojb_hash.getUnitHash(joint.unit);

	// console.log("asdfasdfazsdfas:   " + s);
	// process.exit(100);
});

function compareVersions(currentVersion, minVersion) {
	if (currentVersion === minVersion) return '==';

	var cV = currentVersion.match(/([0-9])+/g);
	var mV = minVersion.match(/([0-9])+/g);
	var l = Math.min(cV.length, mV.length);
	var diff;

	for (var i = 0; i < l; i++) {
		diff = parseInt(cV[i], 10) - parseInt(mV[i], 10);
		if (diff > 0) {
			return '>';
		} else if (diff < 0) {
			return '<'
		}
	}

	diff = cV.length - mV.length;
	if (diff == 0) {
		return '==';
	} else if (diff > 0) {
		return '>';
	} else if (diff < 0) {
		return '<';
	}
}
