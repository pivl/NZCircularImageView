//
//  NZViewController.m
//  NZCircularImageView
//
//  Created by Bruno Furtado on 10/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import "NZViewController.h"
#import "NZCircularImageView.h"

static NSString* const kImageUrl = @"http://www.falaturista.com.br/blog/wp-content/uploads/2010/07/jardim-botanico-curitiba.jpg";

@interface NZViewController ()

@property (strong, nonatomic) IBOutlet UILabel *lbInfo;
@property (strong, nonatomic) IBOutlet NZCircularImageView *imageView;

- (IBAction)jpg300Clicked;
- (IBAction)jpg400Clicked;
- (IBAction)png300Clicked;
- (IBAction)png400Clicked;

@end



@implementation NZViewController

#pragma mark -
#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self jpg300Clicked];
}

#pragma mark -
#pragma mark - Actions

- (IBAction)jpg300Clicked
{
    self.lbInfo.text = @"[JPG] 300x300";
    
    //[self.imageView setImageWithResizeURL:kImageUrl];
    
    self.imageView.image = [UIImage imageNamed:@"300x300.jpg"];
}

- (IBAction)jpg400Clicked
{
    self.lbInfo.text = @"[JPG] 300x400";
    
    //[self.imageView setImageWithResizeURL:kImageUrl
    //          usingActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    
    self.imageView.image = [UIImage imageNamed:@"300x400.jpg"];
}

- (IBAction)png300Clicked
{
    self.lbInfo.text = @"[PNG] 300x300";
    
    [self.imageView setImageWithResizeURL:kImageUrl
              usingActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite
                                completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType) {
#ifdef NZDEBUG
                                    NSLog(@"%s\nDownload completed", __PRETTY_FUNCTION__);
#endif
              }];
    
    //self.imageView.image = [UIImage imageNamed:@"300x300.png"];
}

- (IBAction)png400Clicked
{
    self.lbInfo.text = @"[PNG] 300x400";
    self.imageView.image = [UIImage imageNamed:@"300x400.png"];
}

@end