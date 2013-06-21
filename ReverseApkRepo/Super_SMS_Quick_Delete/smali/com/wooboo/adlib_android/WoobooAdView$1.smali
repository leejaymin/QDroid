.class Lcom/wooboo/adlib_android/WoobooAdView$1;
.super Ljava/lang/Thread;
.source "WoobooAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/WoobooAdView;->requestFreshAd(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wooboo/adlib_android/WoobooAdView;

.field private final synthetic val$h:I

.field private final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/WoobooAdView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    iput p2, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->val$w:I

    iput p3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->val$h:I

    .line 217
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wooboo/adlib_android/WoobooAdView$1;)Lcom/wooboo/adlib_android/WoobooAdView;
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-string v3, "Wooboo SDK"

    .line 220
    :try_start_0
    iget-object v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v3}, Lcom/wooboo/adlib_android/WoobooAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 221
    .local v2, context:Landroid/content/Context;
    invoke-static {v2}, Lcom/wooboo/adlib_android/___;->s(Landroid/content/Context;)Lcom/wooboo/adlib_android/__;

    move-result-object v1

    .line 223
    .local v1, newAd:Lcom/wooboo/adlib_android/__;
    if-eqz v1, :cond_3

    .line 224
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :try_start_1
    iget-object v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;
    invoke-static {v3}, Lcom/wooboo/adlib_android/WoobooAdView;->access$0(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/_;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;
    invoke-static {v3}, Lcom/wooboo/adlib_android/WoobooAdView;->access$0(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wooboo/adlib_android/_;->getAd()Lcom/wooboo/adlib_android/__;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wooboo/adlib_android/__;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    iget-object v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/wooboo/adlib_android/WoobooAdView;->requestingFreshAd:Z

    .line 224
    :goto_0
    monitor-exit p0

    .line 292
    .end local v1           #newAd:Lcom/wooboo/adlib_android/__;
    .end local v2           #context:Landroid/content/Context;
    :goto_1
    return-void

    .line 228
    .restart local v1       #newAd:Lcom/wooboo/adlib_android/__;
    .restart local v2       #context:Landroid/content/Context;
    :cond_0
    iget-object v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;
    invoke-static {v3}, Lcom/wooboo/adlib_android/WoobooAdView;->access$0(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/_;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    move v7, v3

    .line 229
    .local v7, firstAd:Z
    :goto_2
    iget-object v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    .line 230
    #calls: Landroid/widget/RelativeLayout;->getVisibility()I
    invoke-static {v3}, Lcom/wooboo/adlib_android/WoobooAdView;->access$2(Lcom/wooboo/adlib_android/WoobooAdView;)I

    move-result v9

    .line 231
    .local v9, visibility:I
    new-instance v0, Lcom/wooboo/adlib_android/_;

    .line 232
    const/4 v3, 0x0

    iget v4, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->val$w:I

    iget v5, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->val$h:I

    .line 231
    invoke-direct/range {v0 .. v5}, Lcom/wooboo/adlib_android/_;-><init>(Lcom/wooboo/adlib_android/__;Landroid/content/Context;ZII)V

    .line 235
    .local v0, newAdContainer:Lcom/wooboo/adlib_android/_;
    iget-object v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v3}, Lcom/wooboo/adlib_android/WoobooAdView;->getBackgroundColor()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wooboo/adlib_android/_;->setBackgroundColor(I)V

    .line 236
    iget-object v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v3}, Lcom/wooboo/adlib_android/WoobooAdView;->getTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wooboo/adlib_android/_;->setTextColor(I)V

    .line 237
    invoke-virtual {v0, v9}, Lcom/wooboo/adlib_android/_;->setVisibility(I)V

    .line 238
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->val$w:I

    iget v4, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->val$h:I

    invoke-direct {v8, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 240
    .local v8, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xe

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 241
    invoke-virtual {v0, v8}, Lcom/wooboo/adlib_android/_;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView;->listener:Lcom/wooboo/adlib_android/WoobooAdView$ER;
    invoke-static {v3}, Lcom/wooboo/adlib_android/WoobooAdView;->access$3(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/WoobooAdView$ER;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 244
    :try_start_2
    iget-object v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView;->listener:Lcom/wooboo/adlib_android/WoobooAdView$ER;
    invoke-static {v3}, Lcom/wooboo/adlib_android/WoobooAdView;->access$3(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/WoobooAdView$ER;

    move-result-object v3

    invoke-interface {v3}, Lcom/wooboo/adlib_android/WoobooAdView$ER;->onNewAd()V

    .line 245
    iget-object v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView;->listener:Lcom/wooboo/adlib_android/WoobooAdView$ER;
    invoke-static {v3}, Lcom/wooboo/adlib_android/WoobooAdView;->access$3(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/WoobooAdView$ER;

    move-result-object v3

    .line 246
    iget-object v4, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-interface {v3, v4}, Lcom/wooboo/adlib_android/WoobooAdView$ER;->onReceiveAd(Lcom/wooboo/adlib_android/WoobooAdView;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 252
    :cond_1
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/wooboo/adlib_android/WoobooAdView;->access$4()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/wooboo/adlib_android/WoobooAdView$1$1;

    invoke-direct {v4, p0, v0, v9, v7}, Lcom/wooboo/adlib_android/WoobooAdView$1$1;-><init>(Lcom/wooboo/adlib_android/WoobooAdView$1;Lcom/wooboo/adlib_android/_;IZ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 224
    .end local v0           #newAdContainer:Lcom/wooboo/adlib_android/_;
    .end local v7           #firstAd:Z
    .end local v8           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9           #visibility:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 289
    .end local v1           #newAd:Lcom/wooboo/adlib_android/__;
    .end local v2           #context:Landroid/content/Context;
    :catch_0
    move-exception v3

    move-object v6, v3

    .line 290
    .local v6, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    iput-boolean v10, v3, Lcom/wooboo/adlib_android/WoobooAdView;->requestingFreshAd:Z

    goto :goto_1

    .end local v6           #e:Ljava/lang/Exception;
    .restart local v1       #newAd:Lcom/wooboo/adlib_android/__;
    .restart local v2       #context:Landroid/content/Context;
    :cond_2
    move v7, v10

    .line 228
    goto :goto_2

    .line 247
    .restart local v0       #newAdContainer:Lcom/wooboo/adlib_android/_;
    .restart local v7       #firstAd:Z
    .restart local v8       #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v9       #visibility:I
    :catch_1
    move-exception v3

    move-object v6, v3

    .line 248
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v3, "Wooboo SDK"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 278
    .end local v0           #newAdContainer:Lcom/wooboo/adlib_android/_;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #firstAd:Z
    .end local v8           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9           #visibility:I
    :cond_3
    :try_start_6
    iget-object v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView;->listener:Lcom/wooboo/adlib_android/WoobooAdView$ER;
    invoke-static {v3}, Lcom/wooboo/adlib_android/WoobooAdView;->access$3(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/WoobooAdView$ER;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v3

    if-eqz v3, :cond_4

    .line 280
    :try_start_7
    iget-object v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView;->listener:Lcom/wooboo/adlib_android/WoobooAdView$ER;
    invoke-static {v3}, Lcom/wooboo/adlib_android/WoobooAdView;->access$3(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/WoobooAdView$ER;

    move-result-object v3

    .line 281
    iget-object v4, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-interface {v3, v4}, Lcom/wooboo/adlib_android/WoobooAdView$ER;->onFailedToReceiveAd(Lcom/wooboo/adlib_android/WoobooAdView;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 287
    :cond_4
    :goto_4
    :try_start_8
    iget-object v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/wooboo/adlib_android/WoobooAdView;->requestingFreshAd:Z

    goto/16 :goto_1

    .line 282
    :catch_2
    move-exception v3

    move-object v6, v3

    .line 283
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v3, "Wooboo SDK"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_4
.end method
