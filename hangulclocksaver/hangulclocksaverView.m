//
//  hangulclocksaverView.m
//  hangulclocksaver
//
//  Created by Joonhee Lee on 06/07/2018.
//  Copyright © 2018 Joonhee Lee. All rights reserved.
//

#import "hangulclocksaverView.h"

@implementation hangulclocksaverView

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:1];
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"HH"];
    NSString *hour = [dateFormatter stringFromDate:date];
    
    [dateFormatter setDateFormat:@"mm"];
    NSString *min = [dateFormatter stringFromDate:date];
    
    /*한글시계 글자당 좌표
     한    두    세    네    다    섯
     aa   ab   ac    ad   ae    af
     
     여    섯    일    곱    여    덟
     ba   bb   bc    bd   be    bf
     
     한    두    세    네    다    섯
     ca   cb   cc    cd   ce    cf
     
     한    두    세    네    다    섯
     da   db   dc    dd   de    df
     
     한    두    세    네    다    섯
     ea   eb   ec    ed   ee    ef
     
     한    두    세    네    다    섯
     fa   fb   fc    fd   fe    ff
     */
    
    NSColor *aa = [hangulclocksaverView aacolor:hour];
    NSColor *ab = [hangulclocksaverView abcolor:hour];
    NSColor *ac = [hangulclocksaverView accolor:hour];
    NSColor *ad = [hangulclocksaverView adcolor:hour];
    NSColor *ae = [hangulclocksaverView aecolor:hour];
    NSColor *af = [hangulclocksaverView afcolor:hour];
    
    NSColor *ba = [hangulclocksaverView bacolor:hour];
    NSColor *bb = [hangulclocksaverView bbcolor:hour];
    NSColor *bc = [hangulclocksaverView bccolor:hour];
    NSColor *bd = [hangulclocksaverView bdcolor:hour];
    NSColor *be = [hangulclocksaverView becolor:hour];
    NSColor *bf = [hangulclocksaverView bfcolor:hour];
    
    NSColor *ca = [hangulclocksaverView cacolor:hour];
    NSColor *cb = [hangulclocksaverView cbcolor:hour];
    NSColor *cc = [hangulclocksaverView cccolor:hour];
    NSColor *cd = [hangulclocksaverView cdcolor:hour];
    NSColor *ce = [hangulclocksaverView cecolor:hour];
    NSColor *cf = [hangulclocksaverView cfcolor:hour];
    
    NSColor *da = [hangulclocksaverView dacolor:min];
    NSColor *db = [hangulclocksaverView dbcolor:min];
    NSColor *dc = [hangulclocksaverView dccolor:min];
    NSColor *dd = [hangulclocksaverView ddcolor:min];
    NSColor *de = [hangulclocksaverView decolor:min];
    NSColor *df = [hangulclocksaverView dfcolor:min];
    
    NSColor *ea = [hangulclocksaverView eacolor:min];
    NSColor *eb = [hangulclocksaverView ebcolor:min];
    NSColor *ec = [hangulclocksaverView eccolor:min];
    NSColor *ed = [hangulclocksaverView edcolor:min];
    NSColor *ee = [hangulclocksaverView eecolor:min];
    NSColor *ef = [hangulclocksaverView efcolor:min];
    
    NSColor *fa = [hangulclocksaverView facolor:min];
    NSColor *fb = [hangulclocksaverView fbcolor:min];
    NSColor *fc = [hangulclocksaverView fccolor:min];
    NSColor *fd = [hangulclocksaverView fdcolor:min];
    NSColor *fe = [hangulclocksaverView fecolor:min];
    NSColor *ff = [hangulclocksaverView ffcolor:min];
    
    NSColor *sentence = [hangulclocksaverView sentence];
    
    NSColor *color = [hangulclocksaverView backgorund];
    [color set];
    NSRectFill(rect);
    
   /* static NSPoint rtp[] = { 640,640,    630,640,    630,565,    640,565};
    NSBezierPath* rtpath = [NSBezierPath bezierPath];
    [rtpath moveToPoint:rtp[0]];
    [rtpath lineToPoint:rtp[1]];
    [rtpath lineToPoint:rtp[2]];
    [rtpath lineToPoint:rtp[3]];
    [rtpath closePath];
    [[NSColor whiteColor] set];
    [rtpath fill];
    
    static NSPoint rlp[] = { 640,650,    555,650,    555,640,    640,640};
    NSBezierPath* rlpath = [NSBezierPath bezierPath];
    [rlpath moveToPoint:rlp[0]];
    [rlpath lineToPoint:rlp[1]];
    [rlpath lineToPoint:rlp[2]];
    [rlpath lineToPoint:rlp[3]];
    [rlpath closePath];
    [[NSColor whiteColor] set];
    [rlpath fill];
    
    static NSPoint ldp[] = { 290,380,    280,380,    280,295,    290,295};
    NSBezierPath* ldpath = [NSBezierPath bezierPath];
    [ldpath moveToPoint:ldp[0]];
    [ldpath lineToPoint:ldp[1]];
    [ldpath lineToPoint:ldp[2]];
    [ldpath lineToPoint:ldp[3]];
    [ldpath closePath];
    [[NSColor whiteColor] set];
    [ldpath fill];
    
    static NSPoint rdp[] = { 370,305,    290,305,    290,295,    370,295};
    NSBezierPath* rdpath = [NSBezierPath bezierPath];
    [rdpath moveToPoint:rdp[0]];
    [rdpath lineToPoint:rdp[1]];
    [rdpath lineToPoint:rdp[2]];
    [rdpath lineToPoint:rdp[3]];
    [rdpath closePath];
    [[NSColor whiteColor] set];
    [rdpath fill];*/
    
    [@"영메이커 클럽 2018" drawAtPoint:NSMakePoint((self.frame.size.width/2 + 100), (self.frame.size.height/2)) withAttributes:@{NSForegroundColorAttributeName:sentence,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:45.0]}];
    
    int a = -400;
    int b = -350;
    int c = -300;
    int d = -250;
    int e = -200;
    int f = -150;
    
    [@"한" drawAtPoint:NSMakePoint((self.frame.size.width/2 + a), (self.frame.size.height/2 + 125)) withAttributes:@{NSForegroundColorAttributeName:aa,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"두" drawAtPoint:NSMakePoint((self.frame.size.width/2 + b), (self.frame.size.height/2 + 125)) withAttributes:@{NSForegroundColorAttributeName:ab,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"세" drawAtPoint:NSMakePoint((self.frame.size.width/2 + c), (self.frame.size.height/2 + 125)) withAttributes:@{NSForegroundColorAttributeName:ac,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"네" drawAtPoint:NSMakePoint((self.frame.size.width/2 + d), (self.frame.size.height/2 + 125)) withAttributes:@{NSForegroundColorAttributeName:ad,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"다" drawAtPoint:NSMakePoint((self.frame.size.width/2 + e), (self.frame.size.height/2 + 125)) withAttributes:@{NSForegroundColorAttributeName:ae,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"섯" drawAtPoint:NSMakePoint((self.frame.size.width/2 + f), (self.frame.size.height/2 + 125)) withAttributes:@{NSForegroundColorAttributeName:af,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    
    
    [@"여" drawAtPoint:NSMakePoint((self.frame.size.width/2 + a), (self.frame.size.height/2 + 75)) withAttributes:@{NSForegroundColorAttributeName:ba,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"섯" drawAtPoint:NSMakePoint((self.frame.size.width/2 + b), (self.frame.size.height/2 + 75)) withAttributes:@{NSForegroundColorAttributeName:bb,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"일" drawAtPoint:NSMakePoint((self.frame.size.width/2 + c), (self.frame.size.height/2 + 75)) withAttributes:@{NSForegroundColorAttributeName:bc,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"곱" drawAtPoint:NSMakePoint((self.frame.size.width/2 + d), (self.frame.size.height/2 + 75)) withAttributes:@{NSForegroundColorAttributeName:bd,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"여" drawAtPoint:NSMakePoint((self.frame.size.width/2 + e), (self.frame.size.height/2 + 75)) withAttributes:@{NSForegroundColorAttributeName:be,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"덟" drawAtPoint:NSMakePoint((self.frame.size.width/2 + f), (self.frame.size.height/2 + 75)) withAttributes:@{NSForegroundColorAttributeName:bf,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    
    
    [@"아" drawAtPoint:NSMakePoint((self.frame.size.width/2 + a), (self.frame.size.height/2 + 25)) withAttributes:@{NSForegroundColorAttributeName:ca,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"홉" drawAtPoint:NSMakePoint((self.frame.size.width/2 + b), (self.frame.size.height/2 + 25)) withAttributes:@{NSForegroundColorAttributeName:cb,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"열" drawAtPoint:NSMakePoint((self.frame.size.width/2 + c), (self.frame.size.height/2 + 25)) withAttributes:@{NSForegroundColorAttributeName:cc,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"한" drawAtPoint:NSMakePoint((self.frame.size.width/2 + d), (self.frame.size.height/2 + 25)) withAttributes:@{NSForegroundColorAttributeName:cd,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"두" drawAtPoint:NSMakePoint((self.frame.size.width/2 + e), (self.frame.size.height/2 + 25)) withAttributes:@{NSForegroundColorAttributeName:ce,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"시" drawAtPoint:NSMakePoint((self.frame.size.width/2 + f), (self.frame.size.height/2 + 25)) withAttributes:@{NSForegroundColorAttributeName:cf,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    
    
    [@"자" drawAtPoint:NSMakePoint((self.frame.size.width/2 + a), (self.frame.size.height/2 - 25)) withAttributes:@{NSForegroundColorAttributeName:da,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"이" drawAtPoint:NSMakePoint((self.frame.size.width/2 + b), (self.frame.size.height/2 - 25)) withAttributes:@{NSForegroundColorAttributeName:db,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"삼" drawAtPoint:NSMakePoint((self.frame.size.width/2 + c), (self.frame.size.height/2 - 25)) withAttributes:@{NSForegroundColorAttributeName:dc,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"사" drawAtPoint:NSMakePoint((self.frame.size.width/2 + d), (self.frame.size.height/2 - 25)) withAttributes:@{NSForegroundColorAttributeName:dd,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"오" drawAtPoint:NSMakePoint((self.frame.size.width/2 + e), (self.frame.size.height/2 - 25)) withAttributes:@{NSForegroundColorAttributeName:de,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"십" drawAtPoint:NSMakePoint((self.frame.size.width/2 + f), (self.frame.size.height/2 - 25)) withAttributes:@{NSForegroundColorAttributeName:df,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    
    
    [@"정" drawAtPoint:NSMakePoint((self.frame.size.width/2 + a), (self.frame.size.height/2 - 75)) withAttributes:@{NSForegroundColorAttributeName:ea,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"일" drawAtPoint:NSMakePoint((self.frame.size.width/2 + b), (self.frame.size.height/2 - 75)) withAttributes:@{NSForegroundColorAttributeName:eb,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"이" drawAtPoint:NSMakePoint((self.frame.size.width/2 + c), (self.frame.size.height/2 - 75)) withAttributes:@{NSForegroundColorAttributeName:ec,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"삼" drawAtPoint:NSMakePoint((self.frame.size.width/2 + d), (self.frame.size.height/2 - 75)) withAttributes:@{NSForegroundColorAttributeName:ed,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"사" drawAtPoint:NSMakePoint((self.frame.size.width/2 + e), (self.frame.size.height/2 - 75)) withAttributes:@{NSForegroundColorAttributeName:ee,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"육" drawAtPoint:NSMakePoint((self.frame.size.width/2 + f), (self.frame.size.height/2 - 75)) withAttributes:@{NSForegroundColorAttributeName:ef,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    
    
    [@"오" drawAtPoint:NSMakePoint((self.frame.size.width/2 + a), (self.frame.size.height/2 - 125)) withAttributes:@{NSForegroundColorAttributeName:fa,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"오" drawAtPoint:NSMakePoint((self.frame.size.width/2 + b), (self.frame.size.height/2 - 125)) withAttributes:@{NSForegroundColorAttributeName:fb,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"칠" drawAtPoint:NSMakePoint((self.frame.size.width/2 + c), (self.frame.size.height/2 - 125)) withAttributes:@{NSForegroundColorAttributeName:fc,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"팔" drawAtPoint:NSMakePoint((self.frame.size.width/2 + d), (self.frame.size.height/2 - 125)) withAttributes:@{NSForegroundColorAttributeName:fd,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"구" drawAtPoint:NSMakePoint((self.frame.size.width/2 + e), (self.frame.size.height/2 - 125)) withAttributes:@{NSForegroundColorAttributeName:fe,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
    [@"분" drawAtPoint:NSMakePoint((self.frame.size.width/2 + f), (self.frame.size.height/2 - 125)) withAttributes:@{NSForegroundColorAttributeName:ff,NSFontAttributeName:[NSFont fontWithName:@"Helvetica Neue Light"     size:40.0]}];
    
}

+ (NSColor*)backgorund
{
    NSColor* result = nil;
    
    unsigned char redByte, greenByte, blueByte;
    
    redByte = 0;
    greenByte = 0;
    blueByte = 0; // masks off high bits
    
    result = [NSColor
              colorWithCalibratedRed:(CGFloat)redByte / 0xff
              green:(CGFloat)greenByte / 0xff
              blue:(CGFloat)blueByte / 0xff
              alpha:1.0];
    return result;
}

+ (NSColor*)sentence
{
    NSColor* result = nil;
    
    unsigned char redByte, greenByte, blueByte;
    
    redByte = 255;
    greenByte = 255;
    blueByte = 255; // masks off high bits
    
    result = [NSColor
              colorWithCalibratedRed:(CGFloat)redByte / 0xff
              green:(CGFloat)greenByte / 0xff
              blue:(CGFloat)blueByte / 0xff
              alpha:1.0];
    return result;
}

//한/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)aacolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if(hour == 1 || hour == 13){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//두///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)abcolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if(hour == 2 || hour == 14){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//세///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)accolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if(hour == 3 || hour == 15){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//네///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)adcolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if(hour == 4 || hour == 16){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//다///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)aecolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if(hour == 5 || hour == 17){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//섯///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)afcolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if(hour == 5 || hour == 17){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}



//여/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)bacolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if(hour == 6 || hour == 18){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//섯///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)bbcolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if(hour == 6 || hour == 18){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//일///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)bccolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if(hour == 7 || hour == 19){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//곱///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)bdcolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if(hour == 7 || hour == 19){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//여///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)becolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if(hour == 8 || hour == 20){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//덟///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)bfcolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if(hour == 8 || hour == 20){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}



//아/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)cacolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if(hour == 9 || hour == 21){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//홉///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)cbcolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if(hour == 9 || hour == 21){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//열///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)cccolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if((hour >= 10 && hour <= 12)||(hour == 0) || (hour == 22) || (hour == 23)){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//한///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)cdcolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if(hour == 11 || hour == 23){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//두///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)cecolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if(hour == 12 || hour == 0){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//시///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)cfcolor:(NSString*)inColorString
{
    NSColor* result = nil;
    
    result = (NSColor.whiteColor);
    return result;
}



//자/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)dacolor:(NSString*)inColorString
{
    NSColor* result = nil;
    
    result = (NSColor.grayColor);
    
    return result;
}

//이///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)dbcolor:(NSString*)inColorString
{
    int min = [inColorString intValue];
    NSColor* result = nil;
    if(min >= 20 && min <= 29){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//삼///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)dccolor:(NSString*)inColorString
{
    int min = [inColorString intValue];
    NSColor* result = nil;
    if(min >= 30 && min <= 39){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//사///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)ddcolor:(NSString*)inColorString
{
    int min = [inColorString intValue];
    NSColor* result = nil;
    if(min >= 40 && min <= 49){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//오///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)decolor:(NSString*)inColorString
{
    int min = [inColorString intValue];
    NSColor* result = nil;
    if(min >= 50 && min <= 59){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//십///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)dfcolor:(NSString*)inColorString
{
    int min = [inColorString intValue];
    NSColor* result = nil;
    if(min >= 10 && min <= 59){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}



//정/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)eacolor:(NSString*)inColorString
{
    NSColor* result = nil;
    result = (NSColor.grayColor);
    
    return result;
}

//일///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)ebcolor:(NSString*)inColorString
{
    int min = [inColorString intValue];
    NSColor* result = nil;
    if(min == 1 || min == 11 || min == 21 || min == 31 || min == 41 || min == 51){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//이///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)eccolor:(NSString*)inColorString
{
    int min = [inColorString intValue];
    NSColor* result = nil;
    if(min == 2 || min == 12 || min == 22 || min == 32 || min == 42 || min == 52){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//삼///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)edcolor:(NSString*)inColorString
{
    int min = [inColorString intValue];
    NSColor* result = nil;
    if(min == 3 || min == 13 || min == 23 || min == 33 || min == 43 || min == 53){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//사///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)eecolor:(NSString*)inColorString
{
    int min = [inColorString intValue];
    NSColor* result = nil;
    if(min == 4 || min == 14 || min == 24 || min == 34 || min == 44 || min == 54){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//육///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)efcolor:(NSString*)inColorString
{
    int min = [inColorString intValue];
    NSColor* result = nil;
    if(min == 6 || min == 16 || min == 26 || min == 36 || min == 46 || min == 56){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}



//오/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)facolor:(NSString*)inColorString
{
    int hour = [inColorString intValue];
    NSColor* result = nil;
    if(hour == 12){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//오///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)fbcolor:(NSString*)inColorString
{
    int min = [inColorString intValue];
    NSColor* result = nil;
    if(min == 5 || min == 15 || min == 25 || min == 35 || min == 45 || min == 55){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//칠///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)fccolor:(NSString*)inColorString
{
    int min = [inColorString intValue];
    NSColor* result = nil;
    if(min == 7 || min == 17 || min == 27 || min == 37 || min == 47 || min == 57){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//팔///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)fdcolor:(NSString*)inColorString
{
    int min = [inColorString intValue];
    NSColor* result = nil;
    if(min == 8 || min == 18 || min == 28 || min == 38 || min == 48 || min == 58){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//구///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)fecolor:(NSString*)inColorString
{
    int min = [inColorString intValue];
    NSColor* result = nil;
    if(min == 9 || min == 19 || min == 29 || min == 39 || min == 49 || min == 59){
        result = (NSColor.whiteColor);
    }
    else{
        result = (NSColor.grayColor);
    }
    return result;
}

//분///////////////////////////////////////////////////////////////////////////////////
+ (NSColor*)ffcolor:(NSString*)inColorString
{
    int min = [inColorString intValue];
    NSColor* result = nil;
    if(min < 1){
        result = (NSColor.grayColor);
    }
    else{
        result = (NSColor.whiteColor);
    }
    return result;
}


- (void)animateOneFrame
{
    [self setNeedsDisplay:YES];
}

- (BOOL)hasConfigureSheet
{
    return YES;
}

- (NSWindow*)configureSheet
{
    if (optionsWindowController == nil) {
        optionsWindowController = [[MDScreenSaverOptionsWindowController alloc]
                                   initWithScreenSaverView:self];
    }
    return optionsWindowController.window;
}
@end
