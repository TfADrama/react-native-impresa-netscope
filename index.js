import { NativeModules } from "react-native";

function Netscope() {
  const { setupTracker, callAnalytics } = NativeModules.RNImpresaNetscope;

  return {
    setupTracker: (appInfo, version, hitCollectorHost, scriptIdentifier) => {
      setupTracker(appInfo, version, hitCollectorHost, scriptIdentifier);
    },
    sendAnalytics: message => {
      callAnalytics(message);
    }
  };
}

export default Netscope();
