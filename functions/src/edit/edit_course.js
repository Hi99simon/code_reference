const functions = require("firebase-functions");
const admin = require("firebase-admin");
const db = admin.firestore();

exports.editCourse = functions.https.onCall(async (data, context) => {
  console.log("edit_course.js");

  return {
    response: data.damn,
  };
});
