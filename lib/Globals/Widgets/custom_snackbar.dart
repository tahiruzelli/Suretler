import 'package:get/get.dart';
import '../Constans/colors.dart';

errorSnackBar(String content, {String title = 'Uyarı'}) {
  return Get.snackbar(
    title,
    content,
    backgroundColor: colorDanger.withOpacity(0.7),
    colorText: colorWhite,
  );
}

warningSnackBar(String content, {String title = 'Uyarı'}) {
  return Get.snackbar(
    title,
    content,
    backgroundColor: colorWarning.withOpacity(0.7),
    colorText: colorWhite,
  );
}

infoSnackBar(String content, {String title = 'Uyarı'}) {
  return Get.snackbar(
    title,
    content,
    backgroundColor: colorInfo.withOpacity(0.7),
    colorText: colorWhite,
  );
}

successSnackBar(String content, {String title = 'Uyarı'}) {
  return Get.snackbar(
    title,
    content,
    backgroundColor: colorSuccess.withOpacity(0.7),
    colorText: colorWhite,
  );
}