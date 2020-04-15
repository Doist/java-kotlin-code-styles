# Code Styles

IntelliJ IDEA code style settings for Doist's Java, Kotlin and Android projects.

## Installation

- Run the `install.sh` or `install.bat` script;
- Restart IntelliJ if it's running;
- Open IntelliJ Project Settings -> Code Styles, change the code style for the project to the one you want.

## Java

The code style definition follows [Google's general guidelines](https://google.github.io/styleguide/javaguide.html) and [Android's definitions](http://source.android.com/source/code-style.html), which override some of the rules.

There are, however, a few rules which we ourselves override and some that are not mentioned above:

- The line length is 120 characters long;
- No copyright notice is included at the top of files;
- Import order and paragraphs are not managed manually by the developer, but instead automatically by IntelliJ / Android Studio;
- The single parameterless annotation exception is never used, as annotations are always placed in their own line, except annotations on method parameters which can go on the same line;
- Exceptions widely known to be safe to ignore can be ignored (common in Android and some libraries). It's better not to show a tooltip at a given moment than to crash the app for the user;
- Non-public static member variables are prefixed with `s`, all others follow the conventions mentioned in the documents;
- All comments always start capitalized and end with a period. They're written English, so they follow the written English rules;
- Getters and setters are intercalated. `setEmail` follows `getEmail`.
- Parcelable code goes at the end of the class in the following order: constructor, `writeToParcel`, `CREATOR` and `describeContents`. Follows the usual reader / writer flow and orders methods by usefulness and likelihood of change. There's a [useful IntelliJ plug-in](https://github.com/goncalossilva/android-parcelable-intellij-plugin/raw/master/android-parcelable-intellij-plugin.jar) for this.

## Kotlin

The code style definition follows the official [Kotlin style guide](https://kotlinlang.org/docs/reference/coding-conventions.html), with a few changes and additional rules not mentioned above:
- The line length is 120 characters long;
- No copyright notice is included at the top of files;
- Import order and paragraphs are not managed manually by the developer, but instead automatically by IntelliJ / Android Studio;
- Exceptions widely known to be safe to ignore can be ignored (common in Android and some libraries). It's better not to show a tooltip at a given moment than to crash the app for the user;
- All comments always start capitalized and end with a period. They're written English, so they follow the written English rules;
- Parcelable code goes at the end of the class in the following order: constructor, `writeToParcel`, `CREATOR` and `describeContents`. Follows the usual reader / writer flow and orders methods by usefulness and likelihood of change. Better yet, use [`@Parcelize`](https://github.com/Kotlin/KEEP/blob/master/proposals/extensions/android-parcelable.md).
 
## Save actions in Android Studio

There is a handy plugin which will auto format code and organize imports everytime you save a file:
https://plugins.jetbrains.com/plugin/7642

To install it
* Download the jar file from the plugin page or use this link https://plugins.jetbrains.com/plugin/download?pr=&updateId=19495
* Go to Android Studio -> Preferences -> Plugins -> Install plugin from disk... and choose downloaded jar
* Restart Android Studio and enjoy painless autoformating and autoimports :)
