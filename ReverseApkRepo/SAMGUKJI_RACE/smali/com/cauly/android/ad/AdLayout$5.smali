.class Lcom/cauly/android/ad/AdLayout$5;
.super Ljava/lang/Thread;
.source "AdLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cauly/android/ad/AdLayout;->clickedAD()V
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
    iput-object p1, p0, Lcom/cauly/android/ad/AdLayout$5;->this$0:Lcom/cauly/android/ad/AdLayout;

    .line 656
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 659
    :try_start_0
    new-instance v0, Lcom/cauly/android/ad/AdClickHandler;

    invoke-direct {v0}, Lcom/cauly/android/ad/AdClickHandler;-><init>()V

    .line 660
    .local v0, adClickHandler:Lcom/cauly/android/ad/AdClickHandler;
    iget-object v2, p0, Lcom/cauly/android/ad/AdLayout$5;->this$0:Lcom/cauly/android/ad/AdLayout;

    #getter for: Lcom/cauly/android/ad/AdLayout;->adCommon:Lcom/cauly/android/ad/AdCommon;
    invoke-static {v2}, Lcom/cauly/android/ad/AdLayout;->access$3(Lcom/cauly/android/ad/AdLayout;)Lcom/cauly/android/ad/AdCommon;

    move-result-object v2

    iget-object v3, p0, Lcom/cauly/android/ad/AdLayout$5;->this$0:Lcom/cauly/android/ad/AdLayout;

    #getter for: Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;
    invoke-static {v3}, Lcom/cauly/android/ad/AdLayout;->access$0(Lcom/cauly/android/ad/AdLayout;)Lcom/cauly/android/ad/AdData;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/cauly/android/ad/AdClickHandler;->sendClickData(Lcom/cauly/android/ad/AdCommon;Lcom/cauly/android/ad/AdData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .end local v0           #adClickHandler:Lcom/cauly/android/ad/AdClickHandler;
    :goto_0
    return-void

    .line 662
    :catch_0
    move-exception v1

    .line 663
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "Cauly Ads"

    const-string v3, "click AD"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
