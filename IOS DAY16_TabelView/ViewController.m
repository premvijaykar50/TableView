//
//  ViewController.m
//  IOS DAY16_TabelView
//
//  Created by Student P_04 on 23/04/18.
//  Copyright © 2018 deepak. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.daysArray=@[@"Sunday",@"Monday",@"Tuesday",@"Wednesday",@"Thursday",@"Friday",@"Satuday"];
    self.wishList=[[NSMutableArray alloc]init];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.daysArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text=[self.daysArray objectAtIndex:indexPath.row];
    //cell.accessoryType=UITableViewCellAccessoryDetailDisclosureButton;
    cell.accessoryType=UITableViewCellAccessoryNone;
    return cell;
}
-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    NSString *selectedDay=cell.textLabel.text;
    NextViewController *nvc=[self.storyboard instantiateViewControllerWithIdentifier:@"NextViewController"];
    nvc.day=selectedDay;
    [self.navigationController pushViewController:nvc animated:YES];
}
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    if(cell.accessoryType==UITableViewCellAccessoryNone)
    {
        cell.accessoryType=UITableViewCellAccessoryCheckmark;
        [self.wishList addObject:cell.textLabel.text];
    }
    else
    {
        cell.accessoryType=UITableViewCellAccessoryNone;
        [self.wishList removeObject:cell.textLabel.text];
    }
    NSLog(@"Wish List containts %@",self.wishList);
    //NSString *selectedDay=cell.textLabel.text;
}
- (IBAction)Continue:(UIButton *)sender {
    NextViewController *nvc=[self.storyboard instantiateViewControllerWithIdentifier:@"NextViewController"];
    //nvc.day=selectedDay;
    nvc.daysArray=self.wishList;
    [self.navigationController pushViewController:nvc animated:YES];
}
@end
