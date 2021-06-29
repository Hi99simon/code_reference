const functions = require("firebase-functions");
const admin = require("firebase-admin");
const db = admin.firestore();

exports.login = functions.https.onCall(async (data,context)=>{
    console.log("寫左落serverla");
    return {
        response:true,
    }
})