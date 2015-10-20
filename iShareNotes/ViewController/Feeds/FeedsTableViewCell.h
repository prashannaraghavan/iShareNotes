//
//  FeedsTableViewCell.h
//  iShareNotes
//
//  Created by Prashanna Raghavan on 10/19/15.
//  Copyright © 2015 Prashanna Raghavan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeedsTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *feedsImageView;
@property (weak, nonatomic) IBOutlet UILabel *feedsText;

@property (weak, nonatomic) IBOutlet UIButton *likeBtn;
@property (weak, nonatomic) IBOutlet UIButton *markBtn;
@property (weak, nonatomic) IBOutlet UIButton *favBtn;

@end
