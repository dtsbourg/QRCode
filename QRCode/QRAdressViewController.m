//
//  QRAdressViewController.m
//  QRCode
//
//  Created by Dylan Bourgeois on 30/01/14.
//  Copyright (c) 2014 Dylan Bourgeois. All rights reserved.
//

#import "QRAdressViewController.h"
#import "QRViewController.h"

@interface QRAdressViewController ()

@end

@implementation QRAdressViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    /*if (!people || !adr) {
    people=[[NSMutableArray alloc] initWithObjects:@"John Appleseed", @"Satoshi Nakamoto", @"Foo Fooski", nil];
    adr = [[NSMutableDictionary alloc] initWithObjects:@[@"D8nqWPm9YQHTa2L5Y9DnYpQCvD36HAbkWf", @"D8npWL2DQHTa2L5Y9DnYpQCvD36HAbkWf", @"D8npWPm9EQHTa2L5c9DnYpQCAD36HAbkWf"] forKeys:people];
    }*/
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.adr count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.backgroundColor = [UIColor colorWithRed:51.0f/255.0f green:51.0f/255.0f blue:51.0f/255.0f alpha:1.0f];
    
    cell.textLabel.text = self.people[indexPath.row];
    cell.textLabel.textColor = [UIColor whiteColor];
    
    cell.detailTextLabel.text = [self.adr objectForKey:self.people[indexPath.row]];
    cell.detailTextLabel.textColor = [UIColor colorWithRed:144.0f/255.0f green:222.0f/255.0f blue:47.0f/255.0f alpha:1.0f];
    return cell;
}


@end
