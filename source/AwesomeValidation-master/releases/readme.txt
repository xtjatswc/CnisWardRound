Android表单验证框架AwesomeValidation，包括：AwesomeValidation.jar，以及其依赖的guava-18.0.jar



最近在使用saripaar的时候，当提示错误信息时，发现只有白色的框，没有文字提示，研究很久，原来是字体颜色和错误提示框的背景颜色是一样的，所以给人一种感觉就是字体没有设置成功，解决方法就是改一下字体颜色就Ok了。
/**
  * 根据sdk版本不同设置错误提示字体颜色
  * 
  * @param error
  * @return
  */
 private CharSequence setErrorTextColor(String error) {
  int version = Build.VERSION.SDK_INT;
  if (version >= 14) {
   CharSequence text = Html
     .fromHtml("<font color=#000000>"+error+"</font>");
   return text;
  } else {
   return error;
  }
 }