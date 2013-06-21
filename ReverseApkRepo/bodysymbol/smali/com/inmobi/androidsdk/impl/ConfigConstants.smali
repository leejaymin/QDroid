.class public final Lcom/inmobi/androidsdk/impl/ConfigConstants;
.super Ljava/lang/Object;
.source "ConfigConstants.java"


# static fields
.field public static final MSG_AD_ACTIVE:Ljava/lang/String; = "Interstitial ad is in ACTIVE state. Try again after sometime."

.field public static final MSG_AD_BUSY:Ljava/lang/String; = "New ad will not be shown because the present ad is busy. Eg. Video/audio is playing, etc."

.field public static final MSG_AD_CLICK:Ljava/lang/String; = "Ad click in progress. Your request cannot be processed at this time. Try again later."

.field public static final MSG_AD_DOWNLOAD:Ljava/lang/String; = "Ad download in progress. Your request cannot be processed at this time. Try again later."

.field public static final MSG_AD_FOCUS:Ljava/lang/String; = "Activity is not in the foreground. New ad will not be loaded."

.field public static final MSG_AD_INVENTORY:Ljava/lang/String; = "Ad request successful, but no ad was returned due to lack of ad inventory."

.field public static final MSG_AD_SLOT:Ljava/lang/String; = "Please provide a valid \'adSlot\' attribute in the \'com.inmobi.androidsdk.IMAdView\' tag of layout XML. For example, adSlot=\"yourAddSlot\""

.field public static final MSG_AD_SLOT_2:Ljava/lang/String; = "Cannot load ad because adSlot is negative. Please provide a valid adSlot."

.field public static final MSG_AD_STATE:Ljava/lang/String; = "Current Ad State is neither default nor loading. New ad will not be shown."

.field public static final MSG_APP_ID:Ljava/lang/String; = "Please provide a valid \'appId\' attribute in the \'com.inmobi.androidsdk.IMAdView\' tag of layout XML. For example, appId=\"yourAppId\""

.field public static final MSG_APP_ID_2:Ljava/lang/String; = "Cannot load ad because appId is null. Please provide a valid appId."

.field public static final MSG_CALL_BACK:Ljava/lang/String; = "IMAdView not sending callback because the view is not added to any window."

.field public static final MSG_REFRESH:Ljava/lang/String; = "Ad cannot be refreshed now, as the minimum refresh interval is"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
