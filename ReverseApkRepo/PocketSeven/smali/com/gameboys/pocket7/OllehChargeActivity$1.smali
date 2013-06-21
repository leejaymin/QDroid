.class Lcom/gameboys/pocket7/OllehChargeActivity$1;
.super Ljava/lang/Object;
.source "OllehChargeActivity.java"

# interfaces
.implements Lcom/kt/olleh/inapp/OnInAppListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameboys/pocket7/OllehChargeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameboys/pocket7/OllehChargeActivity;


# direct methods
.method constructor <init>(Lcom/gameboys/pocket7/OllehChargeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gameboys/pocket7/OllehChargeActivity$1;->this$0:Lcom/gameboys/pocket7/OllehChargeActivity;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errorCode"
    .parameter "msg"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/gameboys/pocket7/OllehChargeActivity$1;->this$0:Lcom/gameboys/pocket7/OllehChargeActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uc544\uc774\ud15c \uad6c\ub9e4 \uc2e4\ud328 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/gameboys/pocket7/OllehChargeActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Lcom/gameboys/pocket7/OllehChargeActivity;->access$0(Lcom/gameboys/pocket7/OllehChargeActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V
    .locals 1
    .parameter "api"
    .parameter "data"

    .prologue
    .line 148
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 150
    return-void
.end method

.method public OnResultFileURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "code"
    .parameter "url"

    .prologue
    .line 162
    return-void
.end method

.method public OnResultOLDAPI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "code"
    .parameter "message"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/gameboys/pocket7/OllehChargeActivity$1;->this$0:Lcom/gameboys/pocket7/OllehChargeActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    return-void
.end method

.method public OnResultPurchase(Ljava/lang/String;)V
    .locals 3
    .parameter "tr_id"

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ADD_PRODUCT"

    iget-object v2, p0, Lcom/gameboys/pocket7/OllehChargeActivity$1;->this$0:Lcom/gameboys/pocket7/OllehChargeActivity;

    iget v2, v2, Lcom/gameboys/pocket7/OllehChargeActivity;->product:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/gameboys/pocket7/OllehChargeActivity$1;->this$0:Lcom/gameboys/pocket7/OllehChargeActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/gameboys/pocket7/OllehChargeActivity;->setResult(ILandroid/content/Intent;)V

    .line 143
    iget-object v1, p0, Lcom/gameboys/pocket7/OllehChargeActivity$1;->this$0:Lcom/gameboys/pocket7/OllehChargeActivity;

    invoke-virtual {v1}, Lcom/gameboys/pocket7/OllehChargeActivity;->finish()V

    .line 144
    return-void
.end method
