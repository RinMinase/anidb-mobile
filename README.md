<h1 align="center"> Rin's AniDB Mobile (React Native) </h1>

## Introduction
_Add info here_

> Sadly, due to how the React Native CLI works, I could not exclude `android` and `ios` folders from the repository, as regenerating those folders from the commandline, seems to be an issue for now, and there seems to be no _proper_ solution for it. [[Source 1]](https://github.com/facebook/react-native/issues/27301), [[Source 2]](https://github.com/react-native-community/cli/issues/808).

## Getting Started

### Pre-requisites
- [Java JDK 8](https://www.oracle.com/java/technologies/javase-jdk8-downloads.html)
- [Android Studio](https://developer.android.com/studio)
- Android Device
- [Yarn](https://classic.yarnpkg.com/en/docs/install)

1. [Download and install](https://www.oracle.com/java/technologies/javase-jdk8-downloads.html) Java JDK 8 on your system.

2. Add Java's `/bin` folder to your `PATH` environmental variable.
    - for example: `C:\Program Files\Java\jdk1.8.0_231\bin`

3. [Download and install](https://developer.android.com/studio) Android Studio, and make sure the following are checked:
    - Android SDK
    - Android SDK Platform
    - Android Virtual Device

4. Open Android studio, and to the bottom left of the welcome page `Configure` then `SDK Manager`

5. Check `Android 9.0 (Pie)` and clck OK.
    - This is because React Native requires Android 9.0 (Pie) to be installed instead of the latest

6. Add `ANDROID_HOME` in your environmental variables with the `Sdk` folder.
    - for example: `C:\Users\<user>\AppData\Local\Android\Sdk`

7. Add the `Sdk/platform-tools` folder to your `PATH` environmental variable.
    - for example: `C:\Users\<user>\AppData\Local\Android\Sdk\platform-tools`

8. [Download and install](https://classic.yarnpkg.com/en/docs/install) Yarn.

> For a _Slimmer_ environment setup, please follow the [steps below](#slimmer-environment-setup-without-android-studio) instead. This opts out of using Android Studio if you do not plan on using it as your IDE to reduce the bloat on your project setup, but has more complexity on the setup process.

### Running the project

1. [Download](https://nodejs.org/en/) the latest Node version. This is marked as `<version number> Current`. Install it on your machine.

2. Clone the project and install the necessary dependencies

    ```
    git clone https://github.com/RinMinase/anidb-mobile.git
    cd anidb-mobile
    yarn install
    ```

3. Run the `Android Emulator` from `Android Studio` or `iOS Simulator` from `Xcode`. Otherwise, connect your Android or iOS device and make sure `USB Debugging` is enabled.

4. Install the dependencies then run the project

    ```
    yarn android    // For Android
    yarn ios        // For iOS
    ```

### Re-running the project

1. Run the `Android Emulator` from `Android Studio` or `iOS Simulator` from `Xcode`. Otherwise, connect your Android or iOS device and make sure `USB Debugging` is enabled.

2. Install the dependencies then run the project

    ```
    yarn android    // For Android
    yarn ios        // For iOS
    ```

### Slimmer environment setup without Android Studio
This setup opts out of using Android Studio if you do not plan on using it as your IDE, to reduce the bloat of your project setup.

- [Java JDK 8](https://www.oracle.com/java/technologies/javase-jdk8-downloads.html)
- Android SDK Manager
    - Anroid SDK Tools (v26.1.1)
    - Android Virtual Device / Emulator (v29.2.1)
    - Android Platform Tools (v29.0.5)
    - (If using an Intel Platform) Emulator Accelerator HAXM (v7.5.4)
    - Android Pie (9.0) SDK Platform

> Versions above are listed as tested to be working. You can try to use other versions but I cannot guarantee if it would be fully working.

1. [Download and install](https://www.oracle.com/java/technologies/javase-jdk8-downloads.html) Java JDK 8 on your system.

2. Add Java's `/bin` folder to your `PATH` environmental variable.
    - for example: `C:\Program Files\Java\jdk1.8.0_231\bin`

3. [Download and install](https://developer.android.com/studio/#command-tools) Android's command-line tools and unpack it in a location of your preference.
    - for example: `C:\Users\<user>\AppData\Local\Android`, where the `Android` folder should contain the `tools` folder extracted from the archive downloaded above

4. Open a terminal window **inside** `tools` folder from the one you extracted earlier. Then download the essential packages using `sdkmanager`
    - `sdkmanager platform-tools emulator`

5. Set your environmental variables
    - ANDROID_HOME = for example: `C:\Users\<user>\AppData\Local\Android\Sdk`
    - (Append to) PATH
        - `Android\emulator`
        - `Android\platform-tools`
        - `Android\tools\bin`

6. Download the platform specific packages
    - `sdkmanager "platforms;android-29 build-tools;20.0.3 system-images;android-29;default;x86"`

7. Create an Android Virtual Device (AVD), and assign any name to it (in the command below it's called `android29`)
    - `avdmanager create avd --name android29 --package "system-images;android-29;default;x86"`

    > You will be asked if you want to alter some configurations. You can also modify these configurations later in the file config.ini, located in the avd folder

8. (Optional) If you are running an Intel Platform, you could also install the Emulator Accelerator (HAXM)
    - `sdkmanager "extras;intel;Hardware_Accelerated_Execution_Manager"`

9. Run the Android Emulator from the name you assigned to it from the command above
    - `emulator -avd android29` or just `emulator @android29`

    > The emulator may take some time to initialize for the first time. But if you have done correctly, the Android Emulator window should show.

## Built with
* <img width=20 height=20 src="https://facebook.github.io/react-native/img/favicon.ico"> [React Native](https://facebook.github.io/react-native/) - Mobile Framework
* <img width=20 height=20 src="https://www.android.com/static/images/fav/favicon.ico"> [Android](https://www.android.com/) - Platform
* <img width=20 height=20 src="https://babeljs.io/img/favicon.png"> [Babel ES10 / ES2019 Preset](https://babeljs.io/) - Syntax and compiler
* <img width=20 height=20 src="https://cssinjs.org/images/favicon.ico"> [JSS (CSS in JS)](https://cssinjs.org/) - CSS pre-processor
* <img width=20 height=20 src="https://gradle.org/icon/favicon-32x32.png"> [Gradle](https://gradle.org/) - Android bundler
* <img width=20 height=20 src="https://dmmj3mmt94rvw.cloudfront.net/favicon-undefined.ico"> [Circle CI](https://circleci.com/) - Continuous Integration (CI) service
* <img width=20 height=20 src="https://yarnpkg.com/icons/icon-48x48.png"> [Yarn](https://yarnpkg.com/) - Package Manager
