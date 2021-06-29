const functions = require("firebase-functions");
const admin = require("firebase-admin");
const db = admin.firestore();

exports.updateProfile = functions.https.onCall(async (data, context) => {
  console.log("update_profile.js");
  var batch = db.batch();
  const userProfileRef = db.collection("userProfile").doc(data.userId);
  const userProfileHistoryRef = db
    .collection("userProfile")
    .doc(data.userId)
    .collection("userProfileEditHistory")
    .doc(data.datenow);

  const profile = {
    createDate: data.datenow,
    uid: data.userId,
    userDisplayName: data.userDisplayName,
    userEmail: data.userEmail,
    userProfileImgURL: data.userProfileImgURL,
    userProfileBackground: data.userProfileBgURL,
    userLeftWord: data.userLeftWord,
    userRightWord: data.userRightWord,
    userMotto: data.userMotto,
    userProfileLinks: data.userProfileLinks,
    userSocialLinks: data.userSocialLinks,
    userNameMaskColorChoice: "black",
    userNationality: data.userNationality,
    userAppLanguage: data.userAppLanguage,
    userAppDollar: data.userAppDollar,
    isUserAcVerified: data.isUserAcVerified,
    isUserAcPublic: data.isUserAcPublic,
    isUserEmailable: data.isUserEmailable,
    isUserBanned: data.isUserBanned,
    userMasterFolderId: data.userMasterFolderId,
    userFollowersCount: data.userFollowersCount,
    userFollowingCount: data.userFollowingCount,
    activeDeviceCount: data.activeDeviceCount,
    publishCourseChanceCount: data.publishCourseChanceCount,
  };
  batch.set(userProfileRef, profile, { merge: true });
  batch.set(userProfileHistoryRef, profile, { merge: true });

  try {
    const writeResult = await batch.commit();
    return {
      response: true,
    };
  } catch (error) {
    console.log(error);
  }

  return {
    response: false,
  };
});
