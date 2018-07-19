//
//  BNRForeignStockHolding.m
//  Stocks2
//
//  Created by Jamie on 2018-07-19.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars  // purchaseSharePrice * numberOfShares
{
    //return _purchaseSharePrice * _numberOfShare;
    return [self purchaseSharePrice] * [self numberOfShare] * 1.3;
}
- (float)valueInDollars // currentSharePrice * numberOfShares
{
    //return _currentSharePrice * _numberOfShare;
    return [self currentSharePrice] * [self numberOfShare] * 1.3;
}
@end
