//
//  BNRStockHolding.m
//  Stocks2
//
//  Created by Jamie on 2018-07-12.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)costInDollars  // purchaseSharePrice * numberOfShares
{
    //return _purchaseSharePrice * _numberOfShare;
    return [self purchaseSharePrice] * [self numberOfShare];
}
- (float)valueInDollars // currentSharePrice * numberOfShares
{
    //return _currentSharePrice * _numberOfShare;
    return [self currentSharePrice] * [self numberOfShare];
}
- (float)profitInDollars
{
    return [self valueInDollars] - [self costInDollars];
}

- (NSString*) description
{
    NSString *description = [NSString stringWithFormat:@"\nNumber of Shares: %d\nPurchase Price: $%.2f\nShare Price: $%.2f\nCost: $%.2f\nValue: $%.2f\nProfit: $%.2f", [self numberOfShare], [self purchaseSharePrice], [self currentSharePrice], [self costInDollars], [self valueInDollars], [self profitInDollars]];
    return description;
}

@end
