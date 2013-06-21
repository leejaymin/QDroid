.class Lcom/tapfortap/AdView$FillAdsTask$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapfortap/AdView$FillAdsTask;->doInBackground([Ljava/util/List;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapfortap/AdView$FillAdsTask;

.field final synthetic val$ads:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tapfortap/AdView$FillAdsTask;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/tapfortap/AdView$FillAdsTask$1;->this$1:Lcom/tapfortap/AdView$FillAdsTask;

    iput-object p2, p0, Lcom/tapfortap/AdView$FillAdsTask$1;->val$ads:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/tapfortap/AdView$FillAdsTask$1;->this$1:Lcom/tapfortap/AdView$FillAdsTask;

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    iget-object v1, p0, Lcom/tapfortap/AdView$FillAdsTask$1;->val$ads:Ljava/util/List;

    #calls: Lcom/tapfortap/AdView;->displayAds(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/tapfortap/AdView;->access$1000(Lcom/tapfortap/AdView;Ljava/util/List;)V

    .line 470
    iget-object v0, p0, Lcom/tapfortap/AdView$FillAdsTask$1;->this$1:Lcom/tapfortap/AdView$FillAdsTask;

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static {v0}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/tapfortap/AdView$FillAdsTask$1;->this$1:Lcom/tapfortap/AdView$FillAdsTask;

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static {v0}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapfortap/AdView$AdViewListener;->didReceiveAd()V

    .line 473
    :cond_0
    return-void
.end method
