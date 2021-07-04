const functions = require("firebase-functions");
const admin = require("firebase-admin");
const db = admin.firestore();

exports.checkUserExist = functions.https.onCall(
    async(data,context)=>{
        var userProfileColRef = db.collection("userProfile");
        var query = await userProfileColRef.where("uid", "==",  data.userId).get();
        console.log( data.userId);

        if(query.docs.length>0){
            console.log("用戶存在");
            return {
                userExist: true,
              };
        }else{
            console.log("用戶不存在");
            return {
                userExist: false,
              };
        }
    }
);