//
//  ViewController.m
//  SLSimpleFactoryModeDemo
//
//  Created by dash on 14-8-8.
//  Copyright (c) 2014年 com.dash.Qjie. All rights reserved.
//

#import "ViewController.h"

#import "HumanFactory.h"
#import "Human.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIButton *studentButton;
@property (nonatomic, weak) IBOutlet UIButton *teacherButton;
@property (nonatomic, weak) IBOutlet UILabel *showLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapButton:(id)sender
{
    Human *human;
    if (sender == self.studentButton) {
        human = [HumanFactory humanWithHumanIdentifier:@"student"];
    } else {
        human = [HumanFactory humanWithHumanIdentifier:@"teacher"];
    }
    self.showLabel.text = [human showPosition];
}

@end
