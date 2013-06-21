.class Lcom/wooboo/adlib_android/WoobooAdView$2;
.super Ljava/util/TimerTask;
.source "WoobooAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/WoobooAdView;->manageRequestIntervalTimer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wooboo/adlib_android/WoobooAdView;


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/WoobooAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView$2;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    .line 326
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$2;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-static {}, Lcom/wooboo/adlib_android/WoobooAdView;->access$7()I

    move-result v1

    invoke-static {}, Lcom/wooboo/adlib_android/WoobooAdView;->access$8()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/wooboo/adlib_android/WoobooAdView;->requestFreshAd(II)V

    .line 329
    return-void
.end method
