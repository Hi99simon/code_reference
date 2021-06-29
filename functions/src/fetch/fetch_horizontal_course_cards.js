const functions = require("firebase-functions");
const admin = require("firebase-admin");
const db = admin.firestore();

exports.fetchHorizontalCourseCards = functions.https.onCall(
  async (data, context) => {
    var coursesPublicColRef = db.collection("coursesPublic").limit(12);
    const courseSnaps = await coursesPublicColRef.get();
    const newCourseList = [];
    const finalCourseList = [];
    const courseStatList = [];
    courseSnaps.docs.map((item) => {
      const data = item.data();
      const newCourseMap = {
        courseTitle: data["courseTitle"],
        courseDescription: data["courseDescription"],
        courseId: data["courseId"],
        coursePromoImgURL: data["coursePromoImgURL"],
        coursePromo45ImgURL: data["coursePromo45ImgURL"],
        courseUnitCount: data["courseUnitCount"],
        courseUpdateDate: data["courseUpdateDate"],
        courseCreatorId: data["courseCreatorId"],
        courseWebURL: data["courseWebURL"],
      };
      newCourseList.push(newCourseMap);
    });

    for (let item of newCourseList) {
      try {
        const data = item;
        const getCourseStat = await db
          .collection("courseStat")
          .doc(item["courseId"])
          .get();
        courseStatList.push(getCourseStat.data());
        const newCourseMap = {
          courseTitle: data["courseTitle"],
          courseId: data["courseId"],
          coursePromoImgURL: data["coursePromoImgURL"],
          coursePromo45ImgURL: data["coursePromo45ImgURL"],
          courseUnitCount: data["courseUnitCount"],
          courseCommentCount: getCourseStat.data()["courseCommentCount"],
          courseLikeCount: getCourseStat.data()["courseLikeCount"],
          courseRecommendCount: getCourseStat.data()["courseRecommendCount"],
          courseSaveCount: getCourseStat.data()["courseSaveCount"],
          courseCreatorId: data["courseCreatorId"],
          courseWebURL: data["courseWebURL"],
        };
        finalCourseList.push(newCourseMap);
      } catch (error) {
        console.log("get course stat error" + error);
      }
    }
    return {
      response: true,
      finalCourseList,
    };
  }
);
