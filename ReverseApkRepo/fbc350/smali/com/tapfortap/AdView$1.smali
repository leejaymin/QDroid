.class Lcom/tapfortap/AdView$1;
.super Ljava/util/TimerTask;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapfortap/AdView;->loadAds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapfortap/AdView;


# direct methods
.method constructor <init>(Lcom/tapfortap/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tapfortap/AdView$1;->this$0:Lcom/tapfortap/AdView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tapfortap/AdView$1;->this$0:Lcom/tapfortap/AdView;

    #getter for: Lcom/tapfortap/AdView;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/tapfortap/AdView;->access$200(Lcom/tapfortap/AdView;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/tapfortap/AdView$1$1;

    invoke-direct {v1, p0}, Lcom/tapfortap/AdView$1$1;-><init>(Lcom/tapfortap/AdView$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method
