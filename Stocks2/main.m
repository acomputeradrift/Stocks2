//
//  main.m
//  Stocks2
//
//  Created by Jamie on 2018-07-12.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //set the parameters for each stock held
        
        BNRStockHolding *Telus = [[BNRStockHolding alloc]init];
        [Telus setPurchaseSharePrice:100];
        [Telus setNumberOfShare:25];
        [Telus setCurrentSharePrice:125];
        
        BNRStockHolding *Bell = [[BNRStockHolding alloc]init];
        [Bell setPurchaseSharePrice:37];
        [Bell setNumberOfShare:87];
        [Bell setCurrentSharePrice:87];
        
        BNRStockHolding *Rogers = [[BNRStockHolding alloc]init];
        [Rogers setPurchaseSharePrice:224];
        [Rogers setNumberOfShare:10];
        [Rogers setCurrentSharePrice:276];
        
        BNRForeignStockHolding *swissCompany = [[BNRForeignStockHolding alloc]init];
        [swissCompany setPurchaseSharePrice:10];
        [swissCompany setNumberOfShare:7];
        [swissCompany setCurrentSharePrice:100];
        
        //fill the array
        
        NSArray *allStocks = @[Telus, Bell, Rogers, swissCompany];
        
        //iterate through it
        
        for (BNRStockHolding *eachStock in allStocks)
        {
            
            //NSLog(@"$%.02f, $%.2d, $%.02f", [eachStock purchaseSharePrice],[eachStock numberOfShare], [eachStock currentSharePrice]);
            //NSLog(@"The total cost of your aquisition is $%.2f and your total value today is $%.2f", [eachStock costInDollars], [eachStock valueInDollars]);
            
            NSLog (@"%@", [eachStock description]);
            
        }
        
    }
    
    return 0;
}

