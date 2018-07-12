//
//  Bntview.h
//  GestureLock
//
//  Created by Superman on 2018/7/11.
//  Copyright © 2018年 Superman. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Bntview;

@protocol BntviewDelegate <NSObject>
-(void)bntview:(Bntview *)bntview :(NSString *)strM;

@end
@interface Bntview : UIView

@property(nonatomic)id<BntviewDelegate> delegate;
- (instancetype)initWithFrame:(CGRect)frame ;

@end
