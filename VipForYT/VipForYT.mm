#line 1 "/Users/mohamedtanbakji/Desktop/Xcode-Projects/VipForYT/VipForYT/VipForYT.xm"
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>







#include <objc/message.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

__attribute__((unused)) static void _logos_register_hook$(Class _class, SEL _cmd, IMP _new, IMP *_old) {
unsigned int _count, _i;
Class _searchedClass = _class;
Method *_methods;
while (_searchedClass) {
_methods = class_copyMethodList(_searchedClass, &_count);
for (_i = 0; _i < _count; _i++) {
if (method_getName(_methods[_i]) == _cmd) {
if (_class == _searchedClass) {
*_old = method_getImplementation(_methods[_i]);
*_old = method_setImplementation(_methods[_i], _new);
} else {
class_addMethod(_class, _cmd, _new, method_getTypeEncoding(_methods[_i]));
}
free(_methods);
return;
}
}
free(_methods);
_searchedClass = class_getSuperclass(_searchedClass);
}
}
@class YTAppDelegate; @class YTSingleVideoController; @class YTVASTAd; @class YTIPlayerResponse; 
static Class _logos_superclass$_ungrouped$YTAppDelegate; static void (*_logos_orig$_ungrouped$YTAppDelegate$appDidBecomeActive$)(_LOGOS_SELF_TYPE_NORMAL YTAppDelegate* _LOGOS_SELF_CONST, SEL, id);static Class _logos_superclass$_ungrouped$YTSingleVideoController; static bool (*_logos_orig$_ungrouped$YTSingleVideoController$isCurrentlyBackgroundable)(_LOGOS_SELF_TYPE_NORMAL YTSingleVideoController* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$YTVASTAd; static bool (*_logos_orig$_ungrouped$YTVASTAd$isForecastingAd)(_LOGOS_SELF_TYPE_NORMAL YTVASTAd* _LOGOS_SELF_CONST, SEL);static bool (*_logos_orig$_ungrouped$YTVASTAd$isSkippable)(_LOGOS_SELF_TYPE_NORMAL YTVASTAd* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$YTIPlayerResponse; static bool (*_logos_orig$_ungrouped$YTIPlayerResponse$isMonetized)(_LOGOS_SELF_TYPE_NORMAL YTIPlayerResponse* _LOGOS_SELF_CONST, SEL);

#line 9 "/Users/mohamedtanbakji/Desktop/Xcode-Projects/VipForYT/VipForYT/VipForYT.xm"

static void _logos_method$_ungrouped$YTAppDelegate$appDidBecomeActive$(_LOGOS_SELF_TYPE_NORMAL YTAppDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"VipForYT By @ipaApps" message:@"This Tweak for Play YouTube Videos in Background And Remove Ads From The Videos"
                                                   delegate:nil
                                          cancelButtonTitle:@"Thanks!"
                                          otherButtonTitles:nil];
    [alert show];
}






static bool _logos_method$_ungrouped$YTSingleVideoController$isCurrentlyBackgroundable(_LOGOS_SELF_TYPE_NORMAL YTSingleVideoController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
return TRUE;
}






static bool _logos_method$_ungrouped$YTVASTAd$isForecastingAd(_LOGOS_SELF_TYPE_NORMAL YTVASTAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
return NO;
}



static bool _logos_method$_ungrouped$YTVASTAd$isSkippable(_LOGOS_SELF_TYPE_NORMAL YTVASTAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
return YES;
}



static bool _logos_method$_ungrouped$YTIPlayerResponse$isMonetized(_LOGOS_SELF_TYPE_NORMAL YTIPlayerResponse* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NO;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$YTAppDelegate = objc_getClass("YTAppDelegate"); _logos_superclass$_ungrouped$YTAppDelegate = class_getSuperclass(_logos_class$_ungrouped$YTAppDelegate); { _logos_register_hook$(_logos_class$_ungrouped$YTAppDelegate, @selector(appDidBecomeActive:), (IMP)&_logos_method$_ungrouped$YTAppDelegate$appDidBecomeActive$, (IMP *)&_logos_orig$_ungrouped$YTAppDelegate$appDidBecomeActive$);}Class _logos_class$_ungrouped$YTSingleVideoController = objc_getClass("YTSingleVideoController"); _logos_superclass$_ungrouped$YTSingleVideoController = class_getSuperclass(_logos_class$_ungrouped$YTSingleVideoController); { _logos_register_hook$(_logos_class$_ungrouped$YTSingleVideoController, @selector(isCurrentlyBackgroundable), (IMP)&_logos_method$_ungrouped$YTSingleVideoController$isCurrentlyBackgroundable, (IMP *)&_logos_orig$_ungrouped$YTSingleVideoController$isCurrentlyBackgroundable);}Class _logos_class$_ungrouped$YTVASTAd = objc_getClass("YTVASTAd"); _logos_superclass$_ungrouped$YTVASTAd = class_getSuperclass(_logos_class$_ungrouped$YTVASTAd); { _logos_register_hook$(_logos_class$_ungrouped$YTVASTAd, @selector(isForecastingAd), (IMP)&_logos_method$_ungrouped$YTVASTAd$isForecastingAd, (IMP *)&_logos_orig$_ungrouped$YTVASTAd$isForecastingAd);}{ _logos_register_hook$(_logos_class$_ungrouped$YTVASTAd, @selector(isSkippable), (IMP)&_logos_method$_ungrouped$YTVASTAd$isSkippable, (IMP *)&_logos_orig$_ungrouped$YTVASTAd$isSkippable);}Class _logos_class$_ungrouped$YTIPlayerResponse = objc_getClass("YTIPlayerResponse"); _logos_superclass$_ungrouped$YTIPlayerResponse = class_getSuperclass(_logos_class$_ungrouped$YTIPlayerResponse); { _logos_register_hook$(_logos_class$_ungrouped$YTIPlayerResponse, @selector(isMonetized), (IMP)&_logos_method$_ungrouped$YTIPlayerResponse$isMonetized, (IMP *)&_logos_orig$_ungrouped$YTIPlayerResponse$isMonetized);}} }
#line 48 "/Users/mohamedtanbakji/Desktop/Xcode-Projects/VipForYT/VipForYT/VipForYT.xm"
