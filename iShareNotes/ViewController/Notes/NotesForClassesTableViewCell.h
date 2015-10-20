//
//  NotesForClassesTableViewCell.h
//  iShareNotes
//
//  Created by Prashanna Raghavan on 10/20/15.
//  Copyright © 2015 Prashanna Raghavan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotesForClassesTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *noteLabel;

@property (weak, nonatomic) IBOutlet UIButton *likeBtn;
@property (weak, nonatomic) IBOutlet UIButton *markBtn;
@property (weak, nonatomic) IBOutlet UIButton *favBtn;
@end
