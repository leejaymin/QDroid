.class Lcom/fleapapa/helper/OfflineMsgs$2;
.super Ljava/lang/Object;
.source "OfflineMsgs.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/OfflineMsgs;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/OfflineMsgs;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/OfflineMsgs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/OfflineMsgs$2;->this$0:Lcom/fleapapa/helper/OfflineMsgs;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 53
    iget-object v3, p0, Lcom/fleapapa/helper/OfflineMsgs$2;->this$0:Lcom/fleapapa/helper/OfflineMsgs;

    iget-object v3, v3, Lcom/fleapapa/helper/OfflineMsgs;->adapter:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;

    invoke-virtual {v3, p3}, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;

    .line 55
    .local v2, omsg:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    iget v3, v2, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->cid:I

    if-nez v3, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    sget-object v3, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget v4, v2, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->cid:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/fleapapa/helper/CallPapa;->loadCall(IZ)Lcom/fleapapa/helper/CallPapa$Call;

    move-result-object v0

    .line 57
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    if-eqz v0, :cond_0

    .line 58
    sput-object v0, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    .line 59
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/fleapapa/helper/OfflineMsgs$2;->this$0:Lcom/fleapapa/helper/OfflineMsgs;

    const-class v4, Lcom/fleapapa/helper/CallBursts;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/fleapapa/helper/OfflineMsgs$2;->this$0:Lcom/fleapapa/helper/OfflineMsgs;

    invoke-virtual {v3, v1}, Lcom/fleapapa/helper/OfflineMsgs;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
