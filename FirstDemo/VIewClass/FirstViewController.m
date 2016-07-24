//
//  FirstViewController.m
//  FirstDemo
//
//  Created by WARRON on 7/21/16.
//  Copyright © 2016 WARRON. All rights reserved.

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic)IBOutlet UILabel *label1;

@end

@implementation FirstViewController

- (void)viewDidLoad {
   
     [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(getMessage:) name:@"sendMessage" object:nil];
    
    [super viewDidLoad];
}

-(void)getMessage:(NSNotification *)notify{    
    
    self.textFiled1.text =  notify.object;
}
-(IBAction)btn1Action:(UIButton *)sender {
    
 self.label1.text = @"改变前的值";
    
SecondViewController * second = [[SecondViewController alloc]init];
    
[self.navigationController pushViewController:second animated:YES];
}
@end
