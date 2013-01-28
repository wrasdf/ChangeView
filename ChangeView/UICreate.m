//
// Created by twer on 1/27/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "UICreate.h"


@implementation UICreate {

}


- (UIButton *) createUIButtonWithCGRect:(CGRect) rect andWithTitle:(NSString *) title {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame =  rect;
    [button setTitle:title forState:UIControlStateNormal];
    return button;

}

- (UILabel *) createUILabelWithCGRect:(CGRect) rect andWithTitle:(NSString *) title{
    UILabel *label = [[UILabel alloc] initWithFrame:rect];
    label.text = title;
    return label;
}




@end