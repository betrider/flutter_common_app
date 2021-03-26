#debug
#keytool -exportcert -alias androiddebugkey -keystore ~/.android/debug.keystore -storepass android -keypass android | openssl sha1 -binary | openssl base64
#release
#keytool -exportcert -alias betrider -keystore betriderkey.jks | openssl sha1 -binary | openssl base64
