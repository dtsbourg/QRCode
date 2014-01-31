//
//  QRAdressViewController.h
//  QRCode
//
//  Created by Dylan Bourgeois on 30/01/14.
//  Copyright (c) 2014 Dylan Bourgeois. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QRAdressViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    NSMutableDictionary *adr;
    NSMutableArray *people;
}


- (void)passPeople:(NSMutableArray *)array;
- (void)passAdress:(NSMutableDictionary *)dict;

@end
