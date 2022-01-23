@interface SBSRemoteAlertDefinition : NSObject
@property (assign,getter=isForCarPlay,nonatomic) BOOL forCarPlay;
@property (nonatomic,copy,readonly) NSString * serviceName;
@property (nonatomic,copy,readonly) NSString * viewControllerClassName;
@end

@interface SBRemoteTransientOverlaySession : NSObject
@property (nonatomic,copy,readonly) SBSRemoteAlertDefinition * definition;
@end

%hook SBRemoteTransientOverlaySession
-(void)activateWithContext:(id)arg1 {
    if (!([self.definition.serviceName isEqual:@"com.apple.CarPlaySplashScreen"] && [self.definition.viewControllerClassName isEqual:@"CARSplashScreenViewController"])) {
        // not the splash screen, so run orig
        %orig;
    }
}
%end
