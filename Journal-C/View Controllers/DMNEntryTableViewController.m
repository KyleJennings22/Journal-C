//
//  DMNEntryTableViewController.m
//  Journal-C
//
//  Created by Kyle Jennings on 12/2/19.
//  Copyright © 2019 Kyle Jennings. All rights reserved.
//

#import "DMNEntryTableViewController.h"
#import "DMNEntryController.h"
#import "DMNEntryDetailViewController.h"
@interface DMNEntryTableViewController ()

@end

@implementation DMNEntryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDate *rightNow = [[NSDate alloc] init];
    [DMNEntryController.shared addEntry:@"Nerp" bodyText:@"Derp" timestamp: rightNow];
    
    [self.tableView reloadData];
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.tableView reloadData];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return DMNEntryController.shared.entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    // Configure the cell...
    DMNEntry *entry = DMNEntryController.shared.entries[indexPath.row];

    cell.textLabel.text = entry.title;
    
    return cell;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        DMNEntry *entry = DMNEntryController.shared.entries[indexPath.row];
        [DMNEntryController.shared removeEntry:entry];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }  
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"toEntryDetail"])
    {
        DMNEntryDetailViewController *destinationVC = [segue destinationViewController];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DMNEntry *entry = DMNEntryController.shared.entries[indexPath.row];
        destinationVC.entryLandingPad = entry;
    }
}


- (IBAction)addEntryBarButtonItem:(UIBarButtonItem *)sender {
}
@end
