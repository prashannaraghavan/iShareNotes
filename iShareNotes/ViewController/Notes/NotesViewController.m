//
//  NotesViewController.m
//  iShareNotes
//
//  Created by Prashanna Raghavan on 10/20/15.
//  Copyright © 2015 Prashanna Raghavan. All rights reserved.
//

#import "NotesViewController.h"
#import "Utils.h"

#define kNotesTableViewCellIdentifier @"NotesTableViewCell"

#define kNotesArrayKey @"Notes"

@interface NotesViewController ()
{
    NSArray *notesArray;
}
@end

@implementation NotesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    notesArray = [Utils returnDictionaryFromPlistForKey:kNotesArrayKey];
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
    return 10.0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 1.0;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return notesArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *notesDict = [notesArray objectAtIndex:indexPath.section];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kNotesTableViewCellIdentifier];
    cell.textLabel.text = notesDict[@"courseTitle"];
    return cell;
}

@end
