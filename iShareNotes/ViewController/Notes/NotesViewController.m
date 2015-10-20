//
//  NotesViewController.m
//  iShareNotes
//
//  Created by Prashanna Raghavan on 10/20/15.
//  Copyright © 2015 Prashanna Raghavan. All rights reserved.
//

#import "NotesViewController.h"
#import "NotesForClassesTableViewCell.h"
#import "Utils.h"

#define kNotesCellIdentifier @"NotesTableViewCell"
#define kNotesForClassCellIdentifier @"NotesForClassCell"

#define kFeedsArrayKey @"Feeds"
#define kNotesArrayKey @"Notes"

@interface NotesViewController ()
{
    NSArray *notesArray;
    NSArray *feedArray;
}
@property (weak, nonatomic) IBOutlet UITableView *notesTableView;
@end

@implementation NotesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    notesArray = [Utils returnDictionaryFromPlistForKey:kNotesArrayKey];
    feedArray = [Utils returnDictionaryFromPlistForKey:kFeedsArrayKey];
    self.notesTableView.estimatedRowHeight = UITableViewAutomaticDimension;
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

#pragma mark - UITableview Delegate

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 45.0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 1.0;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return feedArray.count;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return notesArray.count;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    NSDictionary *notesDict = [notesArray objectAtIndex:section];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kNotesCellIdentifier];
    cell.textLabel.text = notesDict[@"courseTitle"];
    return cell.contentView;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *feed = [feedArray objectAtIndex:indexPath.row];
    NotesForClassesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kNotesForClassCellIdentifier];
    cell.noteLabel.text = feed[@"feedText"];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100.0;
}

@end
