
#import <Foundation/Foundation.h>

NSString *StringFromGreetData(Byte *data);


//: audio
Byte str_resultAddValue[] = {6, 5, 9, 46, 208, 238, 70, 60, 172, 111, 105, 100, 117, 97, 80};


//: text
Byte str_withValue[] = {62, 4, 6, 146, 108, 52, 116, 120, 101, 116, 32};


//: gift
Byte str_labelValue[] = {67, 4, 6, 160, 193, 203, 116, 102, 105, 103, 154};


//: Sent 
Byte str_addName[] = {71, 5, 8, 66, 134, 184, 22, 191, 32, 116, 110, 101, 83, 48};


//: map
Byte str_valueText[] = {81, 3, 13, 135, 53, 231, 230, 140, 65, 232, 77, 211, 230, 112, 97, 109, 156};


//: [Location]
Byte str_dataText[] = {68, 10, 4, 70, 93, 110, 111, 105, 116, 97, 99, 111, 76, 91, 34};


//: img
Byte str_giftText[] = {63, 3, 3, 103, 109, 105, 146};


//: video
Byte str_willValue[] = {12, 5, 11, 182, 26, 117, 233, 190, 223, 35, 205, 111, 101, 100, 105, 118, 177};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataNameModel.m
//  Talking
//
//   on 2021/9/3.
//  Copyright © 2021 
//

// __M_A_C_R_O__
//: #import "DataNameModel.h"
#import "DataNameModel.h"
//: #import "HerbHarmony/HerbHarmony-Swift.h"
#import "HerbHarmony/HerbHarmony-Swift.h"

//: @implementation DataNameModel
@implementation DataNameModel

//: @end
@end

//: @implementation LikeModel
@implementation LikeModel

//: @end
@end

//: @implementation HypothesisModel
@implementation HypothesisModel

//: + (void)saveIntimatePhoto:(HypothesisModel *)photoModel forMsgID:(NSString *)msgID {
+ (void)stain:(HypothesisModel *)photoModel giftId:(NSString *)msgID {
    //: NSMutableDictionary *dict = [self loadLocalIntimatePhotoDict].mutableCopy;
    NSMutableDictionary *dict = [self userSize].mutableCopy;
    //: NSString *jsonString = [photoModel toJSONString];
    NSString *jsonString = [photoModel toJSONString];
    //: dict[msgID] = jsonString;
    dict[msgID] = jsonString;
    //: NSString *path = [ToDoingReactiveCompatible getIntimatePhotoPath];
    NSString *path = [ToDoingReactiveCompatible withName];
    //: [NSKeyedArchiver archiveRootObject:dict toFile:path];
    [NSKeyedArchiver archiveRootObject:dict toFile:path];
}

//: + (NSMutableDictionary<NSString *, NSString *> *)loadLocalIntimatePhotoDict {
+ (NSMutableDictionary<NSString *, NSString *> *)userSize {
    //: NSString *path = [ToDoingReactiveCompatible getIntimatePhotoPath];
    NSString *path = [ToDoingReactiveCompatible withName];
    //: NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    //: if (dict.allKeys.count > 0) {
    if (dict.allKeys.count > 0) {
        //: return dict;
        return dict;
    }
    //: return [NSMutableDictionary dictionary];
    return [NSMutableDictionary dictionary];
}

//: @end
@end

//: @implementation ValueJsonModel
@implementation ValueJsonModel

//: + (void)saveIntimateVideo:(ValueJsonModel *)videoModel forMsgID:(NSString *)msgID {
+ (void)neighbour:(ValueJsonModel *)videoModel data:(NSString *)msgID {
    //: NSMutableDictionary *dict = [self loadLocalIntimateVideoDict].mutableCopy;
    NSMutableDictionary *dict = [self origin].mutableCopy;
    //: NSString *jsonString = [videoModel toJSONString];
    NSString *jsonString = [videoModel toJSONString];
    //: dict[msgID] = jsonString;
    dict[msgID] = jsonString;
    //: NSString *path = [ToDoingReactiveCompatible getIntimateVideoPath];
    NSString *path = [ToDoingReactiveCompatible hustle];
    //: [NSKeyedArchiver archiveRootObject:dict toFile:path];
    [NSKeyedArchiver archiveRootObject:dict toFile:path];
}

