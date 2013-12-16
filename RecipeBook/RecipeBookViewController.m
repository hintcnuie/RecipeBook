//
//  RecipeBookViewController.m
//  RecipeBook
//
//  Created by Chen on 13-12-16.
//  Copyright (c) 2013年 Appcoda. All rights reserved.
//

#import "RecipeBookViewController.h"

@interface RecipeBookViewController ()

@end

@implementation RecipeBookViewController
{
    NSArray *recipes;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    recipes = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static  NSString *simpleTableIdentifier = @"RecipeCell";
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == Nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    cell.textLabel.text =[recipes objectAtIndex:indexPath.row];
    return cell;
}
@end
