Android����֤���AwesomeValidation��������AwesomeValidation.jar���Լ���������guava-18.0.jar



�����ʹ��saripaar��ʱ�򣬵���ʾ������Ϣʱ������ֻ�а�ɫ�Ŀ�û��������ʾ���о��ܾã�ԭ����������ɫ�ʹ�����ʾ��ı�����ɫ��һ���ģ����Ը���һ�ָо���������û�����óɹ�������������Ǹ�һ��������ɫ��Ok�ˡ�
/**
  * ����sdk�汾��ͬ���ô�����ʾ������ɫ
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