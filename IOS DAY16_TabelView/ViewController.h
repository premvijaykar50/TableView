//
//  ViewController.h
//  IOS DAY16_TabelView
//
//  Created by Student P_04 on 23/04/18.
//  Copyright © 2018 deepak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NextViewController.h"

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property NSArray *daysArray;
@property NSMutableArray *wishList;
- (IBAction)Continue:(UIButton *)sender;


@end

