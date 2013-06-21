.class Lcom/cauly/android/ad/AdLayout$1;
.super Ljava/lang/Object;
.source "AdLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cauly/android/ad/AdLayout;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cauly/android/ad/AdLayout;


# direct methods
.method constructor <init>(Lcom/cauly/android/ad/AdLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cauly/android/ad/AdLayout$1;->this$0:Lcom/cauly/android/ad/AdLayout;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 528
    :try_start_0
    const-string v3, "tel:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/cauly/android/ad/AdLayout$1;->this$0:Lcom/cauly/android/ad/AdLayout;

    #getter for: Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;
    invoke-static {v6}, Lcom/cauly/android/ad/AdLayout;->access$0(Lcom/cauly/android/ad/AdLayout;)Lcom/cauly/android/ad/AdData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cauly/android/ad/AdData;->getLink()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 529
    .local v2, url:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 530
    .local v1, i:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 532
    :try_start_1
    iget-object v3, p0, Lcom/cauly/android/ad/AdLayout$1;->this$0:Lcom/cauly/android/ad/AdLayout;

    #getter for: Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/cauly/android/ad/AdLayout;->access$1(Lcom/cauly/android/ad/AdLayout;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 534
    iget-object v3, p0, Lcom/cauly/android/ad/AdLayout$1;->this$0:Lcom/cauly/android/ad/AdLayout;

    #calls: Lcom/cauly/android/ad/AdLayout;->clickedAD()V
    invoke-static {v3}, Lcom/cauly/android/ad/AdLayout;->access$2(Lcom/cauly/android/ad/AdLayout;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 541
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 535
    .restart local v1       #i:Landroid/content/Intent;
    .restart local v2       #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 536
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Cauly Ads"

    const-string v4, "click Default AD CPC"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 538
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #url:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 539
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "Cauly Ads"

    const-string v4, "click alert AD CPC"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
