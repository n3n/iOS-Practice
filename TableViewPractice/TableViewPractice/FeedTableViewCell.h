//
//  FeedTableViewCell.h
//  TableViewPractice
//
//  Created by Nonpawit Teerachetmongkol on 12/3/2558 BE.
//  Copyright © 2558 Nonpawit Teerachetmongkol. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeedTableViewCell : UITableViewCell

@property (strong, nonatomic)NSString *fullname;
@property (strong, nonatomic)NSString *descriptionFeed;
@property (strong, nonatomic)NSString *address;
@property (readonly, nonatomic)NSString *photoImage;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
