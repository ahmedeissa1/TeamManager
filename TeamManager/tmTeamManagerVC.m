//
//  tmTeamManagerVC.m
//  TeamManager
//
//  Created by Will Block on 9/24/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "tmTeamManagerVC.h"

@interface tmTeamManagerVC ()

@end

@implementation tmTeamManagerVC

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //Scene2ViewController *scene2 = [segue destinationViewController];
    //scene2.scene2Lbl.text = @"Here from scene 1";
    
}

-(IBAction)unwindToTeamMgr:(UIStoryboardSegue*)segue{
    //scene1Lbl.text = @"Back from scene 2";
}

@end
