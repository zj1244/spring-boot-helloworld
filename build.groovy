/**
 * 判断是 gradlew或者maven
 */
int isGradlew = sh(returnStatus: true, script: "test -e ./gradlew")
if (isGradlew == 0) {
    sh "./gradlew build -x test --info --stacktrace"
} else {
    sh "mvn clean package -U -Dmaven.test.skip=true"
}