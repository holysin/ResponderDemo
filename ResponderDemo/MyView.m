//
//  MyView.m
//  ResponderDemo
//
//  Created by 刘岳 on 2023/2/27.
//

#import "MyView.h"

@implementation MyView

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

- (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event
{
    CGRect bounds = self.bounds;
    CGRect largeBounds = CGRectInset(bounds, -10, -10);
    return CGRectContainsPoint(largeBounds, point);
}

@end
