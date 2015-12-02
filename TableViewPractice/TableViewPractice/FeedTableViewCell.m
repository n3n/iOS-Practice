//
//  FeedTableViewCell.m
//  TableViewPractice
//
//  Created by Nonpawit Teerachetmongkol on 12/3/2558 BE.
//  Copyright © 2558 Nonpawit Teerachetmongkol. All rights reserved.
//

#import "FeedTableViewCell.h"

@interface FeedTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *fullnameLabel;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;
@property (weak, nonatomic) IBOutlet UIImageView *profileImage;

@end

const static NSString *kFullname = @"fullname";
const static NSString *kAddress = @"address";
const static NSString *kDescription = @"description";
const static NSString *kProfileImage = @"profileImage";

@implementation FeedTableViewCell {
    UIImage *photoImage;
}

- isKindOfClass:

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if(self) {
        self.fullname = dictionary[kFullname];
        self.descriptionFeed = dictionary[kDescription];
        self.address = dictionary[kAddress];
    }
    return self;
}

@end
