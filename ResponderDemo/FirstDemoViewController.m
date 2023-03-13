//
//  FirstDemoViewController.m
//  ResponderDemo
//
//  Created by 刘岳 on 2023/3/12.
//

#import "FirstDemoViewController.h"
#import "ChildViewController.h"

@interface FirstDemoViewController ()

@property (nonatomic, strong) ChildViewController *childViewController;

@end

@implementation FirstDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.childViewController = [[ChildViewController alloc] init];
    self.childViewController.view.backgroundColor = [UIColor redColor];
    self.childViewController.view.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:self.childViewController.view];
    
    [self addChildViewController:self.childViewController];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
