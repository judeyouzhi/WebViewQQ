//
//  ViewController.h
//  WebViewQQ
//
//  Created by Jude You on 8/4/17.
//  Copyright © 2017 judeyou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *mainWebView;
@property (weak, nonatomic) IBOutlet UILabel *loadingLabel;

@end

