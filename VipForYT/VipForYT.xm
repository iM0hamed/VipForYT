#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


%config(generator=internal)

//رساله الترحيب للمستخدم

%hook YTAppDelegate
- (void)appDidBecomeActive:(id)arg1{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (![defaults boolForKey:@"notFirstRun"]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"VipForYT By @ipaApps" message:@"This Tweak for Play YouTube Videos in Background And Remove Ads From The Videos"
                                                       delegate:nil
                                              cancelButtonTitle:@"Thanks!"
                                              otherButtonTitles:nil];
        [alert show];
        [defaults setBool:YES forKey:@"notFirstRun"];
    }
}
%end


//تشغيل الفيديوهات في الخلفيه

%hook YTSingleVideoController
-(bool) isCurrentlyBackgroundable {
return TRUE;
}
%end


//حذف اعلانات الفيديوهات

%hook YTVASTAd
-(bool)isForecastingAd {
return NO;
}
%end

%hook YTVASTAd
-(bool)isSkippable {
return YES;
}
%end

%hook YTIPlayerResponse
-(bool)isMonetized {
    return NO;
}
%end
