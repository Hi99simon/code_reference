const functions = require("firebase-functions");
const admin = require("firebase-admin");
const db = admin.firestore();

//auth_provider.dart
exports.signup = functions.https.onCall(async (data, context) => {
  var batch = db.batch();
  const userStorageRef = db.collection("userStorage").doc(data.userId);
  const normalDataRef = db.collection("normalData").doc(data.userId);
  const userProfileRef = db.collection("userProfile").doc(data.userId);
  const userStarCoins = db.collection("userStarCoins").doc(data.userId);
  const userMediaFolderRef = db
    .collection("userProfile")
    .doc(data.userId)
    .collection("mediaFolder")
    .doc(data.newFolderId);

  batch.set(
    userStorageRef,
    {
      storageAvailable: 524288000,
      storageUsed: 0,
      upgradedStorage: false,
      uid: data.userId,
    },
    { merge: true }
  );

  batch.set(
    normalDataRef,
    {
      uid: data.userId,
      userEmail: data.userEmail,
      userPassword: data.userPassword,
      createDate: data.datenow,
    },
    { merge: true }
  );

  batch.set(
    userMediaFolderRef,
    {
      mediaFolderId: data.newFolderId,
      mediaFolderName: "masterFolder",
      mediaFolderCreateDate: data.datenow,
      mediaFolerCreatorId: data.userId,
      isRemovedMediaFolder: false,
      isBannedMediaFolder: false,
    },
    { merge: true }
  );

  batch.set(
    userProfileRef,
    {
      autoLogin: data.isAutoLogin,
      activeDevice: [],
      createDate: data.datenow,
      uid: data.userId,
      userDisplayName: data.userDisplayName,
      userEmail: data.userEmail,
      userProfileImgURL: data.userProfileImgURL,
      userProfileBackground: data.userProfileBgURL,
      userLeftWord: "",
      userRightWord: "",
      userMotto: "",
      userProfileLinks: [],
      userSocialLinks: {},
      userNameMaskColorChoice: "black",
      //HK preset
      userNationality: 852,
      userAppLanguage: 852,
      userAppDollar: 852,
      isUserAcVerified: data.isUserAcVerified,
      isUserAcPublic: data.isUserAcPublic,
      isUserEmailable: data.isUserEmailable,
      isUserBanned: false,
      userMasterFolderId: data.newFolderId,
      userFollowersCount: 0,
      userFollowingCount: 0,
      activeDeviceCount: 1,
      publishCourseChanceCount: 1,
    },
    { merge: true }
  );

  batch.set(
    userStarCoins,
    {
      userId: data.userId,
      userDisplayName: data.userDisplayName,
      userProfileImgURL: data.userProfileImgURL,
      userCurrentCoinsSumCount: 0,
      userCurrentPurchasedCoinsCount: 0,
      userCurrentReceivedCoinsCount: 0,
      userRetrievedCoinsHistoryCount: 0,
      userUsedCoinsHistoryCount: 0,
    },
    { merge: true }
  );

  await batch.commit().then((writeResult) => {
    console.log("寫左落serverla");
    console.log(`Document written at: ${writeResult.writeTime.toDate()}`);
    console.log(`Document written at: ${writeResult.writeResult}`);
    return {
      response: true,
    };
  });
});
