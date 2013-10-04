//
//  MViewController.m
//  MMotionLabel
//
//  Created by Muukii on 10/5/13.
//  Copyright (c) 2013 Muukii. All rights reserved.
//

#import "MViewController.h"

@interface MViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation MViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonHadler:(id)sender {
    self.label.text = self.textField.text;
}

@end
