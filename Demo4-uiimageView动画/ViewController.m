//
//  ViewController.m
//  Demo4-uiimageView动画
//
//  Created by tarena on 16/1/25.
//  Copyright © 2016年 EvilCompssion. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *tomImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
}
- (IBAction)start:(UIButton *)sender {
    
    NSMutableArray *allImage = [NSMutableArray arrayWithCapacity:90];
    for (NSInteger i = 0; i < 81; i++) {
       // UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"knockout_%02ld.jpg",i]];
        NSString *imageName = [NSString stringWithFormat:@"knockout_%02ld.jpg",i];
        NSString *filePath = [[NSBundle mainBundle]pathForResource:imageName ofType:nil];
        //NSLog(@"%@",filePath);
        
        //UIImage *image = [UIImage imageWithContentsOfFile:[NSString stringWithFormat:@"/Users/tarena/Desktop/IOS/day20/Demo4-uiimageView动画/Demo4-uiimageView动画/Knockout/knockout_%02ld.jpg",i]];
        UIImage *image = [UIImage imageWithContentsOfFile:filePath];
        
        [allImage addObject:image];
    }
    
    self.tomImageView.animationImages = allImage;
    self.tomImageView.animationRepeatCount = 1;
    self.tomImageView.animationDuration = self.tomImageView.animationImages.count*0.075;
    [self.tomImageView startAnimating];
    [self.tomImageView performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:self.tomImageView.animationDuration];
    
    
}


@end