//: + (NSMutableDictionary<NSString *, NSString *> *)loadLocalIntimateVideoDict {
+ (NSMutableDictionary<NSString *, NSString *> *)origin {
    //: NSString *path = [ToDoingReactiveCompatible getIntimateVideoPath];
    NSString *path = [ToDoingReactiveCompatible hustle];
    //: NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    //: if (dict.allKeys.count > 0) {
    if (dict.allKeys.count > 0) {
        //: return dict;
        return dict;
    }
    //: return [NSMutableDictionary dictionary];
    return [NSMutableDictionary dictionary];
}

//: @end
@end

//: @implementation AbTalkingChatMsgCustomSendModel
@implementation TalkingModel

//: @end
@end

//: @implementation CenterUserModel
@implementation CenterUserModel

//: @end
@end

//: @implementation AbTalkingChatMsgToUserModel
@implementation StyleJsonModel

//: @end
@end

//: @implementation AbTalkingChatMsgGiftModel
@implementation ManagerModel

//: @end
@end

//: @implementation PathJsonModel
@implementation PathJsonModel

//: @end
@end


//: @implementation AbTalkingChatMsgQuoteModel
@implementation PathModel

//: - (BOOL)isQuoteMsg{
- (BOOL)of{
    //: if (self && self.msgId && self.msgId.length > 0) {
    if (self && self.msgId && self.msgId.length > 0) {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}
//: - (CGSize)quoteSize:(NSInteger)maxWidth{
- (CGSize)misquote:(NSInteger)maxWidth{
    //: NSInteger height = height;
    NSInteger height = height;

    //: NSDictionary* attributes = @{NSFontAttributeName: [UIFont pingfangRugularFontWithFontSize:12]};
    NSDictionary* attributes = @{NSFontAttributeName: [UIFont unprecedentedWithFontSize:12]};


    //: if ([self.renderType isEqualToString:@"video"] || [self.renderType isEqualToString:@"img"]) {
    if ([self.renderType isEqualToString:StringFromGreetData(str_willValue)] || [self.renderType isEqualToString:StringFromGreetData(str_giftText)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        //: CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;

        //: return CGSizeMake(((5 + nameSize.width + 34) < (maxWidth) ? (5 + nameSize.width + 34) : (maxWidth)) , 31);
        return CGSizeMake(((5 + nameSize.width + 34) < (maxWidth) ? (5 + nameSize.width + 34) : (maxWidth)) , 31);
    }
    //: if ([self.renderType isEqualToString:@"text"]) {
    if ([self.renderType isEqualToString:StringFromGreetData(str_withValue)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: %@",self.sendName,self.renderData.content];
        NSString *str = [NSString stringWithFormat:@"%@: %@",self.sendName,self.renderData.content];
        //: CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;

        //: return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
        return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
    }

    //: if ([self.renderType isEqualToString:@"audio"]) {
    if ([self.renderType isEqualToString:StringFromGreetData(str_resultAddValue)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        //: CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;

        //: return CGSizeMake(((5 + nameSize.width + 48) < (maxWidth) ? (5 + nameSize.width + 48) : (maxWidth)) , 22);
        return CGSizeMake(((5 + nameSize.width + 48) < (maxWidth) ? (5 + nameSize.width + 48) : (maxWidth)) , 22);
    }
    //: if ([self.renderType isEqualToString:@"gift"]) {
    if ([self.renderType isEqualToString:StringFromGreetData(str_labelValue)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: %@%@ x%ld",self.sendName,@"Sent ".localized,self.renderData.giftNameLocal, (long)self.renderData.giftNum];
        NSString *str = [NSString stringWithFormat:@"%@: %@%@ x%ld",self.sendName,StringFromGreetData(str_addName).localized,self.renderData.contextImage, (long)self.renderData.giftNum];
        //: CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        //: return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
        return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
    }
    //: if ([self.renderType isEqualToString:@"map"]) {
    if ([self.renderType isEqualToString:StringFromGreetData(str_valueText)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: %@",self.sendName,@"[Location]".localized];
        NSString *str = [NSString stringWithFormat:@"%@: %@",self.sendName,StringFromGreetData(str_dataText).localized];
        //: CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        //: return CGSizeMake(((maxWidth) < (5 + contentSize.width + 5) ? (maxWidth) : (5 + contentSize.width + 5)) , 14);
        return CGSizeMake(((maxWidth) < (5 + contentSize.width + 5) ? (maxWidth) : (5 + contentSize.width + 5)) , 14);
    }

    //: return CGSizeZero;
    return CGSizeZero;
}

//: @end
@end

//: @implementation AbTalkingChatMsgQuoteDataModel
@implementation ByJsonModel

//: - (NSString *)giftNameLocal{
- (NSString *)contextImage{
    //: NSString *locName;
    NSString *locName;
    //: NSString *sysLangCode = [IconThen getSystemLangCode];
    NSString *sysLangCode = [IconThen beforeNameGift];
    //: if ([sysLangCode isEqualToString:@"ar"]) {
    if ([sysLangCode isEqualToString:@"ar"]) {
        //: locName = self.giftNameI18n[@"ar"];
        locName = self.giftNameI18n[@"ar"];
    //: }else if ([sysLangCode isEqualToString:@"es"]) {
    }else if ([sysLangCode isEqualToString:@"es"]) {
        //: locName = self.giftNameI18n[@"es"];
        locName = self.giftNameI18n[@"es"];
    //: }else if ([sysLangCode isEqualToString:@"pt"]) {
    }else if ([sysLangCode isEqualToString:@"pt"]) {
        //: locName = self.giftNameI18n[@"pt"];
        locName = self.giftNameI18n[@"pt"];
    //: }else{
    }else{
        //: locName = self.giftNameI18n[@"en"];
        locName = self.giftNameI18n[@"en"];
    }
    //: if (locName == nil || locName.length > 0 ) {
    if (locName == nil || locName.length > 0 ) {
        //: locName = self.giftName;
        locName = self.giftName;
    }
    //: return locName;
    return locName;
}

//: @end
@end

//: @implementation TelecastingModel
@implementation TelecastingModel

//: + (void)saveAskForGiftWithMsgID:(NSString *)msgID {
+ (void)priceId:(NSString *)msgID {
    //: @synchronized (self) {
    @synchronized (self) {
        //: NSMutableArray *arr = [self loadAskForGiftArr];
        NSMutableArray *arr = [self info];
        //: [arr addObject:msgID];
        [arr addObject:msgID];
        //: NSString *path = [ToDoingReactiveCompatible getAskForGiftPath];
        NSString *path = [ToDoingReactiveCompatible forPath];
        //: [NSKeyedArchiver archiveRootObject:arr toFile:path];
        [NSKeyedArchiver archiveRootObject:arr toFile:path];
    }
}

//: + (NSMutableArray *)loadAskForGiftArr {
+ (NSMutableArray *)info {
    //: NSString *path = [ToDoingReactiveCompatible getAskForGiftPath];
    NSString *path = [ToDoingReactiveCompatible forPath];
    //: NSMutableArray *arr = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSMutableArray *arr = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    //: if (arr.count > 0) {
    if (arr.count > 0) {
        //: return arr;
        return arr;
    }
    //: return [@[] mutableCopy];
    return [@[] mutableCopy];
}

//: @end
@end

Byte * GreetDataToCache(Byte *data) {
    int managerNetwork = data[0];
    int nipOff = data[1];
    int sumRelation = data[2];
    if (!managerNetwork) return data + sumRelation;
    for (int i = 0; i < nipOff / 2; i++) {
        int begin = sumRelation + i;
        int end = sumRelation + nipOff - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[sumRelation + nipOff] = 0;
    return data + sumRelation;
}

NSString *StringFromGreetData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)GreetDataToCache(data)];
}  
