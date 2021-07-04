import 'dart:math';

List<String> stariflyProfileImg = [
  'https://firebasestorage.googleapis.com/v0/b/stariflyhk.appspot.com/o/originalMaterial%2Favatar_bear.jpg?alt=media&token=d1d2c407-156d-4b81-9073-f16b5b520b4d',
  'https://firebasestorage.googleapis.com/v0/b/stariflyhk.appspot.com/o/originalMaterial%2Favatar_cat.jpg?alt=media&token=24091e68-696f-488f-930a-cfcfdc7e2aad',
  'https://firebasestorage.googleapis.com/v0/b/stariflyhk.appspot.com/o/originalMaterial%2Favatar_duck.jpg?alt=media&token=b458fe1c-c95a-4fd3-a28a-b7bf16cb2e21',
  'https://firebasestorage.googleapis.com/v0/b/stariflyhk.appspot.com/o/originalMaterial%2Favatar_greycat.jpg?alt=media&token=8b50079e-b311-4240-badd-117739b71293',
  'https://firebasestorage.googleapis.com/v0/b/stariflyhk.appspot.com/o/originalMaterial%2Favatar_lion.jpg?alt=media&token=f1e03d1e-1149-4a97-b865-6c835791b827',
  'https://firebasestorage.googleapis.com/v0/b/stariflyhk.appspot.com/o/originalMaterial%2Favatar_penguin.jpg?alt=media&token=1d6959a8-376d-4240-b046-04107b9f6541',
];

String getRandomProfileImg() {
  String randomProfileImgURL;
  Random random = Random();
  int randomNumber = random.nextInt(stariflyProfileImg.length);
  randomProfileImgURL = stariflyProfileImg[randomNumber];
  return randomProfileImgURL;
}
