//
//  ViewController.m
//  keyChainDemo
//
//  Created by mr.scorpion on 16/8/12.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import "ViewController.h"
#import "MSUserDataManager.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *showLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [MSUserDataManager savePassWord:@"mrscorpion"];
    
}

- (IBAction)show:(UIButton *)sender {
    self.showLabel.text = [MSUserDataManager readPassWord];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
