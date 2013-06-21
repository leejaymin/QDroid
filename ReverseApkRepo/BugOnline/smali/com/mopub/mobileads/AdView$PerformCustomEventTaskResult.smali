.class Lcom/mopub/mobileads/AdView$PerformCustomEventTaskResult;
.super Lcom/mopub/mobileads/AdView$LoadUrlTaskResult;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerformCustomEventTaskResult"
.end annotation


# instance fields
.field protected mHeader:Lorg/apache/http/Header;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/AdView;Lorg/apache/http/Header;)V
    .locals 0
    .parameter "adView"
    .parameter "header"

    .prologue
    .line 663
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdView$LoadUrlTaskResult;-><init>(Lcom/mopub/mobileads/AdView;)V

    .line 664
    iput-object p2, p0, Lcom/mopub/mobileads/AdView$PerformCustomEventTaskResult;->mHeader:Lorg/apache/http/Header;

    .line 665
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/AdView$PerformCustomEventTaskResult;->mHeader:Lorg/apache/http/Header;

    .line 702
    return-void
.end method

.method public execute()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 668
    iget-object v7, p0, Lcom/mopub/mobileads/AdView$PerformCustomEventTaskResult;->mWeakAdView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdView;

    .line 669
    .local v0, adView:Lcom/mopub/mobileads/AdView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->isDestroyed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    #setter for: Lcom/mopub/mobileads/AdView;->mIsLoading:Z
    invoke-static {v0, v8}, Lcom/mopub/mobileads/AdView;->access$1202(Lcom/mopub/mobileads/AdView;Z)Z

    .line 672
    iget-object v5, v0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 674
    .local v5, mpv:Lcom/mopub/mobileads/MoPubView;
    iget-object v7, p0, Lcom/mopub/mobileads/AdView$PerformCustomEventTaskResult;->mHeader:Lorg/apache/http/Header;

    if-nez v7, :cond_2

    .line 675
    const-string v7, "MoPub"

    const-string v8, "Couldn\'t call custom method because the server did not specify one."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {v5}, Lcom/mopub/mobileads/MoPubView;->adFailed()V

    goto :goto_0

    .line 680
    :cond_2
    iget-object v7, p0, Lcom/mopub/mobileads/AdView$PerformCustomEventTaskResult;->mHeader:Lorg/apache/http/Header;

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 681
    .local v4, methodName:Ljava/lang/String;
    const-string v7, "MoPub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trying to call method named "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {v5}, Lcom/mopub/mobileads/MoPubView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 687
    .local v6, userActivity:Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 688
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lcom/mopub/mobileads/MoPubView;

    aput-object v9, v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 689
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 690
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 691
    .local v2, e:Ljava/lang/NoSuchMethodException;
    const-string v7, "MoPub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t perform custom method named "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(MoPubView view) because your activity class has no such method"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 694
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 695
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "MoPub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t perform custom method named "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
