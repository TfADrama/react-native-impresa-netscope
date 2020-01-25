#import "RNImpresaNetscope.h"
#import <GemiusSDK/GemiusSDK.h>
#import <React/RCTLog.h>

@implementation RNImpresaNetscope

RCT_EXPORT_MODULE()

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(setupTracker:(NSString *)appInfo version:(NSString *)version hitcollectorHost:(NSString *)hitcollectorHost scriptIdentifier:(NSString *)scriptIdentifier)
{
  [[GEMConfig sharedInstance] setAppInfo:appInfo version:version];
  [[GEMConfig sharedInstance] setLoggingEnabled:YES];
  [[GEMAudienceConfig sharedInstance] setHitcollectorHost:hitcollectorHost];
  [[GEMAudienceConfig sharedInstance] setScriptIdentifier:scriptIdentifier];
  RCTLogInfo(@"Netscope setup complete!");
  
      
}

RCT_EXPORT_METHOD(callAnalytics:(NSString *)value)
{
  GEMAudienceEvent *event = [GEMAudienceEvent new];
  [event setEventType:GEM_EVENT_FULL_PAGEVIEW];
  [event addExtraParameter:@"gA" value:value];
  [event sendEvent];
  RCTLogInfo(@"Netscope analytics: Sending %@", value);
}
@end
