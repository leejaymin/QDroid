.class Lcom/tapfortap/AdView$RefreshTimerTask;
.super Ljava/util/TimerTask;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapfortap/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapfortap/AdView;


# direct methods
.method private constructor <init>(Lcom/tapfortap/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/tapfortap/AdView$RefreshTimerTask;->this$0:Lcom/tapfortap/AdView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapfortap/AdView;Lcom/tapfortap/AdView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/tapfortap/AdView$RefreshTimerTask;-><init>(Lcom/tapfortap/AdView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/tapfortap/AdView$RefreshTimerTask;->this$0:Lcom/tapfortap/AdView;

    invoke-virtual {v0}, Lcom/tapfortap/AdView;->loadAds()V

    .line 411
    return-void
.end method
