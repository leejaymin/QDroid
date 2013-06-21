.class public Lcom/addthis/utils/ATConstants;
.super Ljava/lang/Object;
.source "ATConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addthis/utils/ATConstants$StatusCode;
    }
.end annotation


# static fields
.field public static final EMAILAPP:Ljava/lang/String; = "mailto"

.field public static final FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final HTTP_STATUS_OK:I = 0xc8

.field public static final INTENT_DID_CHANGE_FAV_TABLE:Ljava/lang/String; = "com.addthis.favtable.intent"

.field public static final PREF_FIRST_RUN:Ljava/lang/String; = "firstRun"

.field public static final PREF_LAST_UPDATE:Ljava/lang/String; = "lastUpdate"

.field public static final SERVICE_CODE:Ljava/lang/String; = "code"

.field public static final SERVICE_NAME:Ljava/lang/String; = "name"

.field public static final SHARE_DESC:Ljava/lang/String; = "sharedesc"

.field public static final SHARE_ENDPOINT:Ljava/lang/String; = "http://api.addthis.com/oexchange/0.8/forward/"

.field public static final SHARE_IMAGE:Ljava/lang/String; = "shareimage"

.field public static final SHARE_TITLE:Ljava/lang/String; = "sharetitle"

.field public static final SHARE_URL:Ljava/lang/String; = "shareurl"

.field public static final TRACKING_ENDPOINT:Ljava/lang/String; = "http://api.addthis.com/oexchange/0.8/shared/"

.field public static final TUMBLR:Ljava/lang/String; = "tumblr"

.field public static final TWITTER:Ljava/lang/String; = "twitter"

.field public static final VIEW:Ljava/lang/String; = "view"

.field public static final VIEW_ALL:I = 0x1

.field public static final VIEW_FAV:I = 0x0

.field public static final VIEW_SHARE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
