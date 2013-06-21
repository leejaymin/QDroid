.class Lcom/wareone/tappmt/Transaction$13;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Transaction;->_initControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Transaction;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Transaction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$13;->this$0:Lcom/wareone/tappmt/Transaction;

    .line 1566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 1568
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.wareone.tapshopper.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1569
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1570
    const-string v2, "_id"

    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "src_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1572
    :try_start_0
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$13;->this$0:Lcom/wareone/tappmt/Transaction;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/wareone/tappmt/Transaction;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    :goto_0
    return-void

    .line 1573
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1574
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$13;->this$0:Lcom/wareone/tappmt/Transaction;

    const-string v3, "Install Tap Shopper"

    const-string v4, "This function requires Tap Shooper. Would you like to install it?"

    const-string v5, "Yes"

    const-string v6, "No"

    #calls: Lcom/wareone/tappmt/Transaction;->showDownloadDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/wareone/tappmt/Transaction;->access$15(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
