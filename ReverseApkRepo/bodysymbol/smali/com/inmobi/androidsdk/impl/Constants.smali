.class public final Lcom/inmobi/androidsdk/impl/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/impl/Constants$playerState;
    }
.end annotation


# static fields
.field public static final AD_SERVER_CACHED_LIFE:Ljava/lang/String; = "inmobicachedlife"

.field public static final AD_SERVER_CACHED_URL:Ljava/lang/String; = "inmobicachedserver"

.field public static final AD_SERVER_URL:Ljava/lang/String; = "http://i.w.inmobi.com/showad.asm"

.field public static final AD_TEST_SERVER_URL:Ljava/lang/String; = "http://i.w.sandbox.inmobi.com/showad.asm"

.field public static final APP_TRACKER_URL:Ljava/lang/String; = "http://ma.inmobi.com/downloads/trackerV1"

.field public static final BASE_URL:Ljava/lang/String; = "http://www.inmobi.com"

.field public static final CACHED_AD_SERVER_LIFE:J = 0x2932e00L

.field public static final CACHED_AD_SERVER_TIMESTAMP:Ljava/lang/String; = "inmobi_cached_timestamp"

.field public static DEBUG:Z = false

.field public static final HTTP_SUCCESS_CODE:I = 0xc8

.field public static final LOGGING_TAG:Ljava/lang/String; = "InMobiAndroidSDK_3.5.2"

.field public static final QA_MODE:Z = false

.field public static final QA_SERVER_URL:Ljava/lang/String; = ""

.field public static final SDK_VERSION:Ljava/lang/String; = "3.5.2"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
