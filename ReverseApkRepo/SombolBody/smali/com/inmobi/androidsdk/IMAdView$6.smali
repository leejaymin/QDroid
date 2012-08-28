.class Lcom/inmobi/androidsdk/IMAdView$6;
.super Ljava/lang/Object;
.source "IMAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/IMAdView;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic d:[I


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMAdView;

.field private final synthetic b:I

.field private final synthetic c:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView$6;->a:Lcom/inmobi/androidsdk/IMAdView;

    iput p2, p0, Lcom/inmobi/androidsdk/IMAdView$6;->b:I

    iput-object p3, p0, Lcom/inmobi/androidsdk/IMAdView$6;->c:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 659
    sget-object v0, Lcom/inmobi/androidsdk/IMAdView$6;->d:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->values()[Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->AD_CLICK_IN_PROGRESS:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->AD_DOWNLOAD_IN_PROGRESS:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->NETWORK_ERROR:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->NO_FILL:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/inmobi/androidsdk/IMAdView$6;->d:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 664
    :try_start_0
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdView$6;->b:I

    packed-switch v0, :pswitch_data_0

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 667
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$6;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->q(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/IMAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$6;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-interface {v0, v1}, Lcom/inmobi/androidsdk/IMAdListener;->onAdRequestCompleted(Lcom/inmobi/androidsdk/IMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 705
    :catch_0
    move-exception v0

    .line 706
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 707
    const-string v1, "InMobiAndroidSDK_3.5.4"

    const-string v2, "Exception giving callback to the publisher"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 671
    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/inmobi/androidsdk/IMAdView$6;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$6;->c:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 689
    :goto_1
    :pswitch_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$6;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->q(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/IMAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$6;->a:Lcom/inmobi/androidsdk/IMAdView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView$6;->c:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdListener;->onAdRequestFailed(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_0

    .line 674
    :pswitch_3
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 675
    const-string v1, "Ad click in progress. Your request cannot be processed at this time. Try again later."

    .line 674
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 679
    :pswitch_4
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 680
    const-string v1, "Ad download in progress. Your request cannot be processed at this time. Try again later."

    .line 679
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 684
    :pswitch_5
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 685
    const-string v1, "Ad request successful, but no ad was returned due to lack of ad inventory."

    .line 684
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 693
    :pswitch_6
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$6;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->q(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/IMAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$6;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-interface {v0, v1}, Lcom/inmobi/androidsdk/IMAdListener;->onDismissAdScreen(Lcom/inmobi/androidsdk/IMAdView;)V

    goto :goto_0

    .line 697
    :pswitch_7
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$6;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->q(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/IMAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$6;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-interface {v0, v1}, Lcom/inmobi/androidsdk/IMAdListener;->onShowAdScreen(Lcom/inmobi/androidsdk/IMAdView;)V

    goto :goto_0

    .line 701
    :pswitch_8
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$6;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->q(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/IMAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$6;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-interface {v0, v1}, Lcom/inmobi/androidsdk/IMAdListener;->onLeaveApplication(Lcom/inmobi/androidsdk/IMAdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 664
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 671
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
