.class public Lcom/addthis/core/sharer/ATSharerFactory;
.super Ljava/lang/Object;
.source "ATSharerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ATSharerFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharer(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)Lcom/addthis/core/sharer/ATSharer;
    .locals 4
    .parameter "service"
    .parameter "item"
    .parameter "shareActivity"

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, sharer:Lcom/addthis/core/sharer/ATSharer;
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/addthis/core/Config;->getAddThisPubId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/addthis/core/Config;->getAddThisPubId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    :cond_0
    const-string v1, "Please provide the publisher id in Config.java for the proper working of the AddThis SDK"

    invoke-static {v1, p2}, Lcom/addthis/utils/ATUtil;->showNotificationToast(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/addthis/models/ATShareItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 37
    invoke-virtual {p0}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/addthis/utils/ATUtil;->doesSupportImageSharing(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 38
    invoke-virtual {p0}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mailto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    new-instance v0, Lcom/addthis/core/sharer/ATNativeEmail;

    .end local v0           #sharer:Lcom/addthis/core/sharer/ATSharer;
    invoke-direct {v0, p0, p1, p2}, Lcom/addthis/core/sharer/ATNativeEmail;-><init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V

    .line 40
    .restart local v0       #sharer:Lcom/addthis/core/sharer/ATSharer;
    :cond_2
    invoke-virtual {p0}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "facebook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    new-instance v0, Lcom/addthis/core/sharer/ATFacebook;

    .end local v0           #sharer:Lcom/addthis/core/sharer/ATSharer;
    invoke-direct {v0, p0, p1, p2}, Lcom/addthis/core/sharer/ATFacebook;-><init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V

    .line 42
    .restart local v0       #sharer:Lcom/addthis/core/sharer/ATSharer;
    :cond_3
    invoke-virtual {p0}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "twitter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 43
    new-instance v0, Lcom/addthis/core/sharer/ATTwitter;

    .end local v0           #sharer:Lcom/addthis/core/sharer/ATSharer;
    invoke-direct {v0, p0, p1, p2}, Lcom/addthis/core/sharer/ATTwitter;-><init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V

    .line 44
    .restart local v0       #sharer:Lcom/addthis/core/sharer/ATSharer;
    :cond_4
    invoke-virtual {p0}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tumblr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 45
    new-instance v0, Lcom/addthis/core/sharer/ATTumblr;

    .end local v0           #sharer:Lcom/addthis/core/sharer/ATSharer;
    invoke-direct {v0, p0, p1, p2}, Lcom/addthis/core/sharer/ATTumblr;-><init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V

    .line 66
    .restart local v0       #sharer:Lcom/addthis/core/sharer/ATSharer;
    :cond_5
    :goto_0
    return-object v0

    .line 49
    :cond_6
    invoke-virtual {p0}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/addthis/utils/ATUtil;->isNonOExchange(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 50
    const-string v1, "ATSharerFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inside sharer creator for"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "facebook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 52
    new-instance v0, Lcom/addthis/core/sharer/ATFacebook;

    .end local v0           #sharer:Lcom/addthis/core/sharer/ATSharer;
    invoke-direct {v0, p0, p1, p2}, Lcom/addthis/core/sharer/ATFacebook;-><init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V

    .line 53
    .restart local v0       #sharer:Lcom/addthis/core/sharer/ATSharer;
    :cond_7
    invoke-virtual {p0}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "twitter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 54
    new-instance v0, Lcom/addthis/core/sharer/ATTwitter;

    .end local v0           #sharer:Lcom/addthis/core/sharer/ATSharer;
    invoke-direct {v0, p0, p1, p2}, Lcom/addthis/core/sharer/ATTwitter;-><init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V

    .line 55
    .restart local v0       #sharer:Lcom/addthis/core/sharer/ATSharer;
    :cond_8
    invoke-virtual {p0}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mailto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 56
    new-instance v0, Lcom/addthis/core/sharer/ATNativeEmail;

    .end local v0           #sharer:Lcom/addthis/core/sharer/ATSharer;
    invoke-direct {v0, p0, p1, p2}, Lcom/addthis/core/sharer/ATNativeEmail;-><init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V

    .line 57
    .restart local v0       #sharer:Lcom/addthis/core/sharer/ATSharer;
    :cond_9
    invoke-virtual {p0}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tumblr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/addthis/models/ATShareItem;->doesContainBitmapImage()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 58
    new-instance v0, Lcom/addthis/core/sharer/ATTumblr;

    .end local v0           #sharer:Lcom/addthis/core/sharer/ATSharer;
    invoke-direct {v0, p0, p1, p2}, Lcom/addthis/core/sharer/ATTumblr;-><init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V

    .line 60
    .restart local v0       #sharer:Lcom/addthis/core/sharer/ATSharer;
    :cond_a
    invoke-virtual {v0}, Lcom/addthis/core/sharer/ATSharer;->startTrackingCall()V

    goto :goto_0

    .line 63
    :cond_b
    new-instance v0, Lcom/addthis/core/sharer/ATOExchangeSharer;

    .end local v0           #sharer:Lcom/addthis/core/sharer/ATSharer;
    invoke-direct {v0, p0, p1, p2}, Lcom/addthis/core/sharer/ATOExchangeSharer;-><init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V

    .restart local v0       #sharer:Lcom/addthis/core/sharer/ATSharer;
    goto :goto_0
.end method
