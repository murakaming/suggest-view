//
//  FirstViewCell.m
//  SuggestView
//
//  Created by MurakamiTomoya on 2016/02/28.
//  Copyright © 2016年 MurakamiTomoya. All rights reserved.
//

#import "FirstViewCell.h"

@interface FirstViewCell () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation FirstViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    [_delegate performSelector:@selector(suggest:) withObject:textField];
    return NO;
}

@end
