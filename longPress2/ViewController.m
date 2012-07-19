//
//  ViewController.m
//  longPress2
//
//  Created by iD Student on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib
}

- (void)viewDidUnload
{
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

-(void)movePlayer:(id)sender {
    x = x + 1;
    NSLog(@"X = %f", x);
}

- (IBAction)buttonEnd:(id)sender {
    
    if (timer != nil) 
        [timer invalidate];
    timer = nil;

}

- (IBAction)buttonBegan:(id)sender {
    timer = [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(movePlayer:) userInfo:nil repeats:YES];
}
@end
