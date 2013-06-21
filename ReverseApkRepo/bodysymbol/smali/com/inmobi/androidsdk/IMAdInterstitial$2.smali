.class Lcom/inmobi/androidsdk/IMAdInterstitial$2;
.super Landroid/os/Handler;
.source "IMAdInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/IMAdInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMAdInterstitial;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$2;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    .line 429
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 433
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 454
    :goto_0
    return-void

    .line 436
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$2;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->READY:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdInterstitial$State;)V

    .line 437
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$2;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    const/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_0

    .line 444
    :pswitch_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$2;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->INIT:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdInterstitial$State;)V

    .line 445
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$2;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    const/16 v1, 0x67

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 447
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$2;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    invoke-static {v0, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    goto :goto_0

    .line 433
    :pswitch_data_0
    .packed-switch 0x12f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
