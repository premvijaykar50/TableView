//
//  NextViewController.m
//  IOS DAY16_TabelView
//
//  Created by Student P_04 on 23/04/18.
//  Copyright © 2018 deepak. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //NSLog(@"Day=%@",self.day);
   // self.lableDay.text=self.day;
    
    NSLog(@"Days Array contains data %@",self.daysArray);
    // Do any additional setup after loading the view.
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
    UISwitch *mySwitch=[[UISwitch alloc]init];
    mySwitch.accessibilityLabel=cell.textLabel.text;
    cell.accessoryView=mySwitch;
    [mySwitch addTarget:self action:@selector(switchPressed:) forControlEvents:UIControlEventValueChanged];
       return cell;

}
-(void)switchPressed:(UISwitch *)sender
{
    if(sender.isOn)
    {
        NSLog(@"Switch is on and you selected:%@",sender.accessibilityLabel);
    }
              else{
                  NSLog(@"Switch is off");
              }
}
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end

