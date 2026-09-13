#import <UIKit/UIKit.h>

// Cosmetic-only experiment. It does not change real battery data.
%hook UILabel
- (void)setText:(NSString *)text {
    if ([text isEqualToString:@"70%"] || [text isEqualToString:@"70 %"]) {
        %orig(@"95%");
        return;
    }
    %orig;
}
%end

// Hide the Parts & Service History section when the known SystemHealthUI
// methods are present. This is intentionally conservative.
%hook SystemHealthUI
- (id)getCurrentSystemHealthInfoSpecifiers {
    return @[];
}
%end
