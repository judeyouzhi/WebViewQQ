//
//  ViewController.m
//  WebViewQQ
//
//  Created by Jude You on 8/4/17.
//  Copyright © 2017 judeyou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    UIWebView *webView = [[UIWebView alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    [webView setDelegate:self];
    
    
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height - 60, [[UIScreen mainScreen] bounds].size.width, 60)];
    [imgView setBackgroundColor:[UIColor grayColor]];
    
    NSString *urlAddress = @"https://v.qq.com/iframe/player.html?vid=j052796psa6&tiny=1&auto=0";
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
    
    [self.view addSubview:webView];
    [self.view addSubview:imgView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)webViewDidFinishLoad:(UIWebView *)webView
{
//    _loadingLabel.hidden = TRUE;
//    //add "newtab:" before each <a> tag href that fits criteria: 1) must have target="_blank", 2) must NOT have onclick attribute
//    NSString *JSInjection = @"javascript: var allLinks = document.getElementsByTagName('a'); if (allLinks) {var i;for (i=0; i<allLinks.length; i++) {var link = allLinks[i];var oncli = link.getAttribute('onclick');if(oncli==undefined||oncli.length<1){var target = link.getAttribute('target'); if (target && target == '_blank') {link.setAttribute('target','_self');link.href = 'newtab:'+link.href;}}}}";
//    [webView stringByEvaluatingJavaScriptFromString:JSInjection];
}

@end
