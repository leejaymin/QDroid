.class public interface abstract Lcom/scoreloop/client/android/ui/component/base/ComponentActivityHooks;
.super Ljava/lang/Object;
.source "ComponentActivityHooks.java"


# virtual methods
.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onRefresh(I)V
.end method

.method public abstract onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract onValueSetDirty(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V
.end method

.method public abstract requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
.end method
