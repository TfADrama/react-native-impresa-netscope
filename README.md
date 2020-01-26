# react-native-impresa-netscope

## Getting started

`$ npm install react-native-impresa-netscope@git+https://github.com/TfADrama/react-native-impresa-netscope.git --save`

`$ react-native link react-native-impresa-netscope`

#### iOS
`cd ios/`

`pod install`


### Manual installation (Not tested)


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-impresa-netscope` and add `RNImpresaNetscope.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNImpresaNetscope.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.reactlibrary.RNImpresaNetscopePackage;` to the imports at the top of the file
  - Add `new RNImpresaNetscopePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-impresa-netscope'
  	project(':react-native-impresa-netscope').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-impresa-netscope/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-impresa-netscope')
  	```


## Usage
```javascript
import RNImpresaNetscope from 'react-native-impresa-netscope';

// TODO: What to do with the module?
RNImpresaNetscope;
```
  
