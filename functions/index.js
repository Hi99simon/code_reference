// const testone = require('./test');

// const post = require('./post');
// exports.post =post.post;

const functions = require("firebase-functions");
const admin = require("firebase-admin");

admin.initializeApp(functions.config().firebase);

const signup = require("./src/auth/signup");
const login = require("./src/auth/login")
const updateProfile = require("./src/profile/update_profile");
const editCourse = require("./src/edit/edit_course");
const editEvent = require("./src/edit/edit_event");
const editPost = require("./src/edit/edit_post");
const editProduct = require("./src/edit/edit_product");
const fetchVerticalCourseCards = require("./src/fetch/fetch_vertical_course_cards");
const fetchHorizontalCourseCards = require("./src/fetch/fetch_horizontal_course_cards");
const checkUserExist = require("./src/auth/check_user_exist");

exports.signup = signup.signup;
exports.login = login.login;
exports.updateProfile = updateProfile.updateProfile;
exports.editCourse = editCourse.editCourse;
exports.editEvent = editEvent.editEvent;
exports.editPost = editPost.editPost;
exports.editProduct = editProduct.editProduct;
exports.fetchVerticalCourseCards =
  fetchVerticalCourseCards.fetchVerticalCourseCards;
exports.fetchHorizontalCourseCards =
  fetchHorizontalCourseCards.fetchHorizontalCourseCards;
exports.checkUserExist = checkUserExist.checkUserExist;