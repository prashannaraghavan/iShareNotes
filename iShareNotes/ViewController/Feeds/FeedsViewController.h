//
//  FeedsViewController.h
//  iShareNotes
//
//  Created by Prashanna Raghavan on 10/19/15.
//  Copyright © 2015 Prashanna Raghavan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeedsViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITableView *feedsTableview;

@end
