.class Lcom/cauly/android/ad/AdView$1$2;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cauly/android/ad/AdView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cauly/android/ad/AdView$1;


# direct methods
.method constructor <init>(Lcom/cauly/android/ad/AdView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cauly/android/ad/AdView$1$2;->this$1:Lcom/cauly/android/ad/AdView$1;

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 721
    :try_start_0
    iget-object v1, p0, Lcom/cauly/android/ad/AdView$1$2;->this$1:Lcom/cauly/android/ad/AdView$1;

    #getter for: Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;
    invoke-static {v1}, Lcom/cauly/android/ad/AdView$1;->access$0(Lcom/cauly/android/ad/AdView$1;)Lcom/cauly/android/ad/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cauly/android/ad/AdView;->removeAllViews()V

    .line 722
    iget-object v1, p0, Lcom/cauly/android/ad/AdView$1$2;->this$1:Lcom/cauly/android/ad/AdView$1;

    #getter for: Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;
    invoke-static {v1}, Lcom/cauly/android/ad/AdView$1;->access$0(Lcom/cauly/android/ad/AdView$1;)Lcom/cauly/android/ad/AdView;

    move-result-object v1

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cauly/android/ad/AdView;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :goto_0
    return-void

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Cauly Ads"

    .line 726
    const-string v2, "add Layout"

    .line 725
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
