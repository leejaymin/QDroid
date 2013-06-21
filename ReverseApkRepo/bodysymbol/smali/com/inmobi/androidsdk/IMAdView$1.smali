.class Lcom/inmobi/androidsdk/IMAdView$1;
.super Landroid/os/Handler;
.source "IMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/IMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMAdView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    .line 855
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 858
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 861
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 865
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->b(Lcom/inmobi/androidsdk/IMAdView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 866
    const-string v0, "InMobiAndroidSDK_3.5.2"

    .line 867
    const-string v1, "Activity is not in the foreground. New ad will not be loaded."

    .line 866
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :goto_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, v4, v0, v1}, Lcom/inmobi/androidsdk/IMAdView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdView;->loadNewAd()V

    goto :goto_1

    .line 878
    :pswitch_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->c(Lcom/inmobi/androidsdk/IMAdView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 879
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->d(Lcom/inmobi/androidsdk/IMAdView;)V

    .line 880
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;Z)V

    .line 887
    :goto_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;J)V

    .line 888
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0, v4, v3}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_0

    .line 881
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->e(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/IMAdView$AnimationType;->ANIMATION_OFF:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    if-ne v0, v1, :cond_3

    .line 882
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->d(Lcom/inmobi/androidsdk/IMAdView;)V

    goto :goto_2

    .line 884
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->f(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMAdView;->e(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/a;->a(Lcom/inmobi/androidsdk/IMAdView$AnimationType;)V

    goto :goto_2

    .line 894
    :pswitch_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->b(Lcom/inmobi/androidsdk/IMAdView;Z)V

    goto :goto_0

    .line 898
    :pswitch_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->g(Lcom/inmobi/androidsdk/IMAdView;)V

    goto :goto_0

    .line 902
    :pswitch_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x67

    invoke-static {v0, v1, v3}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto/16 :goto_0

    .line 906
    :pswitch_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x66

    invoke-static {v0, v1, v3}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto/16 :goto_0

    .line 910
    :pswitch_6
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x68

    invoke-static {v0, v1, v3}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto/16 :goto_0

    .line 858
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
