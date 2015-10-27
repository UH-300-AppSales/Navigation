//
//  HomeViewController.m
//  Navigation
//
//  Created by UH300- App Sales on 10/13/15.
//  Copyright © 2015 UH300- App Sales. All rights reserved.
//

#import "HomeViewController.h"
#import "ProfileViewController.h"
#import "MonkeyViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Home";
    self.tabBarItem.image = [UIImage imageNamed:@"sample-307-atom.png"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)didSelectProfile:(id)sender {
    //Create a profile vc
    ProfileViewController *profileVC = [[ProfileViewController alloc] initWithNibName:@"ProfileViewController" bundle:nil];
    
    //Add to navigation controller
    [self.navigationController pushViewController:profileVC animated:YES];
}
- (IBAction)didSelectMonkey:(id)sender {
    MonkeyViewController *monkeyVC = [[MonkeyViewController alloc] initWithNibName:@"MonkeyViewController" bundle:nil];
    
    //Add to navigation controller
    [self.navigationController pushViewController:monkeyVC animated:YES];
}

@end
