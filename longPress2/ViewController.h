//
//  ViewController.h
//  longPress2
//
//  Created by iD Student on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    float x;
}
- (IBAction)buttonEnd:(id)sender;
- (IBAction)buttonBegan:(id)sender;


@end
