//
//  NextViewController.h
//  IOS DAY16_TabelView
//
//  Created by Student P_04 on 23/04/18.
//  Copyright © 2018 deepak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NextViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

//@property (weak, nonatomic) IBOutlet UILabel *lableDay;
@property NSString *day;
@property NSArray *daysArray;

@property (weak, nonatomic) IBOutlet UITableView *Table;

@end
