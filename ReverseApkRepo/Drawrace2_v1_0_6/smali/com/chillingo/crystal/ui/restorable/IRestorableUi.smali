.class public interface abstract Lcom/chillingo/crystal/ui/restorable/IRestorableUi;
.super Ljava/lang/Object;


# virtual methods
.method public abstract attachToView()V
.end method

.method public abstract detachFromView(Z)V
.end method

.method public abstract navigationController()Lcom/chillingo/crystal/NavigationController;
.end method

.method public abstract restoreStateFromBundle(Landroid/os/Bundle;)V
.end method

.method public abstract saveStateToBundle(Landroid/os/Bundle;)V
.end method

.method public abstract ui()Landroid/view/View;
.end method

.method public abstract wantsToSaveState()Z
.end method
