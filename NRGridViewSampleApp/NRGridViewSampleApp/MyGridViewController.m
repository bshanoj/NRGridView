//
//  MyGridViewController.m
//  NRGridViewSampleApp
//
//  Created by Louka Desroziers on 04/02/12.
//  Copyright (c) 2012 Novedia Regions. All rights reserved.
//

#import "MyGridViewController.h"

@implementation MyGridViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - View lifecycle


- (void)loadView
{ 
    [super loadView];
    [[self gridView] setCellSize:CGSizeMake(100, 75)];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

#pragma mark - NRGridView Data Source



- (NSInteger)numberOfSectionsInGridView:(NRGridView *)gridView
{
    return 5;
}

- (NSInteger)gridView:(NRGridView *)gridView numberOfItemsInSection:(NSInteger)section
{
    return 50;
}

- (NSString*)gridView:(NRGridView *)gridView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"Section %i", section];
}


- (NRGridViewCell*)gridView:(NRGridView *)gridView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyCellIdentifier = @"MyCellIdentifier";
    
    NRGridViewCell* cell = [gridView dequeueReusableCellWithIdentifier:MyCellIdentifier];
    
    if(cell == nil){
        cell = [[[NRGridViewCell alloc] initWithReuseIdentifier:MyCellIdentifier] autorelease];
        
        [[cell textLabel] setFont:[UIFont boldSystemFontOfSize:11.]];
        [[cell detailedTextLabel] setFont:[UIFont systemFontOfSize:11.]];

    }
    
    cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%i.png", (indexPath.row%7)]];
    cell.textLabel.text = [NSString stringWithFormat:@"Item %i", indexPath.itemIndex];
    cell.detailedTextLabel.text = @"Some details";

    return cell;
}

#pragma mark - NRGridView Delegate

- (void)gridView:(NRGridView *)gridView didSelectCellAtIndexPath:(NSIndexPath *)indexPath
{
    MyGridViewController *gridViewController = [[MyGridViewController alloc] initWithGridLayoutStyle:([self gridLayoutStyle] == NRGridViewLayoutStyleVertical
                                                                                                      ? NRGridViewLayoutStyleHorizontal
                                                                                                      : NRGridViewLayoutStyleVertical)];
    [[self navigationController] pushViewController:gridViewController 
                                           animated:YES];
    [gridViewController release];
}


#pragma mark - Memory Management


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)dealloc
{
    [super dealloc];
}

@end