//
//  FeedsViewController.m
//  iShareNotes
//
//  Created by Prashanna Raghavan on 10/19/15.
//  Copyright © 2015 Prashanna Raghavan. All rights reserved.
//

#import "FeedsViewController.h"
#import "FeedsTableViewCell.h"

#define kFeedsCell @"feedTableviewCell"
#define kFeedsDataPlist @"ShareNotesData"
#define kFeedsArrayKey @"Feeds"

@interface FeedsViewController ()
{
    NSArray *feedArray;
}

@end

@implementation FeedsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *path = [[NSBundle mainBundle] pathForResource:
                      kFeedsDataPlist ofType:@"plist"];
    // Build the array from the plist
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    feedArray = [dict valueForKey:kFeedsArrayKey];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return feedArray.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FeedsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kFeedsCell];
    
    NSDictionary *feed = feedArray[indexPath.section];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.feedsText.text = feed[@"feedText"];
    cell.feedsImageView.image = [UIImage imageNamed:feed[@"feedImage"]];
    
    return cell;
}

@end
