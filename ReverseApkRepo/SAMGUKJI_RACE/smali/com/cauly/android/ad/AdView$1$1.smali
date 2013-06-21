.class Lcom/cauly/android/ad/AdView$1$1;
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

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/cauly/android/ad/AdView$1;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cauly/android/ad/AdView$1$1;->this$1:Lcom/cauly/android/ad/AdView$1;

    iput-object p2, p0, Lcom/cauly/android/ad/AdView$1$1;->val$context:Landroid/content/Context;

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 655
    :try_start_0
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cauly/android/ad/AdData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cauly/android/ad/AdData;->getPay_type()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 657
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 658
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/cauly/android/ad/AdView$1$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$1()Lcom/cauly/android/ad/AdCommon;

    move-result-object v3

    iget-object v3, v3, Lcom/cauly/android/ad/AdCommon;->action:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 662
    :try_start_1
    iget-object v2, p0, Lcom/cauly/android/ad/AdView$1$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 668
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/cauly/android/ad/AdView$1$1;->this$1:Lcom/cauly/android/ad/AdView$1;

    #getter for: Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;
    invoke-static {v2}, Lcom/cauly/android/ad/AdView$1;->access$0(Lcom/cauly/android/ad/AdView$1;)Lcom/cauly/android/ad/AdView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cauly/android/ad/AdView;->removeAllViews()V

    .line 669
    iget-object v2, p0, Lcom/cauly/android/ad/AdView$1$1;->this$1:Lcom/cauly/android/ad/AdView$1;

    #getter for: Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;
    invoke-static {v2}, Lcom/cauly/android/ad/AdView$1;->access$0(Lcom/cauly/android/ad/AdView$1;)Lcom/cauly/android/ad/AdView;

    move-result-object v2

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cauly/android/ad/AdView;->addView(Landroid/view/View;)V

    .line 675
    :goto_1
    return-void

    .line 663
    .restart local v1       #i:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 664
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Cauly Ads"

    const-string v3, "Go Main"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 671
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 672
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "Cauly Ads"

    .line 673
    const-string v3, "add Layout"

    .line 672
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
