//
//  FeedsViewController.m
//  iShareNotes
//
//  Created by Prashanna Raghavan on 10/19/15.
//  Copyright © 2015 Prashanna Raghavan. All rights reserved.
//

#import "FeedsViewController.h"
#import "FeedsTableViewCell.h"
#import "Utils.h"

#define kFeedsCell @"feedTableviewCell"
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
    
    feedArray = [Utils returnDictionaryFromPlistForKey:kFeedsArrayKey];
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

#pragma mark - UITableview delegates

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

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10.0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 1.0;
}

#pragma mark - UITextField delegates

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return YES;
}

-(BOOL)textFieldShouldClear:(UITextField *)textField
{
    return YES;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    
}

@end
