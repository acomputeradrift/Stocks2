//
//  BNRStockHolding.h
//  Stocks2
//
//  Created by Jamie on 2018-07-12.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShare;

- (float)costInDollars;
- (float)valueInDollars;
- (float)profitInDollars;
@end
