/********* logger.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface logger : CDVPlugin {
  // Member variables go here.
}


- (void)add:(CDVInvokedUrlCommand*)command;

@end

@implementation logger

- (void)add:(CDVInvokedUrlCommand*)command {

 CDVPluginResult *pluginResult = nil;
  NSNumber* param1 = [[command.arguments objectAtIndex:0] valueForKey:@"param1"];
  NSNumber* param2 = [[command.arguments objectAtIndex:0] valueForKey:@"param2"];

  if (param1 >=0 && param2 >= 0)
  {

   int total12 = [param1 intValue] + [param2 intValue];
   NSString* total = [NSString stringWithFormat:@"%d",total12];
   pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:total];

  } else {

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
  }
   [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}



@end
