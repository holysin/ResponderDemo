//
//  ThirdDemoViewController.m
//  ResponderDemo
//
//  Created by 刘岳 on 2023/3/12.
//

#import "ThirdDemoViewController.h"
#import "MyView.h"

@interface ThirdDemoViewController ()

@end

@implementation ThirdDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    MyView *myView = [[MyView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    myView.backgroundColor = [UIColor redColor];
    [self.view addSubview:myView];
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panAction)];
    [self.view addGestureRecognizer:pan];
}

- (void)panAction
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
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
