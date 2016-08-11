//
//  ViewController.m
//  360ThetaLive
//
//  Created by gaurav kumar on 8/7/16.
//  Copyright © 2016 gaurav kumar. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKLoginKit/FBSDKLoginKit.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    loginButton.center = self.view.center;
    [self.view addSubview:loginButton];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showNativeAd
{
    FBNativeAd *nativeAd =
    [[FBNativeAd alloc] initWithPlacementID:@"1350297258333645_1362943337069037"];
    nativeAd.delegate = self;
    [nativeAd loadAd];
}

// Now that you have added the code to load the ad, add the following
// functions to handle loading failures and to construct the ad once
// it has loaded:
- (void)nativeAdDidLoad:(FBNativeAd *)nativeAd
{
    NSString *titleForAd = nativeAd.title;
    NSString *bodyTextForAd = nativeAd.body;
    FBAdImage *coverImage = nativeAd.coverImage;
    FBAdImage *iconForAd = nativeAd.icon;
    NSString *socialContextForAd = nativeAd.socialContext;
    struct FBAdStarRating appRatingForAd = nativeAd.starRating;
    NSString *titleForAdButton = nativeAd.callToAction;
    
    // Add code here to create a custom UIView that uses the ad properties
    // For example:
    //UIView *nativeAdView  = [[UIView alloc]initWithFrame:adFrame];
    //UILabel *titleLabel = [[UILabel alloc] initWithFrame:titleFrame];
    //titleLabel.text = titleForAd;
    //[nativeAdView addSubview:titleLabel];
    //...
    
    // Add the ad to the view hierarchy
    //[self.view addSubview:nativeAdView];
    
    // Register the native ad view and its view controller with the
    // native ad instance
    //[nativeAd registerViewForInteraction:nativeAdView withViewController:self];
}

- (void)nativeAd:(FBNativeAd *)nativeAd didFailWithError:(NSError *)error
{
    NSLog(@"Ad failed to load with error: %@", error);
}

@end
