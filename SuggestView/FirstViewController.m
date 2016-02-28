//
//  FirstViewController.m
//  SuggestView
//
//  Created by MurakamiTomoya on 2016/02/27.
//  Copyright © 2016年 MurakamiTomoya. All rights reserved.
//

#import "FirstViewController.h"

#import "FirstViewCell.h"
#import "SuggestViewController.h"

@interface FirstViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)suggest:(UITextField *)textField {
    [self performSegueWithIdentifier:@"SuggestSegue" sender:textField];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"FirstViewCell";
    FirstViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    [cell setDelegate:self];
    
    return cell;
}

#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ( [[segue identifier] isEqualToString:@"next"] ) {
        SuggestViewController *nextViewController = [segue destinationViewController];
        nextViewController.searchText = [(UITextField *)sender text];
    }
}

@end
