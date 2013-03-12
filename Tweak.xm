#include "libopener/HBLibOpener.h"

%ctor
{
    %init
    if ([[[NSBundle mainBundle] bundleIdentifier] isEqualToString: @"com.apple.springboard"]) {
        [[HBLibOpener sharedInstance] registerHandlerWithName:@"OpenInLatestChatty" block:^(NSURL *url) {
            if (![[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"latestchatty://"]]) {
                //NSLog(@"OILC: lc.app not installed");
                return (id)nil;
            } else if ([url.host isEqualToString:@"www.shacknews.com"] && [url.path isEqualToString:@"/chatty"] && [url.scheme isEqualToString:@"http"]) {
                //NSLog(@"OILC: %@", [NSURL URLWithString:[@"latestchatty://" stringByAppendingString:[url.absoluteString substringFromIndex:7]]]);
                return [NSURL URLWithString:[@"latestchatty://" stringByAppendingString:[url.absoluteString substringFromIndex:7]]];
            }

            return (id)nil;
        }];
    }
}
