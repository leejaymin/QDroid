.class public interface abstract Lcom/shoutem/twitter/TwitterDialog$DialogListener;
.super Ljava/lang/Object;
.source "TwitterDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shoutem/twitter/TwitterDialog;
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

.method public abstract onError()V
.end method
