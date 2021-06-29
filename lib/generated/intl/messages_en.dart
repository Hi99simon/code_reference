// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(num) => "~HK\$ ${num}";

  static String m1(num) => "~NTD ${num}";

  static String m2(num) => "~USD ${num}";

  static String m3(num) => "Already Create ${num} Drafts";

  static String m4(num) =>
      "Creator can simlutaneously create ${num} draft courses. Please publish or create existing draft courses.";

  static String m5(date) => "On or before ${date}";

  static String m6(days) => "Blacklisted for ${days}";

  static String m7(num) => "Comments(${num})";

  static String m8(amount) => "Join to enjoy ${amount} Starcoins discount";

  static String m9(day) => "${day} days ago";

  static String m10(days) => "${days} Days Since Registration";

  static String m11(percentage) => "Discounted ${percentage}%";

  static String m12(percentage) => "Enjoy ${percentage}% Discount";

  static String m13(HH, MM) => "${HH}HH ${MM}MM";

  static String m14(name) => "${name}\'s Submission";

  static String m15(hour) => "${hour} hours ago";

  static String m16(tutor) => "${tutor} also joined...";

  static String m17(date) => "Last Update: ${date}";

  static String m18(num) => "${num} Likes";

  static String m19(currentsize) => "Storage Space Used ${currentsize}";

  static String m20(minute) => "${minute} minutes ago";

  static String m21(month) => "${month} months ago";

  static String m22(amount) => "${amount} pcs";

  static String m23(joindate) => "Joined: ${joindate}";

  static String m24(num) => "${num} Pushes";

  static String m25(seconds) => "Auto-update after ${seconds} seconds";

  static String m26(code) => "Redeemed ${code}";

  static String m27(second) => "${second} seconds ago";

  static String m28(social) => "Enter your ${social} link";

  static String m29(link) => "Start With ${link}";

  static String m30(tutor) => "${tutor}\'s Courses";

  static String m31(num) => "${num}Units";

  static String m32(name) => "${name}\'s Posts";

  static String m33(name) => "${name}\'s Fans";

  static String m34(name) => "${name} Followed";

  static String m35(week) => "${week} weeks ago";

  static String m36(year) => "${year} years ago";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "EnquireOrder": MessageLookupByLibrary.simpleMessage("Enquire"),
        "aboutcourse": MessageLookupByLibrary.simpleMessage("About Course"),
        "aboutcreatormoney":
            MessageLookupByLibrary.simpleMessage("Creator\'s Revenue"),
        "abouthkd": m0,
        "aboutntd": m1,
        "aboutusd": m2,
        "ac": MessageLookupByLibrary.simpleMessage("User Account"),
        "acemail": MessageLookupByLibrary.simpleMessage("Your Email"),
        "acissynced": MessageLookupByLibrary.simpleMessage(
            "Your Account Has Been Synced"),
        "acname": MessageLookupByLibrary.simpleMessage("Account Name"),
        "acnamecanuse":
            MessageLookupByLibrary.simpleMessage("This name is available"),
        "acnametaken":
            MessageLookupByLibrary.simpleMessage("This name has been taken"),
        "actualpayment": MessageLookupByLibrary.simpleMessage("Acutal Payment"),
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "add169img": MessageLookupByLibrary.simpleMessage("for 16:9 ratio"),
        "add169imgtext": MessageLookupByLibrary.simpleMessage(
            "displayed on horizontal scene"),
        "add45img": MessageLookupByLibrary.simpleMessage("for 4:5 ratio"),
        "add45text":
            MessageLookupByLibrary.simpleMessage("displayed on vertical scene"),
        "addcontent":
            MessageLookupByLibrary.simpleMessage("Click to add content"),
        "addfile": MessageLookupByLibrary.simpleMessage("Add Files"),
        "addlink": MessageLookupByLibrary.simpleMessage("Add Links"),
        "addmedia": MessageLookupByLibrary.simpleMessage("Add Media"),
        "addnewsection":
            MessageLookupByLibrary.simpleMessage("Add New Section"),
        "addtoac": MessageLookupByLibrary.simpleMessage("Add to account"),
        "addvideo": MessageLookupByLibrary.simpleMessage("Add Video"),
        "advanced": MessageLookupByLibrary.simpleMessage("Advanced"),
        "afterimg": MessageLookupByLibrary.simpleMessage("After Image"),
        "agreeandpaystarcoin":
            MessageLookupByLibrary.simpleMessage("Agree and Pay Starcoin"),
        "alconfirm": MessageLookupByLibrary.simpleMessage("Login"),
        "alemail": MessageLookupByLibrary.simpleMessage("Enter Email"),
        "alforgot": MessageLookupByLibrary.simpleMessage("Forgot Password?"),
        "algoreg": MessageLookupByLibrary.simpleMessage("Register"),
        "alignqrcodewithframe": MessageLookupByLibrary.simpleMessage(
            "Align the QR code within the frame to scan"),
        "allcourses": MessageLookupByLibrary.simpleMessage("All Courses"),
        "allnotification":
            MessageLookupByLibrary.simpleMessage("All Notification"),
        "allorderrecord":
            MessageLookupByLibrary.simpleMessage("All Order Record"),
        "allpurchaserecord":
            MessageLookupByLibrary.simpleMessage("All Purchase Record"),
        "alnoactext": MessageLookupByLibrary.simpleMessage("Need an account? "),
        "alpw": MessageLookupByLibrary.simpleMessage("Enter Password"),
        "alreadymanydrafts": m3,
        "alreadymanydraftsdoby": m4,
        "alreadysentpw": MessageLookupByLibrary.simpleMessage(
            "Reset Password Email has been sent. It may takes several minutes to receive."),
        "announcementtext": MessageLookupByLibrary.simpleMessage(
            "Course Announcement: Inform all students about your coming course. This is suitable for creators who are producing a course. If the course is not started at designated dates, all desposits will be refunded to students. This may affect your course successful rate."),
        "announcemode": MessageLookupByLibrary.simpleMessage("Announcement"),
        "appTitle": MessageLookupByLibrary.simpleMessage("STARIFLY"),
        "appfunctionsuggest":
            MessageLookupByLibrary.simpleMessage("Suggestion"),
        "applyfirstcourse": MessageLookupByLibrary.simpleMessage(
            "Let\'s Join Your First Course"),
        "approved": MessageLookupByLibrary.simpleMessage("Approved"),
        "arappbartitle": MessageLookupByLibrary.simpleMessage("Register"),
        "arbody": MessageLookupByLibrary.simpleMessage(
            "Sign up to learn from the best creators"),
        "arpwconfirm": MessageLookupByLibrary.simpleMessage("Confirm Password"),
        "artitle": MessageLookupByLibrary.simpleMessage("Register Now"),
        "arts": MessageLookupByLibrary.simpleMessage("Arts"),
        "asm": MessageLookupByLibrary.simpleMessage("Asm"),
        "asmguidance":
            MessageLookupByLibrary.simpleMessage("Assignment Guidelines"),
        "asmmarks": MessageLookupByLibrary.simpleMessage("Assignment Marks"),
        "assignment": MessageLookupByLibrary.simpleMessage("Assignments"),
        "assignmentshort": MessageLookupByLibrary.simpleMessage("Asm"),
        "atlas": MessageLookupByLibrary.simpleMessage("Atlas"),
        "audiounit": MessageLookupByLibrary.simpleMessage("Audio"),
        "authloginbody":
            MessageLookupByLibrary.simpleMessage("Login to share and learn!"),
        "authloginwelcome":
            MessageLookupByLibrary.simpleMessage("Welcome Back"),
        "availablestarcoins":
            MessageLookupByLibrary.simpleMessage("My StarCoins"),
        "averagecosts": MessageLookupByLibrary.simpleMessage("Avg. Costs"),
        "banned": MessageLookupByLibrary.simpleMessage("Banned"),
        "bannedpleasecontactstarifly": MessageLookupByLibrary.simpleMessage(
            "Please contact STARIFLY for more information"),
        "basic": MessageLookupByLibrary.simpleMessage("Basic"),
        "beforedate": m5,
        "beforeimg": MessageLookupByLibrary.simpleMessage("Before Image"),
        "bestforcreator":
            MessageLookupByLibrary.simpleMessage("Best For Creators"),
        "bestorforcoursetutors": MessageLookupByLibrary.simpleMessage(
            "Best For Multi-course Creators"),
        "bestorformassmedia": MessageLookupByLibrary.simpleMessage(
            "Best For Mass Video Media Storage"),
        "bestprice": MessageLookupByLibrary.simpleMessage("Best Price"),
        "bestseller": MessageLookupByLibrary.simpleMessage("Best Seller"),
        "blacklistedfor": m6,
        "blacklisteduser":
            MessageLookupByLibrary.simpleMessage("Blacklisted Users"),
        "blacklistuser":
            MessageLookupByLibrary.simpleMessage("Blacklist This User"),
        "blockuser": MessageLookupByLibrary.simpleMessage("Block User"),
        "brimage": MessageLookupByLibrary.simpleMessage(
            "Business Registration Certificate"),
        "buystorage": MessageLookupByLibrary.simpleMessage(
            " You need to increase your storage"),
        "bywiretransfer":
            MessageLookupByLibrary.simpleMessage("By Wire Transfer"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cancelpayment": MessageLookupByLibrary.simpleMessage("Cancal Payment"),
        "cancelreview": MessageLookupByLibrary.simpleMessage("Cancel Review"),
        "cannotundo": MessageLookupByLibrary.simpleMessage("This cannot undo"),
        "cantonese": MessageLookupByLibrary.simpleMessage("Cantonese"),
        "category": MessageLookupByLibrary.simpleMessage("Categories"),
        "celestial": MessageLookupByLibrary.simpleMessage("Celestial"),
        "changeorder": MessageLookupByLibrary.simpleMessage("Change Order"),
        "changetoopen":
            MessageLookupByLibrary.simpleMessage("Changed To Public Account"),
        "changetoprivate":
            MessageLookupByLibrary.simpleMessage("Changed To Private Account"),
        "chargeamount": MessageLookupByLibrary.simpleMessage("Charge Amount"),
        "chat": MessageLookupByLibrary.simpleMessage("Chat"),
        "chatuser": MessageLookupByLibrary.simpleMessage("Chat Users"),
        "checkout": MessageLookupByLibrary.simpleMessage("Check Out"),
        "chinese": MessageLookupByLibrary.simpleMessage("Chinese"),
        "chineseLanguage":
            MessageLookupByLibrary.simpleMessage("Traditional Chinese"),
        "clicktoagree": MessageLookupByLibrary.simpleMessage(
            "Click to indicate that you have read and agreed: "),
        "comment": m7,
        "commentsum": MessageLookupByLibrary.simpleMessage("Comments (ACC)"),
        "companypayee": MessageLookupByLibrary.simpleMessage("Cooperation"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmbody": MessageLookupByLibrary.simpleMessage(
            "Please check your mailbox and follow the guidelines"),
        "confirmed": MessageLookupByLibrary.simpleMessage("Confirmed"),
        "confirmpayment":
            MessageLookupByLibrary.simpleMessage("Confirm Payment"),
        "confirmpurchase":
            MessageLookupByLibrary.simpleMessage("Confirm Purchase"),
        "confirmpurchaseproduct":
            MessageLookupByLibrary.simpleMessage("Confirm Purchase Product"),
        "confirmtitle": MessageLookupByLibrary.simpleMessage("Confirm Email"),
        "contact": MessageLookupByLibrary.simpleMessage("Contact STARIFLY"),
        "contactemail": MessageLookupByLibrary.simpleMessage("Contact Email"),
        "contactinfo": MessageLookupByLibrary.simpleMessage("Contact Info"),
        "contactstarifly":
            MessageLookupByLibrary.simpleMessage("Contact STARIFLY"),
        "continuelearning": MessageLookupByLibrary.simpleMessage("Continue"),
        "converttodrafttext": MessageLookupByLibrary.simpleMessage(
            "This course is scheduled to be review. If you would like to modify the contents, please revert to \'Draft Status\' and resubmit when done."),
        "copied": MessageLookupByLibrary.simpleMessage("Copied to Clipboard"),
        "couponamount": MessageLookupByLibrary.simpleMessage("Coupon Amount"),
        "couponapplicable":
            MessageLookupByLibrary.simpleMessage("This coupon is available"),
        "couponcode": MessageLookupByLibrary.simpleMessage("Enter Coupon Code"),
        "coupondisplaybody": m8,
        "couponexpire":
            MessageLookupByLibrary.simpleMessage("Coupon Expired on"),
        "couponnotapplicable": MessageLookupByLibrary.simpleMessage(
            "This coupon is not available"),
        "course": MessageLookupByLibrary.simpleMessage("Courses"),
        "course1moreproblem": MessageLookupByLibrary.simpleMessage(
            "There are 1 or more problems detected"),
        "courseamount": MessageLookupByLibrary.simpleMessage("Course Amount"),
        "courseapprovestatus":
            MessageLookupByLibrary.simpleMessage("Course Review Status"),
        "coursebanned":
            MessageLookupByLibrary.simpleMessage("This course has been banned"),
        "coursebgc": MessageLookupByLibrary.simpleMessage(
            "Course Background Information Completed"),
        "coursebgic": MessageLookupByLibrary.simpleMessage(
            "Course Background Information Incomplete"),
        "coursebgsetting":
            MessageLookupByLibrary.simpleMessage("Course Setting"),
        "coursecategory":
            MessageLookupByLibrary.simpleMessage("Course Categories"),
        "coursecode": MessageLookupByLibrary.simpleMessage("Course Code"),
        "coursecomingsoon":
            MessageLookupByLibrary.simpleMessage("Courses are coming to town"),
        "coursecreatedate":
            MessageLookupByLibrary.simpleMessage("Course Create Date"),
        "coursediscountprice":
            MessageLookupByLibrary.simpleMessage("Course Discounted Price"),
        "courseduration":
            MessageLookupByLibrary.simpleMessage("Course Duration"),
        "courseenrollmentpolicy":
            MessageLookupByLibrary.simpleMessage("Course Enrollment Policy"),
        "courseenrolpolicy":
            MessageLookupByLibrary.simpleMessage("Course Enrollment Policy"),
        "courseinfo": MessageLookupByLibrary.simpleMessage("Info"),
        "courseinfoc": MessageLookupByLibrary.simpleMessage(
            "Course Detail Information Completed"),
        "courseinfoic": MessageLookupByLibrary.simpleMessage(
            "Course Detail Information Incomplete"),
        "courseinfosetting":
            MessageLookupByLibrary.simpleMessage("Course Info"),
        "courseinreviewnow": MessageLookupByLibrary.simpleMessage(
            "This course has been submitted for review."),
        "courselevel": MessageLookupByLibrary.simpleMessage("Course Level"),
        "coursemainlanguage":
            MessageLookupByLibrary.simpleMessage("Main Teaching Language"),
        "coursenoproblem": MessageLookupByLibrary.simpleMessage(
            "This course is ready for review"),
        "courseprice": MessageLookupByLibrary.simpleMessage("Course Price"),
        "coursepromoc": MessageLookupByLibrary.simpleMessage(
            "Course Promotion Materials Completed"),
        "coursepromoic": MessageLookupByLibrary.simpleMessage(
            "Course Promotion Materials Incomplete"),
        "coursepromoimg":
            MessageLookupByLibrary.simpleMessage("Course Promotional Image"),
        "coursepromosetting":
            MessageLookupByLibrary.simpleMessage("Course Promo"),
        "coursepromovid":
            MessageLookupByLibrary.simpleMessage("Course Promotional Video"),
        "coursepromovidtext": MessageLookupByLibrary.simpleMessage(
            "Promotional Video to raise students\' awareness and interests to join the course "),
        "courseremoved": MessageLookupByLibrary.simpleMessage(
            "This course has been removed"),
        "courseremovedbody": MessageLookupByLibrary.simpleMessage(
            "If you want to re-edit this course, please change to \'Draft\' mode."),
        "coursereviewdeadline": MessageLookupByLibrary.simpleMessage(
            "Course Review Submission Deadline"),
        "coursereviewdealinetext": MessageLookupByLibrary.simpleMessage(
            "This course should be submitted for review on or before the submission deadline. Students will be refunded if the course failed to pass the review process and your course successful rate may be affected."),
        "coursesalec": MessageLookupByLibrary.simpleMessage(
            "Course Sales Setting Completed"),
        "coursesaleic": MessageLookupByLibrary.simpleMessage(
            "Course Sales Setting Incomplete"),
        "coursesalesetting":
            MessageLookupByLibrary.simpleMessage("Course Sale"),
        "coursestartdate":
            MessageLookupByLibrary.simpleMessage("Course Start Date"),
        "coursestatus": MessageLookupByLibrary.simpleMessage("Course Status"),
        "coursesubmitchecktext": MessageLookupByLibrary.simpleMessage(
            "No modifications can be made during the process. Please double check before submission."),
        "coursesubmittimetext": MessageLookupByLibrary.simpleMessage(
            "The review process take around 48 Hours. Courses will be published immediately after approval."),
        "coursesupportlanguage":
            MessageLookupByLibrary.simpleMessage("Translated Language"),
        "courseteaching": MessageLookupByLibrary.simpleMessage("Course Units"),
        "coursetutor": MessageLookupByLibrary.simpleMessage("Course Creators"),
        "courseunitc":
            MessageLookupByLibrary.simpleMessage("Course Unit Completed"),
        "courseunitcount":
            MessageLookupByLibrary.simpleMessage("Course Units Count"),
        "courseunitic":
            MessageLookupByLibrary.simpleMessage("Course Unit Incomplete"),
        "courseunits": MessageLookupByLibrary.simpleMessage("Units"),
        "courseunitsetting":
            MessageLookupByLibrary.simpleMessage("Course Units"),
        "courseupdatedate":
            MessageLookupByLibrary.simpleMessage("Course Update Date"),
        "createaccount":
            MessageLookupByLibrary.simpleMessage("Create New Account"),
        "createcourse": MessageLookupByLibrary.simpleMessage("Create Course"),
        "createevent": MessageLookupByLibrary.simpleMessage("Add New Event"),
        "createfirstcourse": MessageLookupByLibrary.simpleMessage(
            "Let\'s Create Your First Course"),
        "createnewcourse":
            MessageLookupByLibrary.simpleMessage("Create New Course"),
        "createnewpost":
            MessageLookupByLibrary.simpleMessage("Create New Post"),
        "createnewproduct":
            MessageLookupByLibrary.simpleMessage("Create New Product"),
        "createpost": MessageLookupByLibrary.simpleMessage("Create Post"),
        "createsubmission":
            MessageLookupByLibrary.simpleMessage("Create Submission"),
        "createyoufirstpost": MessageLookupByLibrary.simpleMessage(
            "Share Your Feelings, Knowledge and Activities with the Broad STARIFLY Community"),
        "creator": MessageLookupByLibrary.simpleMessage("Creator"),
        "creatorCountry": MessageLookupByLibrary.simpleMessage("Your Country"),
        "creatorincome": MessageLookupByLibrary.simpleMessage("My Income"),
        "creatorlevelup":
            MessageLookupByLibrary.simpleMessage("Course Creator Upgrade"),
        "creditcardfailed": MessageLookupByLibrary.simpleMessage(
            "This Credit Card Failed. Please Check."),
        "creditcardpurchase":
            MessageLookupByLibrary.simpleMessage("Credit Card"),
        "currentaccountbalance":
            MessageLookupByLibrary.simpleMessage("Current Starcoin Balance"),
        "currentbalance":
            MessageLookupByLibrary.simpleMessage("Current Balance"),
        "currentpreview":
            MessageLookupByLibrary.simpleMessage("Current Preview"),
        "dayago": m9,
        "daysafterregister": m10,
        "defaultcolor": MessageLookupByLibrary.simpleMessage("Default"),
        "defaultfont": MessageLookupByLibrary.simpleMessage("Default Font"),
        "defaultranking": MessageLookupByLibrary.simpleMessage("DEFAULT"),
        "deletemycomment":
            MessageLookupByLibrary.simpleMessage("Delete My Comment"),
        "deletepost": MessageLookupByLibrary.simpleMessage("Delete Post"),
        "deletethisasm":
            MessageLookupByLibrary.simpleMessage("Delete This Asm"),
        "deletethiscourse":
            MessageLookupByLibrary.simpleMessage("Remove This Course"),
        "deletethisquiz":
            MessageLookupByLibrary.simpleMessage("Delete This Quiz"),
        "deletethisunit":
            MessageLookupByLibrary.simpleMessage("Delete This Unit"),
        "design": MessageLookupByLibrary.simpleMessage("Design"),
        "discount": MessageLookupByLibrary.simpleMessage("Discount"),
        "discountedcourse":
            MessageLookupByLibrary.simpleMessage("Discounted Course"),
        "discountedpercentage": m11,
        "displayModeDark": MessageLookupByLibrary.simpleMessage("Dark Mode"),
        "displayModeLight": MessageLookupByLibrary.simpleMessage("Light Mode"),
        "displayModeSystem":
            MessageLookupByLibrary.simpleMessage("System Preference"),
        "document": MessageLookupByLibrary.simpleMessage("Doc"),
        "downloadstarifly":
            MessageLookupByLibrary.simpleMessage("Download STARIFLY App"),
        "draft": MessageLookupByLibrary.simpleMessage("Draft"),
        "draftmode": MessageLookupByLibrary.simpleMessage("Draft Mode"),
        "earnedMarks": MessageLookupByLibrary.simpleMessage("Earned Marks"),
        "earnedcoin": MessageLookupByLibrary.simpleMessage("Earned Coins"),
        "earnedstarcoins":
            MessageLookupByLibrary.simpleMessage("Earned StarCoins"),
        "earning": MessageLookupByLibrary.simpleMessage("Earning"),
        "editProfileTitle":
            MessageLookupByLibrary.simpleMessage("Edit Profile"),
        "editchoice": MessageLookupByLibrary.simpleMessage("Editor\'s Choice"),
        "editcontent": MessageLookupByLibrary.simpleMessage("Edit Content"),
        "editcourse": MessageLookupByLibrary.simpleMessage("Edit Course"),
        "editingcourse": MessageLookupByLibrary.simpleMessage("Editing Course"),
        "editingevent": MessageLookupByLibrary.simpleMessage("Editing Event"),
        "editingnow": MessageLookupByLibrary.simpleMessage("Editing Now"),
        "editingpost": MessageLookupByLibrary.simpleMessage("Editing Post"),
        "editingproduct":
            MessageLookupByLibrary.simpleMessage("Editing Product"),
        "editquiz": MessageLookupByLibrary.simpleMessage("Edit Quiz"),
        "emailalreadyused": MessageLookupByLibrary.simpleMessage(
            "This Email Has Been Registered"),
        "emailnotallow": MessageLookupByLibrary.simpleMessage(
            "Registration Temporarily Disabled"),
        "emailoverrequest": MessageLookupByLibrary.simpleMessage(
            "Too Many Requests, Please Try Again Later"),
        "emailus": MessageLookupByLibrary.simpleMessage("Email Us"),
        "emailuserdisabled":
            MessageLookupByLibrary.simpleMessage("This Email Is Disabled"),
        "emailweakpassword":
            MessageLookupByLibrary.simpleMessage("Weak Password"),
        "enabledcoupon": MessageLookupByLibrary.simpleMessage("Enabled Coupon"),
        "endeditingtocontinue": MessageLookupByLibrary.simpleMessage(
            "Please save and exit edit mode to continue"),
        "english": MessageLookupByLibrary.simpleMessage("English"),
        "englishLanguage": MessageLookupByLibrary.simpleMessage("English"),
        "enjoycontent":
            MessageLookupByLibrary.simpleMessage("Enjoy the content"),
        "enjoydiscount": m12,
        "enjoyrefundpolicy": MessageLookupByLibrary.simpleMessage(
            "Enjoy 14 Days Return Guarantee After Enrollment, Read More: "),
        "enrolcourse": MessageLookupByLibrary.simpleMessage("Enrol Course"),
        "enter": MessageLookupByLibrary.simpleMessage("Enter"),
        "enteracname":
            MessageLookupByLibrary.simpleMessage("Enter account name"),
        "enterasmdescription": MessageLookupByLibrary.simpleMessage(
            "Enter assignment description"),
        "enterasmtext": MessageLookupByLibrary.simpleMessage(
            "Enter Assignment Text Answer"),
        "enterasmtextcomment": MessageLookupByLibrary.simpleMessage(
            "Enter Assignment Text Comment"),
        "enterasmttitle":
            MessageLookupByLibrary.simpleMessage("Enter assignment title"),
        "enterchoice": MessageLookupByLibrary.simpleMessage("Enter Choice"),
        "entercouponcode":
            MessageLookupByLibrary.simpleMessage("Enter Coupon Code"),
        "entercourse": MessageLookupByLibrary.simpleMessage("Start Course"),
        "entercoursecode":
            MessageLookupByLibrary.simpleMessage("Enter Course Code"),
        "entercoursedescription":
            MessageLookupByLibrary.simpleMessage("Enter Course Description"),
        "entercoursetitle":
            MessageLookupByLibrary.simpleMessage("Enter Course Title"),
        "enterfpsemail":
            MessageLookupByLibrary.simpleMessage("Enter FPS Email"),
        "enterfpsid": MessageLookupByLibrary.simpleMessage("Enter FPS ID"),
        "enterfpsnumber":
            MessageLookupByLibrary.simpleMessage("Enter FPS Phone no."),
        "entermsg": MessageLookupByLibrary.simpleMessage("Enter Message"),
        "enterpaypal":
            MessageLookupByLibrary.simpleMessage("Enter PayPal Email"),
        "enterpostcontent":
            MessageLookupByLibrary.simpleMessage("Enter Post Content"),
        "enterposttitle":
            MessageLookupByLibrary.simpleMessage("Enter Post Title"),
        "enterquestion": MessageLookupByLibrary.simpleMessage("Enter Question"),
        "enterquizdescription":
            MessageLookupByLibrary.simpleMessage("Enter Quiz description"),
        "enterquiztitle":
            MessageLookupByLibrary.simpleMessage("Enter quiz title"),
        "entersearchtext":
            MessageLookupByLibrary.simpleMessage("Search something"),
        "entersectiontitle":
            MessageLookupByLibrary.simpleMessage("Enter section title"),
        "enterunitaudiolink":
            MessageLookupByLibrary.simpleMessage("Enter Unit Audio Link"),
        "enterunitdescription":
            MessageLookupByLibrary.simpleMessage("Enter unit description"),
        "enterunittitle":
            MessageLookupByLibrary.simpleMessage("Enter unit title"),
        "enterusername":
            MessageLookupByLibrary.simpleMessage("Enter user name"),
        "entervideolink":
            MessageLookupByLibrary.simpleMessage("Enter Video Link"),
        "entervideoname":
            MessageLookupByLibrary.simpleMessage("Enter Video Name"),
        "errorpleasetry":
            MessageLookupByLibrary.simpleMessage("Error Please Try Again"),
        "event": MessageLookupByLibrary.simpleMessage("Events"),
        "exceeditemimit":
            MessageLookupByLibrary.simpleMessage("Exceed Insert Item Limit"),
        "explore": MessageLookupByLibrary.simpleMessage("Explore"),
        "feed": MessageLookupByLibrary.simpleMessage("Feeds"),
        "fillprofile":
            MessageLookupByLibrary.simpleMessage("Fill in the information"),
        "filter": MessageLookupByLibrary.simpleMessage("Filter"),
        "finance": MessageLookupByLibrary.simpleMessage("Finance"),
        "finish": MessageLookupByLibrary.simpleMessage("Finish"),
        "folder": MessageLookupByLibrary.simpleMessage("Folder"),
        "folderName": MessageLookupByLibrary.simpleMessage("Folder Name"),
        "follower": MessageLookupByLibrary.simpleMessage("Fans"),
        "following": MessageLookupByLibrary.simpleMessage("Following"),
        "forahealthycommunity":
            MessageLookupByLibrary.simpleMessage("For a healthy community"),
        "forgotpw": MessageLookupByLibrary.simpleMessage("Forgot Password"),
        "fpshkbody": MessageLookupByLibrary.simpleMessage(
            "FPS Service is only applicable to Hong Kong*"),
        "fpshktitle": MessageLookupByLibrary.simpleMessage(
            "Withdraw through FPS (Fill any one below)"),
        "fpsonlyhk":
            MessageLookupByLibrary.simpleMessage("FPS  (Only for Hong Kong)"),
        "free": MessageLookupByLibrary.simpleMessage("Free"),
        "free500already": MessageLookupByLibrary.simpleMessage(
            "STARIFLY has already provided 500Mb free storage space."),
        "freepreview": MessageLookupByLibrary.simpleMessage("Free Preview"),
        "freepreviewplsbuy":
            MessageLookupByLibrary.simpleMessage("Join To Continue"),
        "fromalbumn": MessageLookupByLibrary.simpleMessage("From Album"),
        "fromcamera": MessageLookupByLibrary.simpleMessage("From Camera"),
        "fromcloud": MessageLookupByLibrary.simpleMessage("From Cloud"),
        "fromvideolink": MessageLookupByLibrary.simpleMessage("From Link"),
        "fundmode": MessageLookupByLibrary.simpleMessage("Funding"),
        "fundtext": MessageLookupByLibrary.simpleMessage(
            "Course Funding: Propose your course idea and recruit the first batch of course students. This is suitable for creators who are uncertain to the market reactions. If the course is not started at designated dates, all desposits will be refunded to students. This may affect your course successful rate."),
        "goback": MessageLookupByLibrary.simpleMessage("Back"),
        "gradedalreadythisasm": MessageLookupByLibrary.simpleMessage("Graded"),
        "gradethisasm": MessageLookupByLibrary.simpleMessage("Grade This Asm"),
        "gradienttheme": MessageLookupByLibrary.simpleMessage("Profile Theme"),
        "grey": MessageLookupByLibrary.simpleMessage("Grey"),
        "handcraft": MessageLookupByLibrary.simpleMessage("Handcraft"),
        "headline": MessageLookupByLibrary.simpleMessage("Headline"),
        "hhmm": m13,
        "hidethiscontent":
            MessageLookupByLibrary.simpleMessage("Hide This Content"),
        "hisSubmission": m14,
        "hitranking": MessageLookupByLibrary.simpleMessage("HITS"),
        "hits": MessageLookupByLibrary.simpleMessage("Hits"),
        "hitsum": MessageLookupByLibrary.simpleMessage("Hits (ACC)"),
        "hkd": MessageLookupByLibrary.simpleMessage("HKD"),
        "hotcourse": MessageLookupByLibrary.simpleMessage("Hits"),
        "hour": MessageLookupByLibrary.simpleMessage("HH"),
        "hourago": m15,
        "humanity": MessageLookupByLibrary.simpleMessage("Humanity"),
        "hvassignment":
            MessageLookupByLibrary.simpleMessage("Include Assignment"),
        "hvlimitaccess":
            MessageLookupByLibrary.simpleMessage("Set Limited Access"),
        "hwboardcomingsoon": MessageLookupByLibrary.simpleMessage(
            "Selected assignments by tutors will be displayed here"),
        "icompleted": MessageLookupByLibrary.simpleMessage("Complete"),
        "ifhvproblem": MessageLookupByLibrary.simpleMessage("Contact STARIFLY"),
        "image": MessageLookupByLibrary.simpleMessage("Image"),
        "imageonly": MessageLookupByLibrary.simpleMessage("Select Only Image"),
        "inappcontact": MessageLookupByLibrary.simpleMessage("In-App Contact"),
        "inapppurchase":
            MessageLookupByLibrary.simpleMessage("In-app Purchase"),
        "individualpayee": MessageLookupByLibrary.simpleMessage("Individual"),
        "info": MessageLookupByLibrary.simpleMessage("Info"),
        "inpreparation": MessageLookupByLibrary.simpleMessage("In Preparation"),
        "inreview": MessageLookupByLibrary.simpleMessage("In Review"),
        "instantquiz": MessageLookupByLibrary.simpleMessage("Instant Quiz"),
        "insufficientbalancenow": MessageLookupByLibrary.simpleMessage(
            "Insufficient StarCoins Balance"),
        "intermediate": MessageLookupByLibrary.simpleMessage("Intermediate"),
        "invalidemail":
            MessageLookupByLibrary.simpleMessage("Incorrect Email Format"),
        "investing": MessageLookupByLibrary.simpleMessage("Investing"),
        "istarted": MessageLookupByLibrary.simpleMessage("Started"),
        "itemname": MessageLookupByLibrary.simpleMessage("Item Name"),
        "itemprice": MessageLookupByLibrary.simpleMessage("Price"),
        "itemstatus": MessageLookupByLibrary.simpleMessage("Status"),
        "japanese": MessageLookupByLibrary.simpleMessage("Japanese"),
        "jobs": MessageLookupByLibrary.simpleMessage("Collabs"),
        "joincourse": MessageLookupByLibrary.simpleMessage("Join Course"),
        "joinedcourse": m16,
        "joinedthiscourse": MessageLookupByLibrary.simpleMessage("Joined"),
        "justquit": MessageLookupByLibrary.simpleMessage("Just Quit"),
        "kickstartchattext1":
            MessageLookupByLibrary.simpleMessage("Start Your Conversation"),
        "kickstartchattext2": MessageLookupByLibrary.simpleMessage(
            "With Tutors, Creators, and Friends "),
        "knowmore": MessageLookupByLibrary.simpleMessage("Explore More Info"),
        "korean": MessageLookupByLibrary.simpleMessage("Korean"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "lastmonth": MessageLookupByLibrary.simpleMessage("Last month"),
        "lastsecond": MessageLookupByLibrary.simpleMessage("Just now"),
        "lastupdate": m17,
        "lastweek": MessageLookupByLibrary.simpleMessage("Last week"),
        "lastyear": MessageLookupByLibrary.simpleMessage("Last year"),
        "leavecomment": MessageLookupByLibrary.simpleMessage("Leave Comment"),
        "lesson": MessageLookupByLibrary.simpleMessage("lessons"),
        "lifestyle": MessageLookupByLibrary.simpleMessage("Lifestyle"),
        "like": m18,
        "likeranking": MessageLookupByLibrary.simpleMessage("LIKES"),
        "likesum": MessageLookupByLibrary.simpleMessage("Likes (ACC)"),
        "limitDuration":
            MessageLookupByLibrary.simpleMessage("Limited Access Duration"),
        "loading": MessageLookupByLibrary.simpleMessage("Loading"),
        "loginAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Login STARIFLY"),
        "mainfolder": MessageLookupByLibrary.simpleMessage("Main Folder"),
        "maintutor": MessageLookupByLibrary.simpleMessage("Main Creator"),
        "malformLink":
            MessageLookupByLibrary.simpleMessage("This link cannot be opened."),
        "mandarin": MessageLookupByLibrary.simpleMessage("Mandarin"),
        "marketing": MessageLookupByLibrary.simpleMessage("Marketing"),
        "marks": MessageLookupByLibrary.simpleMessage("Marks"),
        "mc": MessageLookupByLibrary.simpleMessage("Multiple-Choice"),
        "me": MessageLookupByLibrary.simpleMessage("Me"),
        "media": MessageLookupByLibrary.simpleMessage("Media"),
        "mediaonly": MessageLookupByLibrary.simpleMessage("Select Only Media"),
        "mediastoragedesc1": MessageLookupByLibrary.simpleMessage(
            "STARIFLY has provided 500MB free storage space for every creator. You may purchase additional storage space on demand. All purchased storage are life-long."),
        "mediastoragedesc2": MessageLookupByLibrary.simpleMessage(
            "For example, if you chose + 500MB Storage Plan, your new storage size will be 1 GB (included free 500MB)"),
        "mediastoragetext": m19,
        "mediaunit": MessageLookupByLibrary.simpleMessage("Video Unit"),
        "minute": MessageLookupByLibrary.simpleMessage("MM"),
        "minuteago": m20,
        "monthago": m21,
        "moonlit": MessageLookupByLibrary.simpleMessage("Moonlit"),
        "moreexictingcourse":
            MessageLookupByLibrary.simpleMessage("Stay Tuned!"),
        "movedown": MessageLookupByLibrary.simpleMessage("Move Down"),
        "moveup": MessageLookupByLibrary.simpleMessage("Move Up"),
        "moveupordown":
            MessageLookupByLibrary.simpleMessage("Move Blocks Up or Down"),
        "multimedia": MessageLookupByLibrary.simpleMessage("MultiMedia"),
        "music": MessageLookupByLibrary.simpleMessage("Music"),
        "mycoin": MessageLookupByLibrary.simpleMessage("My StarCoins"),
        "mydata": MessageLookupByLibrary.simpleMessage("My Statistics"),
        "mynotification":
            MessageLookupByLibrary.simpleMessage("My Notification"),
        "mypurchase": MessageLookupByLibrary.simpleMessage("My Purchase"),
        "mypurchasedstarcoin":
            MessageLookupByLibrary.simpleMessage("Purchased Starcoin"),
        "mypurchaserecord":
            MessageLookupByLibrary.simpleMessage("My Purchase Record"),
        "myreceivedstarcoin":
            MessageLookupByLibrary.simpleMessage("Received Starcoin"),
        "mysubmission": MessageLookupByLibrary.simpleMessage("My Submission"),
        "nametoolong":
            MessageLookupByLibrary.simpleMessage("User name exceed max length"),
        "nametooshort":
            MessageLookupByLibrary.simpleMessage("User name too short"),
        "neon": MessageLookupByLibrary.simpleMessage("Neon"),
        "nextstep": MessageLookupByLibrary.simpleMessage("Next Step"),
        "nexttimeautologin":
            MessageLookupByLibrary.simpleMessage("Enable Auto Login"),
        "nextunit": MessageLookupByLibrary.simpleMessage("Next"),
        "no": MessageLookupByLibrary.simpleMessage("NO"),
        "noasmcreated": MessageLookupByLibrary.simpleMessage(
            "You have not yet created assignment for this course. All assignments will be displayed here."),
        "nochineseemail": MessageLookupByLibrary.simpleMessage(
            "No Registration For Chinese Email Address"),
        "nocommentcontent":
            MessageLookupByLibrary.simpleMessage("Comment is empty"),
        "nocoursespublished":
            MessageLookupByLibrary.simpleMessage("No Courses Published Yet"),
        "nodata": MessageLookupByLibrary.simpleMessage("No Data"),
        "nodurationlimit": MessageLookupByLibrary.simpleMessage("Unlimited"),
        "nomailbox":
            MessageLookupByLibrary.simpleMessage("No Mail Apps has been found"),
        "noorderyet":
            MessageLookupByLibrary.simpleMessage("No Order Record Yet"),
        "noprofitrecord":
            MessageLookupByLibrary.simpleMessage("No Profit Record Yet"),
        "nopurchaseyet":
            MessageLookupByLibrary.simpleMessage("No Purchase Record Yet"),
        "notblacklistuseryet": MessageLookupByLibrary.simpleMessage(
            "No User Has Been Blacklisted Yet"),
        "notreturnedasm": MessageLookupByLibrary.simpleMessage("Not Graded"),
        "notsecurevideobody": MessageLookupByLibrary.simpleMessage(
            "This video has not been encrypted. Still select?"),
        "notsecurevideosource":
            MessageLookupByLibrary.simpleMessage("Unsecure Video Source"),
        "notsubmittedasm":
            MessageLookupByLibrary.simpleMessage("Not Submitted"),
        "notverified":
            MessageLookupByLibrary.simpleMessage("Your Email Not Verified Yet"),
        "notyetnotified":
            MessageLookupByLibrary.simpleMessage("No Notification Yet"),
        "nounreadnotification":
            MessageLookupByLibrary.simpleMessage("No Unread Notification"),
        "nowithdrawalrecord":
            MessageLookupByLibrary.simpleMessage("No Withdrawal Record Yet"),
        "ntd": MessageLookupByLibrary.simpleMessage("NTD"),
        "offlinepurchase":
            MessageLookupByLibrary.simpleMessage("Offline Purchase"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "ongoingcourse": MessageLookupByLibrary.simpleMessage("Ongoing"),
        "openmailbox": MessageLookupByLibrary.simpleMessage("Open Mailbox"),
        "order": MessageLookupByLibrary.simpleMessage("Order"),
        "orderdate": MessageLookupByLibrary.simpleMessage("Order Date"),
        "orderdetails": MessageLookupByLibrary.simpleMessage("Order Details"),
        "orderinstarcoin": MessageLookupByLibrary.simpleMessage(
            "This order will be paid in Starcoins"),
        "orderquantity": m22,
        "orderrefunded": MessageLookupByLibrary.simpleMessage("Order Refunded"),
        "ordersubtotal": MessageLookupByLibrary.simpleMessage("Subtotal"),
        "ordersuccess": MessageLookupByLibrary.simpleMessage("Order Success"),
        "pay": MessageLookupByLibrary.simpleMessage("Pay"),
        "payeeType": MessageLookupByLibrary.simpleMessage("Payee Type"),
        "payeeaddress": MessageLookupByLibrary.simpleMessage("Payee Address"),
        "payeeaddressbody": MessageLookupByLibrary.simpleMessage(
            "The payee should file a tax declaration with the relevant regional tax authorities on their own"),
        "payeeaddresscity": MessageLookupByLibrary.simpleMessage("City"),
        "payeeaddresscountry": MessageLookupByLibrary.simpleMessage("Country"),
        "payeeaddressdetail":
            MessageLookupByLibrary.simpleMessage("Payee Residential Address"),
        "payeename": MessageLookupByLibrary.simpleMessage("Payee Full Name"),
        "paymentinfo": MessageLookupByLibrary.simpleMessage("Payment Info"),
        "paymentmethod": MessageLookupByLibrary.simpleMessage("Payment Method"),
        "paypalbody": MessageLookupByLibrary.simpleMessage(
            "PayPal is applicable to all countries"),
        "paypaltitle":
            MessageLookupByLibrary.simpleMessage("Withdraw through PayPal"),
        "pbabutton": MessageLookupByLibrary.simpleMessage("B&A"),
        "pcoursebutton": MessageLookupByLibrary.simpleMessage("Course"),
        "pdfonly": MessageLookupByLibrary.simpleMessage("Select Only PDF"),
        "pdocbutton": MessageLookupByLibrary.simpleMessage("Doc"),
        "pets": MessageLookupByLibrary.simpleMessage("Pets"),
        "phoneno": MessageLookupByLibrary.simpleMessage("Phone No."),
        "phoneprefix": MessageLookupByLibrary.simpleMessage("Code"),
        "photography": MessageLookupByLibrary.simpleMessage("Photography"),
        "planadvance": MessageLookupByLibrary.simpleMessage("Advance Plan"),
        "planadvancetext": MessageLookupByLibrary.simpleMessage(
            "Experience the magic of STARIFLY"),
        "planbasic": MessageLookupByLibrary.simpleMessage("Basic Plan"),
        "planbasictext": MessageLookupByLibrary.simpleMessage(
            "Experience the magic of STARIFLY"),
        "planprofessional":
            MessageLookupByLibrary.simpleMessage("Creator Pro Plan"),
        "planprofessionaltext": MessageLookupByLibrary.simpleMessage(
            "Experience the magic of STARIFLY"),
        "pleasecheck": MessageLookupByLibrary.simpleMessage(
            "Please confirm the input information"),
        "pleasechooserelatedsection":
            MessageLookupByLibrary.simpleMessage("Choose Related Section"),
        "pleasechoosesection": MessageLookupByLibrary.simpleMessage(
            "Please Choose Related Section"),
        "pleaseinput":
            MessageLookupByLibrary.simpleMessage("Please Input Content"),
        "pleasejoincoursetounlock": MessageLookupByLibrary.simpleMessage(
            "Join This Course To Unlock Content"),
        "pleaseverifyemail":
            MessageLookupByLibrary.simpleMessage("Please Verify Email"),
        "plinkbutton": MessageLookupByLibrary.simpleMessage("Link"),
        "pmAppAccount": MessageLookupByLibrary.simpleMessage("Account"),
        "pmAppHelp": MessageLookupByLibrary.simpleMessage("Help"),
        "pmAppLanguageBodyText":
            MessageLookupByLibrary.simpleMessage("Please choose your language"),
        "pmAppLanguageTitle":
            MessageLookupByLibrary.simpleMessage("App Language"),
        "pmAppSetting": MessageLookupByLibrary.simpleMessage("App Setting"),
        "pmFinance":
            MessageLookupByLibrary.simpleMessage("Edit Financial Setting"),
        "pmFontFamilyBodyText": MessageLookupByLibrary.simpleMessage(
            "Select your favourite font style"),
        "pmJoinDate": m23,
        "pmLogout": MessageLookupByLibrary.simpleMessage("Logout"),
        "pmPrivacy": MessageLookupByLibrary.simpleMessage("Edit Privacy"),
        "pmProfile": MessageLookupByLibrary.simpleMessage("Edit Your Profile"),
        "pmTerm": MessageLookupByLibrary.simpleMessage("Terms of Use"),
        "pmThemeModeBodyText": MessageLookupByLibrary.simpleMessage(
            "Select your favourite display mode"),
        "pmThemeModeTitle":
            MessageLookupByLibrary.simpleMessage("Display Mode"),
        "pmediabutton": MessageLookupByLibrary.simpleMessage("Media"),
        "pmsecurity": MessageLookupByLibrary.simpleMessage("Account Security"),
        "policy":
            MessageLookupByLibrary.simpleMessage("Terms and Private Policy"),
        "post": MessageLookupByLibrary.simpleMessage("Post"),
        "postadddoc":
            MessageLookupByLibrary.simpleMessage("Additional Document"),
        "preapplyquiz": MessageLookupByLibrary.simpleMessage("Pre-join Quiz"),
        "preapplyquiztext": MessageLookupByLibrary.simpleMessage(
            "Help creators to understand students\' level prior to learning the course"),
        "presalecourse": MessageLookupByLibrary.simpleMessage("Presale"),
        "presalemode":
            MessageLookupByLibrary.simpleMessage("Course Presale Mode"),
        "presalenow": MessageLookupByLibrary.simpleMessage("Early Bird"),
        "presaleprice":
            MessageLookupByLibrary.simpleMessage("Course Presale Price"),
        "previewba":
            MessageLookupByLibrary.simpleMessage("Preview Before & After"),
        "previouscourse": MessageLookupByLibrary.simpleMessage(
            "You have joined the below courses at starifly.hk:"),
        "previousunit": MessageLookupByLibrary.simpleMessage("Previous"),
        "price": MessageLookupByLibrary.simpleMessage("Price"),
        "privateac":
            MessageLookupByLibrary.simpleMessage("Set to Public Account"),
        "product": MessageLookupByLibrary.simpleMessage("Product"),
        "professional": MessageLookupByLibrary.simpleMessage("Professional"),
        "profileMenuTitle": MessageLookupByLibrary.simpleMessage("Setting"),
        "programming": MessageLookupByLibrary.simpleMessage("Programming"),
        "providecoupon": MessageLookupByLibrary.simpleMessage("Enable Coupon"),
        "publish": MessageLookupByLibrary.simpleMessage("Publish"),
        "published": MessageLookupByLibrary.simpleMessage("Published"),
        "publishpost": MessageLookupByLibrary.simpleMessage("Publish Post"),
        "publishtime": MessageLookupByLibrary.simpleMessage("Publications"),
        "purchase": MessageLookupByLibrary.simpleMessage("Purchase"),
        "purchasedate": MessageLookupByLibrary.simpleMessage("Purchase Date"),
        "purchaseinfo": MessageLookupByLibrary.simpleMessage("Purchase Info"),
        "purchaseitem": MessageLookupByLibrary.simpleMessage("Purchase Item"),
        "purchaseneeded":
            MessageLookupByLibrary.simpleMessage("Purchase only as you needed"),
        "purchaseuser": MessageLookupByLibrary.simpleMessage("Purchase User"),
        "quit": MessageLookupByLibrary.simpleMessage("Quit"),
        "quiz": MessageLookupByLibrary.simpleMessage("Quiz"),
        "quizboardcomingsoon": MessageLookupByLibrary.simpleMessage(
            "Your quiz results and ranking will be displayed here"),
        "quizduration": MessageLookupByLibrary.simpleMessage("Quiz Duration"),
        "quote": MessageLookupByLibrary.simpleMessage("Quote"),
        "ranking": MessageLookupByLibrary.simpleMessage("Ranking"),
        "reachedmaximum":
            MessageLookupByLibrary.simpleMessage("Reached Maximum"),
        "readterm": MessageLookupByLibrary.simpleMessage(
            "I have read and agree to the "),
        "receivereport": MessageLookupByLibrary.simpleMessage(
            "✅ Your Report Has Been Filed And Will Be Reviewed Within 24 Hours"),
        "recentorders": MessageLookupByLibrary.simpleMessage("Recent Orders"),
        "recenttransactions":
            MessageLookupByLibrary.simpleMessage("Recent Trasactions"),
        "recommend": m24,
        "recommendforyou":
            MessageLookupByLibrary.simpleMessage("Recommend For You"),
        "recommendranking": MessageLookupByLibrary.simpleMessage("PUSHES"),
        "reconfirm": m25,
        "record": MessageLookupByLibrary.simpleMessage("Record"),
        "redeemcode": m26,
        "refreshed": MessageLookupByLibrary.simpleMessage("Refreshed"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "registerac": MessageLookupByLibrary.simpleMessage("Register Account"),
        "rejectchineseemail": MessageLookupByLibrary.simpleMessage(
            "The following Chinese Email are not open for registration:"),
        "relatedcourse": MessageLookupByLibrary.simpleMessage("Related Course"),
        "remaincoinsafterpurchase": MessageLookupByLibrary.simpleMessage(
            "StarCoins Remains After Purchase"),
        "remainpublishcount": MessageLookupByLibrary.simpleMessage(
            "No. of Course Publications Remaining"),
        "remindlater": MessageLookupByLibrary.simpleMessage("Remind me later"),
        "removed": MessageLookupByLibrary.simpleMessage("Removed"),
        "reordercontent":
            MessageLookupByLibrary.simpleMessage("Reorder Content"),
        "replied": MessageLookupByLibrary.simpleMessage("Replied"),
        "replymsg": MessageLookupByLibrary.simpleMessage("Reply Message"),
        "reportfake":
            MessageLookupByLibrary.simpleMessage("REPORT - Fake Statement"),
        "reporthate":
            MessageLookupByLibrary.simpleMessage("REPORT - Hate Speech"),
        "reportproblem": MessageLookupByLibrary.simpleMessage("Report Problem"),
        "reportsex": MessageLookupByLibrary.simpleMessage(
            "REPORT - Violence or Sexual Assualt"),
        "representsentence":
            MessageLookupByLibrary.simpleMessage("Representing sentence"),
        "representword":
            MessageLookupByLibrary.simpleMessage("Representing words"),
        "required": MessageLookupByLibrary.simpleMessage("required"),
        "requiredcoins":
            MessageLookupByLibrary.simpleMessage("Required StarCoins"),
        "resend": MessageLookupByLibrary.simpleMessage("Resend"),
        "resendmsg": MessageLookupByLibrary.simpleMessage(
            "New Verification Email has been sent. It may be mis-directed to trash mailbox."),
        "resetacpw":
            MessageLookupByLibrary.simpleMessage("Reset Account Password"),
        "resetpwmsg": MessageLookupByLibrary.simpleMessage(
            "Your request has been performed. Please check your mailbox"),
        "resource": MessageLookupByLibrary.simpleMessage("Resource"),
        "returnedasm": MessageLookupByLibrary.simpleMessage("Graded"),
        "returnedasmforreviewbody": MessageLookupByLibrary.simpleMessage(
            "If you want to edit, the current feedback will be modified"),
        "returneddasmforreview": MessageLookupByLibrary.simpleMessage(
            "Your Feedback has been returned"),
        "reviewedbanned":
            MessageLookupByLibrary.simpleMessage("Require Changes"),
        "reviews": MessageLookupByLibrary.simpleMessage("Reviews"),
        "reviewstatus": MessageLookupByLibrary.simpleMessage("Review Status"),
        "roundfont": MessageLookupByLibrary.simpleMessage("Smooth Font"),
        "salenow": MessageLookupByLibrary.simpleMessage("On Sale"),
        "salessetting": MessageLookupByLibrary.simpleMessage("Course Sale"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "saveandquit": MessageLookupByLibrary.simpleMessage("Save & Quit"),
        "saved": MessageLookupByLibrary.simpleMessage("Saved"),
        "savedchanges": MessageLookupByLibrary.simpleMessage(
            "✅ Your Changes Have Been Saved"),
        "savedcoupon": MessageLookupByLibrary.simpleMessage(
            "Coupon has been saved in your album"),
        "savedqr": MessageLookupByLibrary.simpleMessage(
            "QR Code has been saved in your album"),
        "saves": MessageLookupByLibrary.simpleMessage("Saved"),
        "savesu": MessageLookupByLibrary.simpleMessage("Saves"),
        "searchchhatuser":
            MessageLookupByLibrary.simpleMessage("Seach Chat Users"),
        "searchresult": MessageLookupByLibrary.simpleMessage("Search Results"),
        "searchusertochat":
            MessageLookupByLibrary.simpleMessage("Search Users To Chat"),
        "secondago": m27,
        "seconds": MessageLookupByLibrary.simpleMessage("S"),
        "section": MessageLookupByLibrary.simpleMessage("Section"),
        "sectiondescription":
            MessageLookupByLibrary.simpleMessage("Section Description"),
        "sectiontitle": MessageLookupByLibrary.simpleMessage("Section Title"),
        "selectCountry": MessageLookupByLibrary.simpleMessage("Select Country"),
        "selectcategory":
            MessageLookupByLibrary.simpleMessage("Select Category"),
        "selectcreatorplantext":
            MessageLookupByLibrary.simpleMessage("Select your creator plan"),
        "selectduration":
            MessageLookupByLibrary.simpleMessage("Select Duration"),
        "selectlevel": MessageLookupByLibrary.simpleMessage("Select Level"),
        "selectmailbox": MessageLookupByLibrary.simpleMessage("Select Mailbox"),
        "selectmainlangauge":
            MessageLookupByLibrary.simpleMessage("Select Language"),
        "selectmedia": MessageLookupByLibrary.simpleMessage("Select Media"),
        "selectsupportlanguage":
            MessageLookupByLibrary.simpleMessage("Select Language"),
        "selectyourplan":
            MessageLookupByLibrary.simpleMessage("Select Your Storage Plan"),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "sentconfirmemail": MessageLookupByLibrary.simpleMessage(
            "A verification email has been sent to:"),
        "setasmdeadline":
            MessageLookupByLibrary.simpleMessage("Set Assignment Deadline"),
        "setdiscount": MessageLookupByLibrary.simpleMessage("Enalbe Discount"),
        "setpresale":
            MessageLookupByLibrary.simpleMessage("Set as Presale Course"),
        "share": MessageLookupByLibrary.simpleMessage("Share"),
        "sharenow": MessageLookupByLibrary.simpleMessage("Share"),
        "sharepostnow": MessageLookupByLibrary.simpleMessage(
            "Share This Post With The World"),
        "sharewithmorepeople": MessageLookupByLibrary.simpleMessage(
            "Share this content with others"),
        "showall": MessageLookupByLibrary.simpleMessage("Show All"),
        "showallasm":
            MessageLookupByLibrary.simpleMessage("Show All Assignments"),
        "showallasmsubmission":
            MessageLookupByLibrary.simpleMessage("Show All Submission"),
        "showless": MessageLookupByLibrary.simpleMessage("Show less"),
        "showmore": MessageLookupByLibrary.simpleMessage("Show more"),
        "showpublicasm": MessageLookupByLibrary.simpleMessage("Pin This Asm"),
        "skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "skycolor": MessageLookupByLibrary.simpleMessage("Sky"),
        "sociallink": m28,
        "socialmedialink":
            MessageLookupByLibrary.simpleMessage("Social Media Links"),
        "soonstart": MessageLookupByLibrary.simpleMessage("Coming Soon"),
        "special": MessageLookupByLibrary.simpleMessage("For You"),
        "specialcourse": MessageLookupByLibrary.simpleMessage("Top Picks"),
        "starcoin": MessageLookupByLibrary.simpleMessage("StarCoin"),
        "starcoincategory": MessageLookupByLibrary.simpleMessage("Category"),
        "starcoincount": MessageLookupByLibrary.simpleMessage("Starcoin Count"),
        "starcoinrate": MessageLookupByLibrary.simpleMessage("Starcoin Rate"),
        "starcoinrecord":
            MessageLookupByLibrary.simpleMessage("Starcoin Record"),
        "starcoinsonlyinstarifly": MessageLookupByLibrary.simpleMessage(
            "StarCoins can only be consumed inside STARIFLY app"),
        "starcoinspolicy":
            MessageLookupByLibrary.simpleMessage("StarCoins Policy"),
        "startednow": MessageLookupByLibrary.simpleMessage("Public"),
        "startwith": m29,
        "status": MessageLookupByLibrary.simpleMessage("Status"),
        "stillrequirecoins":
            MessageLookupByLibrary.simpleMessage("StarCoins Needed"),
        "studentboard": MessageLookupByLibrary.simpleMessage("Board"),
        "studentcount": MessageLookupByLibrary.simpleMessage("Student Count"),
        "studentsubmission":
            MessageLookupByLibrary.simpleMessage("Student Submissions"),
        "submitacourse":
            MessageLookupByLibrary.simpleMessage("Submit Your First Course"),
        "submitbefore": MessageLookupByLibrary.simpleMessage("Submit before"),
        "submitcourse": MessageLookupByLibrary.simpleMessage("Submit"),
        "submitdate": MessageLookupByLibrary.simpleMessage("Submitted on"),
        "submitfinance":
            MessageLookupByLibrary.simpleMessage("Submit For Approval"),
        "submitted": MessageLookupByLibrary.simpleMessage("Submitted"),
        "submittedasm": MessageLookupByLibrary.simpleMessage("Submitted"),
        "submittedasmforreview": MessageLookupByLibrary.simpleMessage(
            "Your work has been submitted"),
        "submittedasmforreviewbody": MessageLookupByLibrary.simpleMessage(
            "If you want to edit, the current submission will not be reviewed"),
        "submittedfinance": MessageLookupByLibrary.simpleMessage(
            "We have receive your application. Please wait for review."),
        "succesfullyjoinedcourse": MessageLookupByLibrary.simpleMessage(
            "You Have Successfully Joined This Course"),
        "success": MessageLookupByLibrary.simpleMessage("Success"),
        "successblockcomment":
            MessageLookupByLibrary.simpleMessage("✅ Hiddened This Comment"),
        "successblockuser": MessageLookupByLibrary.simpleMessage(
            "✅ Hiddened All Contents From This User"),
        "suggestLanguageBody": MessageLookupByLibrary.simpleMessage(
            "What is the next language to be supported?"),
        "suggestLanguageHint":
            MessageLookupByLibrary.simpleMessage("Type your suggestion..."),
        "suggestLanguageText":
            MessageLookupByLibrary.simpleMessage("Suggest a language"),
        "supplementfile":
            MessageLookupByLibrary.simpleMessage("Supplement Files"),
        "supplementresource": MessageLookupByLibrary.simpleMessage("Resources"),
        "supplementtutor": MessageLookupByLibrary.simpleMessage("Assistant"),
        "supplementtutortext": MessageLookupByLibrary.simpleMessage(
            "Send Course Invitation to Assistant in ChatRoom"),
        "suretodeletecourse": MessageLookupByLibrary.simpleMessage(
            "Are You Sure To Remove This Course"),
        "suretopay":
            MessageLookupByLibrary.simpleMessage("Are You Sure To Pay"),
        "suretoquitedit": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to quit?"),
        "syncac": MessageLookupByLibrary.simpleMessage("Sync Account"),
        "tags": MessageLookupByLibrary.simpleMessage("Tags"),
        "takefollowingmeasures": MessageLookupByLibrary.simpleMessage(
            "Your can also take following measures:"),
        "targetstudentcount":
            MessageLookupByLibrary.simpleMessage("Expected Student Count"),
        "teachingunit": MessageLookupByLibrary.simpleMessage("Units"),
        "temptnodatatoshow":
            MessageLookupByLibrary.simpleMessage("No Data Available To Show"),
        "text": MessageLookupByLibrary.simpleMessage("Text"),
        "textcontentrequired":
            MessageLookupByLibrary.simpleMessage("Text Content Required"),
        "textunit": MessageLookupByLibrary.simpleMessage("Text"),
        "thiscoursepublished":
            MessageLookupByLibrary.simpleMessage("This course is published"),
        "thiscoursepublishedbody": MessageLookupByLibrary.simpleMessage(
            "If you want to edit the course, please change to \'Draft\' mode. All changes must be submitted for approval again."),
        "toomanyloginbody1": MessageLookupByLibrary.simpleMessage(
            "Your STARIFLY account is in use on too many devices."),
        "toomanyloginbody2": MessageLookupByLibrary.simpleMessage(
            "Please logout from other devices to continue."),
        "toomanylogintitle":
            MessageLookupByLibrary.simpleMessage("Too Many Logins"),
        "topup": MessageLookupByLibrary.simpleMessage("Top up"),
        "topuppublishcount": MessageLookupByLibrary.simpleMessage("Top-up"),
        "totalcoursetime":
            MessageLookupByLibrary.simpleMessage("Course Duration"),
        "totalorders": MessageLookupByLibrary.simpleMessage("Total Orders"),
        "transactioninprogress":
            MessageLookupByLibrary.simpleMessage("Transaction In Progress"),
        "transferreddate":
            MessageLookupByLibrary.simpleMessage("Transfered Date"),
        "tutorcourse": m30,
        "tutorfeedback": MessageLookupByLibrary.simpleMessage("Tutor Feedback"),
        "tutorial": MessageLookupByLibrary.simpleMessage("Courses"),
        "unabletologin": MessageLookupByLibrary.simpleMessage(
            "Unable to Login, Try Again Later"),
        "unabletoregister": MessageLookupByLibrary.simpleMessage(
            "Unable To Register, Try Again Later"),
        "unabletosendresetpw": MessageLookupByLibrary.simpleMessage(
            "Unable to Send Reset Password Email, Try Again Later"),
        "unblockuser": MessageLookupByLibrary.simpleMessage("Unblock"),
        "unconfirmed": MessageLookupByLibrary.simpleMessage("Pending..."),
        "undo": MessageLookupByLibrary.simpleMessage("Undo"),
        "unit": m31,
        "unitaudio":
            MessageLookupByLibrary.simpleMessage("Unit Teaching Audio"),
        "unitcontent": MessageLookupByLibrary.simpleMessage("Unit Content"),
        "unitdescription":
            MessageLookupByLibrary.simpleMessage("Unit Description"),
        "unitduration": MessageLookupByLibrary.simpleMessage("Unit Duration"),
        "unithvquiz": MessageLookupByLibrary.simpleMessage("Include Quiz"),
        "unitisfree": MessageLookupByLibrary.simpleMessage("Free Preview"),
        "unittitle": MessageLookupByLibrary.simpleMessage("Unit Title"),
        "unitvid": MessageLookupByLibrary.simpleMessage("Unit Teaching Video"),
        "unreadnotification":
            MessageLookupByLibrary.simpleMessage("Unread Notification"),
        "unsaved": MessageLookupByLibrary.simpleMessage("Unsaved"),
        "unsendmsg": MessageLookupByLibrary.simpleMessage("Unsend Message"),
        "unsendmsgbody": MessageLookupByLibrary.simpleMessage(
            "Unsending will remove the message. People may have seen it already."),
        "unsent": MessageLookupByLibrary.simpleMessage("Unsent Message"),
        "update": MessageLookupByLibrary.simpleMessage("UPDATE"),
        "updateappbody": MessageLookupByLibrary.simpleMessage(
            "Please update to the newest version for a better user experience"),
        "updateapptitle":
            MessageLookupByLibrary.simpleMessage("UPDATE STARIFLY APP"),
        "updateme": MessageLookupByLibrary.simpleMessage(
            "Send me news and promotions from STARIFLY by email."),
        "upgradesizetext":
            MessageLookupByLibrary.simpleMessage("Upgrade Storage"),
        "upgradestorage":
            MessageLookupByLibrary.simpleMessage("Upgrade Storage Size"),
        "usd": MessageLookupByLibrary.simpleMessage("USD"),
        "usecoupon":
            MessageLookupByLibrary.simpleMessage("Apply Course Coupon"),
        "useothernames":
            MessageLookupByLibrary.simpleMessage("Please Use Other Names"),
        "user": MessageLookupByLibrary.simpleMessage("User"),
        "userallpost": m32,
        "userdisabled": MessageLookupByLibrary.simpleMessage(
            "This Account Temporarily Disabled"),
        "usernotfound":
            MessageLookupByLibrary.simpleMessage("User Not Registered Yet"),
        "verifiedemail": MessageLookupByLibrary.simpleMessage("Email Verified"),
        "verifyac": MessageLookupByLibrary.simpleMessage("Verify Account"),
        "vidcontainssubtitle":
            MessageLookupByLibrary.simpleMessage("video contains subtitle"),
        "video": MessageLookupByLibrary.simpleMessage("Video"),
        "videolink": MessageLookupByLibrary.simpleMessage("Video Link"),
        "videolinkdoby1": MessageLookupByLibrary.simpleMessage(
            "Support .mp4/.m3u8 Videos Only"),
        "videolinkdoby2": MessageLookupByLibrary.simpleMessage(
            "Youtube videos are not supported"),
        "videoonly": MessageLookupByLibrary.simpleMessage("Select Only Video"),
        "videounit": MessageLookupByLibrary.simpleMessage("Video"),
        "vidprotected": MessageLookupByLibrary.simpleMessage("protected video"),
        "viewall": MessageLookupByLibrary.simpleMessage("View All"),
        "viewallpost": MessageLookupByLibrary.simpleMessage("All Posts"),
        "viewdraftcourse":
            MessageLookupByLibrary.simpleMessage("View Draft Courses"),
        "viewfans": m33,
        "viewfollowing": m34,
        "viewuser": MessageLookupByLibrary.simpleMessage("View User"),
        "visitormode": MessageLookupByLibrary.simpleMessage("I\'m Visitor"),
        "wallet": MessageLookupByLibrary.simpleMessage("Wallet"),
        "wannashareurknowledge":
            MessageLookupByLibrary.simpleMessage("Wanna Share Your Knowledge?"),
        "webdatabody1": MessageLookupByLibrary.simpleMessage(
            "To provide a better learning experience"),
        "webdatabody2": MessageLookupByLibrary.simpleMessage(
            "All starifly.hk users are required to sign-up in STARIFLY app."),
        "webdatatitle": MessageLookupByLibrary.simpleMessage("Need to Sign Up"),
        "weekago": m35,
        "whatsappus": MessageLookupByLibrary.simpleMessage("WhatsApp Us"),
        "wirebankac":
            MessageLookupByLibrary.simpleMessage("Receiving Bank Account No."),
        "wirebankcountry":
            MessageLookupByLibrary.simpleMessage("Receiving Bank Country"),
        "wirebankname":
            MessageLookupByLibrary.simpleMessage("Receiving Bank Name"),
        "wirebody": MessageLookupByLibrary.simpleMessage(
            "Wire Transfer is applicable to all countries"),
        "wirebodyfee": MessageLookupByLibrary.simpleMessage(
            "The transfer fees are expected to be covered by the beneficiary of the funds"),
        "wiretransfer": MessageLookupByLibrary.simpleMessage("Wire Transfer"),
        "wish": MessageLookupByLibrary.simpleMessage("Trevi Fountain"),
        "withdrawal": MessageLookupByLibrary.simpleMessage("Withdraw"),
        "withdrawaldate":
            MessageLookupByLibrary.simpleMessage("Withdrawal Date"),
        "withdrawaldenied":
            MessageLookupByLibrary.simpleMessage("Trans. Denied"),
        "withdrawalmethod":
            MessageLookupByLibrary.simpleMessage("Withdrawal Method"),
        "withdrawalpending":
            MessageLookupByLibrary.simpleMessage("Trans. Pending"),
        "withdrawalrecord":
            MessageLookupByLibrary.simpleMessage("Withdrawal Record"),
        "withdrawalsuccess":
            MessageLookupByLibrary.simpleMessage("Trans. Success"),
        "withdrawalto": MessageLookupByLibrary.simpleMessage("Withdraw To"),
        "workplace": MessageLookupByLibrary.simpleMessage("Workplace"),
        "wrongpassword": MessageLookupByLibrary.simpleMessage("Wrong Password"),
        "yearago": m36,
        "yes": MessageLookupByLibrary.simpleMessage("YES"),
        "yesterday": MessageLookupByLibrary.simpleMessage("Yesterday")
      };
}
