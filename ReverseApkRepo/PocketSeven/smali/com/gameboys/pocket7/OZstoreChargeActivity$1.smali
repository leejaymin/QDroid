.class Lcom/gameboys/pocket7/OZstoreChargeActivity$1;
.super Ljava/lang/Object;
.source "OZstoreChargeActivity.java"

# interfaces
.implements Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameboys/pocket7/OZstoreChargeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameboys/pocket7/OZstoreChargeActivity;


# direct methods
.method constructor <init>(Lcom/gameboys/pocket7/OZstoreChargeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/OZstoreChargeActivity;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lguIABonDlgClick()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/OZstoreChargeActivity;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/OZstoreChargeActivity;->finish()V

    .line 151
    return-void
.end method

.method public lguIABonDlgPurchaseCancel()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/OZstoreChargeActivity;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/OZstoreChargeActivity;->finish()V

    .line 142
    return-void
.end method

.method public lguIABonError(II)V
    .locals 0
    .parameter "resultCode"
    .parameter "status"

    .prologue
    .line 120
    return-void
.end method

.method public lguIABonItemAuthInfo(Lcom/feelingk/lguiab/vo/ProductItemInfo;)V
    .locals 1
    .parameter "productItem"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/OZstoreChargeActivity;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/OZstoreChargeActivity;->finish()V

    .line 137
    return-void
.end method

.method public lguIABonItemPurchaseComplete()V
    .locals 3

    .prologue
    .line 108
    const-string v1, "LGU-INAPP"

    const-string v2, "onItemPurchaseComplete!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ADD_PRODUCT"

    iget-object v2, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/OZstoreChargeActivity;

    iget v2, v2, Lcom/gameboys/pocket7/OZstoreChargeActivity;->product:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/OZstoreChargeActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/gameboys/pocket7/OZstoreChargeActivity;->setResult(ILandroid/content/Intent;)V

    .line 112
    iget-object v1, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/OZstoreChargeActivity;

    invoke-virtual {v1}, Lcom/gameboys/pocket7/OZstoreChargeActivity;->finish()V

    .line 113
    return-void
.end method

.method public lguIABonItemQueryComplete()Z
    .locals 2

    .prologue
    .line 102
    const-string v0, "LGU-INAPP"

    const-string v1, "onItemQueryComplete!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public lguIABonItemUseQuery(Lcom/feelingk/lguiab/vo/UseItemInfo;)V
    .locals 1
    .parameter "useItem"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/OZstoreChargeActivity;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/OZstoreChargeActivity;->finish()V

    .line 132
    return-void
.end method

.method public lguIABonWholeQuery(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/feelingk/lguiab/vo/ProductItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, productList:Ljava/util/List;,"Ljava/util/List<Lcom/feelingk/lguiab/vo/ProductItemInfo;>;"
    const-string v0, "LGU-INAPP"

    const-string v1, "onWholeQuery!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/gameboys/pocket7/OZstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/OZstoreChargeActivity;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/OZstoreChargeActivity;->finish()V

    .line 127
    return-void
.end method
