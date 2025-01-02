@rem
@rem حقوق النشر 2015 المؤلف الأصلي أو المؤلفون.
@rem
@rem مرخصة تحت رخصة Apache، الإصدار 2.0 ("الرخصة");
@rem لا يمكنك استخدام هذا الملف إلا وفقًا للرخصة.
@rem يمكنك الحصول على نسخة من الرخصة على العنوان
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem ما لم يكن ذلك مطلوبًا بموجب القانون أو متفقًا عليه كتابيًا، يتم توزيع البرمجيات
@rem الموزعة بموجب هذه الرخصة على أساس "كما هي"،
@rem دون أي ضمانات أو شروط من أي نوع، سواء كانت صريحة أو ضمنية.
@rem راجع الرخصة للحصول على التفاصيل الخاصة باللغة التي تحكم الأذونات
@rem والقيود بموجب الرخصة.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  نص بدء Gradle لنظام Windows
@rem
@rem ##########################################################################

@rem تعيين النطاق المحلي للمتغيرات مع shell Windows NT
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem هذا غير مستخدم عادةً
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%

@rem حل أي "." و ".." في APP_HOME لجعله أقصر.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem إضافة وسيطات JVM الافتراضية هنا. يمكنك أيضًا استخدام JAVA_OPTS وGRADLE_OPTS لتمرير وسيطات JVM إلى هذا النص.
set DEFAULT_JVM_OPTS="-Xmx64m" "-Xms64m"

@rem البحث عن java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem إعداد سطر الأوامر

set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar


@rem تنفيذ Gradle
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS% "-Dorg.gradle.appname=%APP_BASE_NAME%" -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*

:end
@rem إنهاء النطاق المحلي للمتغيرات مع shell Windows NT
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem تعيين متغير GRADLE_EXIT_CONSOLE إذا كنت بحاجة إلى رمز إرجاع _النص_ بدلاً من
rem رمز إرجاع _cmd.exe /c_!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%GRADLE_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega