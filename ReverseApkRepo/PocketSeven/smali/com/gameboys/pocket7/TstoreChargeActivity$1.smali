.class Lcom/gameboys/pocket7/TstoreChargeActivity$1;
.super Ljava/lang/Object;
.source "TstoreChargeActivity.java"

# interfaces
.implements Lcom/feelingk/iap/IAPLib$OnClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameboys/pocket7/TstoreChargeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;


# direct methods
.method constructor <init>(Lcom/gameboys/pocket7/TstoreChargeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDlgAutoPurchaseInfoCancel()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gameboys/pocket7/TstoreChargeActivity;->setResult(I)V

    .line 237
    iget-object v0, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/TstoreChargeActivity;->finish()V

    .line 238
    return-void
.end method

.method public onDlgError()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "PURCHASE"

    const-string v1, "PAY ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/TstoreChargeActivity;->finish()V

    .line 144
    return-void
.end method

.method public onDlgPurchaseCancel()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "PURCHASE"

    const-string v1, "PAY CANCEL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gameboys/pocket7/TstoreChargeActivity;->setResult(I)V

    .line 151
    iget-object v0, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/TstoreChargeActivity;->finish()V

    .line 152
    return-void
.end method

.method public onError(II)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 208
    packed-switch p1, :pswitch_data_0

    .line 230
    :pswitch_0
    iget-object v0, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    iget-object v0, v0, Lcom/gameboys/pocket7/TstoreChargeActivity;->closeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    return-void

    .line 208
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemAuthInfo(Lcom/feelingk/iap/net/ItemAuthInfo;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 165
    const-string v0, "PURCHASE"

    const-string v1, "AuthInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public onItemPurchaseComplete()V
    .locals 3

    .prologue
    .line 174
    const-string v1, "PURCHASE"

    const-string v2, "PAY COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/gameboys/pocket7/TstoreChargeActivity;->bPaid:Ljava/lang/Boolean;

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ADD_PRODUCT"

    iget-object v2, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    iget v2, v2, Lcom/gameboys/pocket7/TstoreChargeActivity;->product:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/gameboys/pocket7/TstoreChargeActivity;->setResult(ILandroid/content/Intent;)V

    .line 179
    iget-object v1, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    invoke-virtual {v1}, Lcom/gameboys/pocket7/TstoreChargeActivity;->finish()V

    .line 180
    return-void
.end method

.method public onItemQueryComplete()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 186
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 187
    .local v0, bReturn:Ljava/lang/Boolean;
    const-string v1, "PURCHASE"

    const-string v2, "QueryComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-object v0
.end method

.method public onItemUseQuery(Lcom/feelingk/iap/net/ItemUse;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 194
    const-string v0, "PURCHASE"

    const-string v1, "UseQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public onJoinDialogCancel()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gameboys/pocket7/TstoreChargeActivity;->setResult(I)V

    .line 244
    iget-object v0, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/TstoreChargeActivity;->finish()V

    .line 245
    return-void
.end method

.method public onJuminNumberDlgCancel()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "PURCHASE"

    const-string v1, "JUMIN CANCEL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gameboys/pocket7/TstoreChargeActivity;->setResult(I)V

    .line 159
    iget-object v0, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/TstoreChargeActivity;->finish()V

    .line 160
    return-void
.end method

.method public onPurchaseDismiss()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$1;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/TstoreChargeActivity;->finish()V

    .line 251
    return-void
.end method

.method public onWholeQuery([Lcom/feelingk/iap/net/ItemAuth;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 200
    const-string v0, "PURCHASE"

    const-string v1, "WholeQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method
