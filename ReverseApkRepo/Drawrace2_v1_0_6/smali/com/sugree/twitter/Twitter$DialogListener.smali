.class public interface abstract Lcom/sugree/twitter/Twitter$DialogListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sugree/twitter/Twitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DialogListener"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onComplete(Landroid/os/Bundle;)V
.end method

.method public abstract onError(Lcom/sugree/twitter/DialogError;)V
.end method

.method public abstract onTwitterError(Lcom/sugree/twitter/TwitterError;)V
.end method
