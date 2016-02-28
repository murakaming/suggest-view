//
//  SuggestViewController.h
//  SuggestView
//
//  Created by MurakamiTomoya on 2016/02/28.
//  Copyright © 2016年 MurakamiTomoya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SuggestViewController : UIViewController

@property (weak, nonatomic) id delegate;
@property (strong, nonatomic) NSString *searchText;
@property (strong, nonatomic) NSIndexPath *searchIndexPath;

@end
