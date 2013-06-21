.class Lcom/wareone/tappmt/Transaction$26;
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
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$26;->this$0:Lcom/wareone/tappmt/Transaction;

    .line 1980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1983
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$26;->this$0:Lcom/wareone/tappmt/Transaction;

    #calls: Lcom/wareone/tappmt/Transaction;->_saveTransaction()V
    invoke-static {v2}, Lcom/wareone/tappmt/Transaction;->access$29(Lcom/wareone/tappmt/Transaction;)V

    .line 1985
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1986
    .local v1, it:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1987
    .local v0, extra:Landroid/os/Bundle;
    const-string v2, "DATE"

    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "trans_date"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1989
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$26;->this$0:Lcom/wareone/tappmt/Transaction;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/wareone/tappmt/Transaction;->setResult(ILandroid/content/Intent;)V

    .line 1990
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$26;->this$0:Lcom/wareone/tappmt/Transaction;

    invoke-virtual {v2}, Lcom/wareone/tappmt/Transaction;->finish()V

    .line 1991
    return-void
.end method
