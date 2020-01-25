import { NativeModules } from 'react-native';

function Netscope() {
  const { setupTracker, callAnalytics } = NativeModules.RNImpresaNetscope;

  const setup = () => {
    setupTracker(
      'aaaa',
      '12.0',
      'https://gapt.hit.gemius.pl',
      'aaaaa'
    );
  };

  const sendAnalytics = message => {
    callAnalytics(message);
  };

  return {
    setup,
    sendAnalytics,
  };
}

export default Netscope();
