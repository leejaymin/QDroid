.class Lcom/fleapapa/helper/BidList$1;
.super Ljava/lang/Object;
.source "BidList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/BidList;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/fleapapa/helper/BidList;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/BidList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/BidList$1;->this$0:Lcom/fleapapa/helper/BidList;

    .line 53
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
    .line 55
    iget-object v2, p0, Lcom/fleapapa/helper/BidList$1;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v2, v2, Lcom/fleapapa/helper/BidList;->bview:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->setSelection(I)V

    .line 56
    iget-object v2, p0, Lcom/fleapapa/helper/BidList$1;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v2, v2, Lcom/fleapapa/helper/BidList;->adapter:Lcom/fleapapa/helper/BidList$BidAdapter;

    invoke-virtual {v2, p3}, Lcom/fleapapa/helper/BidList$BidAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Bid;

    .line 57
    .local v0, bid:Lcom/fleapapa/helper/Bid;
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BidListBidAdapter.getView: bidder email="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/fleapapa/helper/Bid;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v2, p0, Lcom/fleapapa/helper/BidList$1;->this$0:Lcom/fleapapa/helper/BidList;

    iget-boolean v2, v2, Lcom/fleapapa/helper/BidList;->isMyItem:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/fleapapa/helper/Bid;->email:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/fleapapa/helper/Bid;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, sendIntent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.EMAIL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/fleapapa/helper/Bid;->email:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v2, "android.intent.extra.TEXT"

    const-string v3, "????"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, "Subj"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v2, "message/rfc822"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v2, p0, Lcom/fleapapa/helper/BidList$1;->this$0:Lcom/fleapapa/helper/BidList;

    const-string v3, "Compose"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/BidList;->startActivity(Landroid/content/Intent;)V

    .line 65
    .end local v1           #sendIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
