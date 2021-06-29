const functions = require("firebase-functions");
const admin = require("firebase-admin");
const db = admin.firestore();

exports.editEvent = functions.https.onCall(async (data, context) => {
    console.log("edit_event.js")
});
