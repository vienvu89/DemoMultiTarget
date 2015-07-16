//
//  ViewController.m
//  DemoMultiTarget
//
//  Created by VienVu on 7/16/15.
//  Copyright (c) 2015 VienVu. All rights reserved.
//

#import "ViewController.h"
#import "ProjectDefine.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imgFromURL;
@property (weak, nonatomic) IBOutlet UILabel *lblTestMacro;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *ImageURL = productionURL;
    NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:ImageURL]];
    self.imgFromURL.image = [UIImage imageWithData:imageData];
    
#ifdef APP2
    self.lblTestMacro.hidden = YES;
#endif
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
