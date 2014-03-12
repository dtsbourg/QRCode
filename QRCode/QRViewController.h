//
//  QRViewController.h
//  QRCode
//
//  Created by Dylan Bourgeois on 30/01/14.
//  Copyright (c) 2014 Dylan Bourgeois. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "QRAdressViewController.h"

@interface QRViewController : UIViewController <AVCaptureMetadataOutputObjectsDelegate>


@property (weak, nonatomic) IBOutlet UIView *viewPreview;
@property (weak, nonatomic) IBOutlet UIButton *bbitemStart;

- (IBAction)startStopReading:(id)sender;

@property(nonatomic, assign) QRAdressViewController *delegate;


@end
