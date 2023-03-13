//
//  FourthDemoViewController.m
//  ResponderDemo
//
//  Created by 刘岳 on 2023/3/12.
//

#import "FourthDemoViewController.h"

@interface FourthDemoViewController () <UIGestureRecognizerDelegate>

@property (nonatomic, strong) UIControl *control1;
@property (nonatomic, strong) UIControl *control2;
@property (nonatomic, strong) UIButton *button;

@end

@implementation FourthDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.control1 = [[UIControl alloc] init];
    self.control1.frame = CGRectMake(100, 100, 60, 60);
    self.control1.backgroundColor = [UIColor blueColor];
    [self.control1 addTarget:self action:@selector(controlAction1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.control1];
    
    self.control2 = [[UIControl alloc] init];
    self.control2.frame = CGRectMake(100, 200, 60, 60);
    self.control2.backgroundColor = [UIColor greenColor];
    [self.control2 addTarget:self action:@selector(controlAction2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.control2];
    
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.button.frame = CGRectMake(200, 100, 60, 60);
    self.button.backgroundColor = [UIColor redColor];
    [self.button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
    tap.delegate = self;
    [self.view addGestureRecognizer:tap];
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(nonnull UITouch *)touch
{
    if (touch.view == self.control2)
    {
        return NO;
    }
    
    return YES;
}

static BOOL _UIViewIgnoresTouchEvents(UIView *view) {
    if (!view.isUserInteractionEnabled || view.isHidden || view.alpha < 0.01) {
        return YES;
    }
    return NO;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    if (!self.isUserInteractionEnabled || self.isHidden || self.alpha < 0.01) {
        return nil;
    }
    if ([self pointInside:point withEvent:event] == NO) {
        return nil;
    }
    
    __block UIView *view = nil;
    [self.subviews enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        view = [obj hitTest:point withEvent:event];
        if (view) {
            *stop = YES;
        }
    }];
    return view ? view : self;
}

/**
 * this method not called, for the gesture swallow the touch events
 */
- (void)controlAction1
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)controlAction2
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

/**
 * this method will called, because the button's priority is higher than gesture
 */
- (void)buttonAction
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)tap
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
