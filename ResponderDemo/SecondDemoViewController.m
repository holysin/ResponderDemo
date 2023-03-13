//
//  SecondDemoViewController.m
//  ResponderDemo
//
//  Created by 刘岳 on 2023/3/12.
//

#import "SecondDemoViewController.h"
#import "MyView.h"

@interface SecondDemoViewController ()

@property (nonatomic, strong) MyView *myView;
@property (nonatomic, strong) UIView *outterView;

@end

@implementation SecondDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.outterView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    self.outterView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.outterView];
    
    self.myView = [[MyView alloc] initWithFrame:CGRectMake(110, 110, 80, 80)];
    self.myView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.myView];
}

@end
