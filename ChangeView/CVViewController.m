//
//  CVViewController.m
//  ChangeView
//
//  Created by twer on 01/27/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//
#import "Utility.h"
#import "CVViewController.h"
#import "CVFirstViewController.h"
#import "CVSecondViewController.h"

@interface CVViewController ()

@end

@implementation CVViewController {

    UIButton *button1;
    UIButton *button2;
    UIViewController *firstView;
    UIViewController *secondView;
    UIView *animationViewWrapper;

}


- (UIButton *)createUIButtonWithCGRect:(CGRect)rect andWithTitle:(NSString *)title andWithTag:(int) n {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = rect;
    btn.tag = n;
    [btn setTitle:title forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(animation:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    return btn;
}

- (void)createUI {
    // create button1
    button1 = [self createUIButtonWithCGRect:CGRectMake(10, 10, 300, 30) andWithTitle:@"view1" andWithTag:0];
    button2 = [self createUIButtonWithCGRect:CGRectMake(10, 50, 300, 30) andWithTitle:@"view2" andWithTag:1];
    animationViewWrapper = [[UIView alloc] initWithFrame:CGRectMake(10, 90, 300, 360)];
    animationViewWrapper.backgroundColor = UIColorFromRGB(0xCCCCCC);
    [self.view addSubview:animationViewWrapper];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createUI];

    firstView = [[CVFirstViewController alloc] init];
    [self addChildViewController:firstView];

    secondView = [[CVSecondViewController alloc] init];
    [self addChildViewController:secondView];

    [animationViewWrapper addSubview:secondView.view];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)animation:(id)sender {

    switch ([sender tag]) {
        case 1: {
            [self transitionFromViewController:firstView toViewController:secondView duration:1 options:UIViewAnimationOptionTransitionFlipFromTop
             animations:^{}completion:^(BOOL finished) {
//                if (finished) {
//                    animationViewWrapper = secondView;
//                } else {
//                    animationViewWrapper = oldViewController;
//                }
            }];
            }
            break;
        case 0: {
            [self transitionFromViewController:secondView toViewController:firstView duration:1 options:UIViewAnimationOptionTransitionFlipFromTop animations:^{
            }completion:^(BOOL finished) {
//                if (finished) {
//                    animationViewWrapper = secondView;
//                } else {
//                    animationViewWrapper = oldViewController;
//                }
            }];
        }
            break;
//        case 3:
//        {
//            NSLog(@"好友申请");
//            [self transitionFromViewController:animationViewWrapper toViewController:thirdViewController duration:1 options:UIViewAnimationOptionTransitionFlipFromBottom animations:^{
//
//            }  completion:^(BOOL finished) {
//                if (finished) {
//                    animationViewWrapper=thirdViewController;
//                }else{
//                    animationViewWrapper=oldViewController;
//                }
//            }];
//        }
//            break;
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end