.class public interface abstract Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;
.super Ljava/lang/Object;
.source "LguIAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/lguiab/LguIAPLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnClientListener"
.end annotation


# virtual methods
.method public abstract lguIABonDlgClick()V
.end method

.method public abstract lguIABonDlgPurchaseCancel()V
.end method

.method public abstract lguIABonError(II)V
.end method

.method public abstract lguIABonItemAuthInfo(Lcom/feelingk/lguiab/vo/ProductItemInfo;)V
.end method

.method public abstract lguIABonItemPurchaseComplete()V
.end method

.method public abstract lguIABonItemQueryComplete()Z
.end method

.method public abstract lguIABonItemUseQuery(Lcom/feelingk/lguiab/vo/UseItemInfo;)V
.end method

.method public abstract lguIABonWholeQuery(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/feelingk/lguiab/vo/ProductItemInfo;",
            ">;)V"
        }
    .end annotation
.end method
