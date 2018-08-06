//
//  MDScreenSaverOptionsWindowController.h
//  ScreenSaver Finagler
//
//  Created by Mark Douma on 2/11/2013.
//  Copyright (c) 2013 Mark Douma. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class hangulclocksaverView;


@interface ConfigureSheet : NSWindowController {
    IBOutlet NSMatrix                *optionsMatrix;
    
    // because the screenSaverView owns us, we want a weak/non-retained reference to prevent a strong-reference cycle/retain-cycle
    
    hangulclocksaverView        *screenSaverView;    // non-retained/weak reference
}

- (id)initWithScreenSaverView:(hangulclocksaverView *)aView;


@property (nonatomic, assign) hangulclocksaverView *screenSaverView;


- (IBAction)ok:(id)sender;

@end
