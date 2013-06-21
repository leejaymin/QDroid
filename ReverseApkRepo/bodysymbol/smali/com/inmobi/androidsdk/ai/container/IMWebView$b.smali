.class Lcom/inmobi/androidsdk/ai/container/IMWebView$b;
.super Ljava/util/TimerTask;
.source "IMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/ai/container/IMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcom/inmobi/androidsdk/ai/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 519
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$b;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 521
    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$b;->a:I

    .line 522
    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$b;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 526
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$b;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getProgress()I

    move-result v1

    .line 527
    const/16 v0, 0x64

    if-ne v1, v0, :cond_1

    .line 528
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$b;->cancel()Z

    .line 544
    :cond_0
    :goto_0
    iput v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$b;->a:I

    .line 545
    return-void

    .line 530
    :cond_1
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$b;->a:I

    if-ne v0, v1, :cond_0

    .line 531
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$b;->b:I

    .line 532
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$b;->b:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$b;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$b;->cancel()Z

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    const-string v2, "InMobiAndroidSDK_3.5.2"

    .line 537
    const-string v3, "IMWebView-> error in stopLoading"

    .line 536
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
