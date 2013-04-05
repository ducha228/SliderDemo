//
//  ViewController.m
//  SliderDemo
//
//  Created by DucHa on 4/2/13.
//  Copyright (c) 2013 DucHa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(weak,nonatomic) IBOutlet UISlider *sliderB;
@property(weak,nonatomic) IBOutlet UILabel *labelB;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _labelB.textColor = [UIColor blueColor];
    _labelB.text = [NSString stringWithFormat:@"%.2f",_sliderB.value];
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sliderBChanged:(id)sender {
    float x = _sliderB.value * 3.02;
    _labelB.frame = CGRectMake(_sliderB.value, 120, 50, 20);
    _labelB.text = [NSString stringWithFormat:@"%.2f",_sliderB.value];
}
@end
