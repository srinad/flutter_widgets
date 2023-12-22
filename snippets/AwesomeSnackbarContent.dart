
final snackBar = SnackBar(
  elevation: 0,
  behavior: SnackBarBehavior.floating,
  backgroundColor: Colors.transparent,
  content: AwesomeSnackbarContent(
    title: 'On Snap!',
    message: 'This is an example error message that will be shown in the body of snackbar!',
    contentType: ContentType.failure,
  ),
);

ScaffoldMessenger.of(context)
  ..hideCurrentSnackBar()
  ..showSnackBar(snackBar);