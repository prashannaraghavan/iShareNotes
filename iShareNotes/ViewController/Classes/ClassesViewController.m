//
//  ClassesViewController.m
//  iShareNotes
//
//  Created by Prashanna Raghavan on 10/20/15.
//  Copyright © 2015 Prashanna Raghavan. All rights reserved.
//

#import "ClassesViewController.h"
#import "Utils.h"

#define kClassesTableViewCellIdentifier @"ClassesTableViewCell"

#define kClassesArrayKey @"Classes"

@interface ClassesViewController ()
{
    NSArray *classesArray;
}
@end

@implementation ClassesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    classesArray = [Utils returnDictionaryFromPlistForKey:kClassesArrayKey];
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
    return classesArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *notesDict = [classesArray objectAtIndex:indexPath.section];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kClassesTableViewCellIdentifier];
    cell.textLabel.text = notesDict[@"courseTitle"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

@end
