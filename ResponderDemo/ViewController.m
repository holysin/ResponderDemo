//
//  ViewController.m
//  ResponderDemo
//
//  Created by 刘岳 on 2023/2/27.
//

#import "ViewController.h"
#import "FirstDemoViewController.h"
#import "SecondDemoViewController.h"
#import "ThirdDemoViewController.h"
#import "FourthDemoViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *conditions;
@property (nonatomic, strong) NSArray *destinations;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];;
    
    self.conditions = @[@"Responder Chain",
                        @"Enlarge Area",
                        @"Gesture vs Responder",
                        @"Gesture vs UIControl vs UIButton"];
    
    self.destinations = @[FirstDemoViewController.class,
                          SecondDemoViewController.class,
                          ThirdDemoViewController.class,
                          FourthDemoViewController.class];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.conditions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = self.conditions[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Class DestClass = [self.destinations objectAtIndex:indexPath.row];
    UIViewController *dest = (UIViewController *)[[DestClass alloc] init];
    dest.title = self.conditions[indexPath.row];
    [self.navigationController pushViewController:dest animated:YES];
}

@end
