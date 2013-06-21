.class Lcom/tapfortap/AdView$1$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapfortap/AdView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapfortap/AdView$1;


# direct methods
.method constructor <init>(Lcom/tapfortap/AdView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/tapfortap/AdView$1$1;->this$1:Lcom/tapfortap/AdView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tapfortap/AdView$1$1;->this$1:Lcom/tapfortap/AdView$1;

    iget-object v1, v0, Lcom/tapfortap/AdView$1;->this$0:Lcom/tapfortap/AdView;

    iget-object v0, p0, Lcom/tapfortap/AdView$1$1;->this$1:Lcom/tapfortap/AdView$1;

    iget-object v0, v0, Lcom/tapfortap/AdView$1;->this$0:Lcom/tapfortap/AdView;

    #getter for: Lcom/tapfortap/AdView;->appId:Ljava/lang/String;
    invoke-static {v0}, Lcom/tapfortap/AdView;->access$000(Lcom/tapfortap/AdView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapfortap/AdView$1$1;->this$1:Lcom/tapfortap/AdView$1;

    iget-object v0, v0, Lcom/tapfortap/AdView$1;->this$0:Lcom/tapfortap/AdView;

    #getter for: Lcom/tapfortap/AdView;->appId:Ljava/lang/String;
    invoke-static {v0}, Lcom/tapfortap/AdView;->access$000(Lcom/tapfortap/AdView;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    #calls: Lcom/tapfortap/AdView;->loadAdsWithAppId(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/tapfortap/AdView;->access$100(Lcom/tapfortap/AdView;Ljava/lang/String;)V

    .line 89
    return-void

    .line 88
    :cond_0
    invoke-static {}, Lcom/tapfortap/TapForTap;->getDefaultAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
