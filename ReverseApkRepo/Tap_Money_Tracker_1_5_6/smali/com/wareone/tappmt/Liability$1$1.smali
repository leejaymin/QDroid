.class Lcom/wareone/tappmt/Liability$1$1;
.super Ljava/lang/Object;
.source "Liability.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Liability$1;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/Liability$1;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Liability$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Liability$1$1;->this$1:Lcom/wareone/tappmt/Liability$1;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dlg"
    .parameter "pos"

    .prologue
    .line 58
    if-nez p2, :cond_1

    .line 59
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/wareone/tappmt/Liability$1$1;->this$1:Lcom/wareone/tappmt/Liability$1;

    #getter for: Lcom/wareone/tappmt/Liability$1;->this$0:Lcom/wareone/tappmt/Liability;
    invoke-static {v0}, Lcom/wareone/tappmt/Liability$1;->access$0(Lcom/wareone/tappmt/Liability$1;)Lcom/wareone/tappmt/Liability;

    move-result-object v0

    const-class v1, Lcom/wareone/tappmt/AccountEditor;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v6, it:Landroid/content/Intent;
    const-string v0, "ACTION"

    const v1, 0x7f09005c

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string v0, "TYPE"

    const/4 v1, -0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string v0, "_id"

    iget-object v1, p0, Lcom/wareone/tappmt/Liability$1$1;->this$1:Lcom/wareone/tappmt/Liability$1;

    #getter for: Lcom/wareone/tappmt/Liability$1;->this$0:Lcom/wareone/tappmt/Liability;
    invoke-static {v1}, Lcom/wareone/tappmt/Liability$1;->access$0(Lcom/wareone/tappmt/Liability$1;)Lcom/wareone/tappmt/Liability;

    move-result-object v1

    #getter for: Lcom/wareone/tappmt/Liability;->m_id:J
    invoke-static {v1}, Lcom/wareone/tappmt/Liability;->access$3(Lcom/wareone/tappmt/Liability;)J

    move-result-wide v1

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 63
    iget-object v0, p0, Lcom/wareone/tappmt/Liability$1$1;->this$1:Lcom/wareone/tappmt/Liability$1;

    #getter for: Lcom/wareone/tappmt/Liability$1;->this$0:Lcom/wareone/tappmt/Liability;
    invoke-static {v0}, Lcom/wareone/tappmt/Liability$1;->access$0(Lcom/wareone/tappmt/Liability$1;)Lcom/wareone/tappmt/Liability;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/wareone/tappmt/Liability;->startActivity(Landroid/content/Intent;)V

    .line 72
    .end local v6           #it:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/wareone/tappmt/Liability$1$1;->this$1:Lcom/wareone/tappmt/Liability$1;

    #getter for: Lcom/wareone/tappmt/Liability$1;->this$0:Lcom/wareone/tappmt/Liability;
    invoke-static {v0}, Lcom/wareone/tappmt/Liability$1;->access$0(Lcom/wareone/tappmt/Liability$1;)Lcom/wareone/tappmt/Liability;

    move-result-object v0

    #getter for: Lcom/wareone/tappmt/Liability;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v0}, Lcom/wareone/tappmt/Liability;->access$4(Lcom/wareone/tappmt/Liability;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/wareone/tappmt/Liability$1$1;->this$1:Lcom/wareone/tappmt/Liability$1;

    #getter for: Lcom/wareone/tappmt/Liability$1;->this$0:Lcom/wareone/tappmt/Liability;
    invoke-static {v1}, Lcom/wareone/tappmt/Liability$1;->access$0(Lcom/wareone/tappmt/Liability$1;)Lcom/wareone/tappmt/Liability;

    move-result-object v1

    #getter for: Lcom/wareone/tappmt/Liability;->m_id:J
    invoke-static {v1}, Lcom/wareone/tappmt/Liability;->access$3(Lcom/wareone/tappmt/Liability;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->isAccountExists(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/wareone/tappmt/Liability$1$1;->this$1:Lcom/wareone/tappmt/Liability$1;

    #getter for: Lcom/wareone/tappmt/Liability$1;->this$0:Lcom/wareone/tappmt/Liability;
    invoke-static {v0}, Lcom/wareone/tappmt/Liability$1;->access$0(Lcom/wareone/tappmt/Liability$1;)Lcom/wareone/tappmt/Liability;

    move-result-object v0

    const v1, 0x7f09009a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/wareone/tappmt/Liability$1$1;->this$1:Lcom/wareone/tappmt/Liability$1;

    #getter for: Lcom/wareone/tappmt/Liability$1;->this$0:Lcom/wareone/tappmt/Liability;
    invoke-static {v0}, Lcom/wareone/tappmt/Liability$1;->access$0(Lcom/wareone/tappmt/Liability$1;)Lcom/wareone/tappmt/Liability;

    move-result-object v0

    #getter for: Lcom/wareone/tappmt/Liability;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v0}, Lcom/wareone/tappmt/Liability;->access$4(Lcom/wareone/tappmt/Liability;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v0

    const-string v1, "accounts"

    iget-object v2, p0, Lcom/wareone/tappmt/Liability$1$1;->this$1:Lcom/wareone/tappmt/Liability$1;

    #getter for: Lcom/wareone/tappmt/Liability$1;->this$0:Lcom/wareone/tappmt/Liability;
    invoke-static {v2}, Lcom/wareone/tappmt/Liability$1;->access$0(Lcom/wareone/tappmt/Liability$1;)Lcom/wareone/tappmt/Liability;

    move-result-object v2

    #getter for: Lcom/wareone/tappmt/Liability;->m_id:J
    invoke-static {v2}, Lcom/wareone/tappmt/Liability;->access$3(Lcom/wareone/tappmt/Liability;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/wareone/tappmt/Liability$1$1;->this$1:Lcom/wareone/tappmt/Liability$1;

    #getter for: Lcom/wareone/tappmt/Liability$1;->this$0:Lcom/wareone/tappmt/Liability;
    invoke-static {v4}, Lcom/wareone/tappmt/Liability$1;->access$0(Lcom/wareone/tappmt/Liability$1;)Lcom/wareone/tappmt/Liability;

    move-result-object v4

    #getter for: Lcom/wareone/tappmt/Liability;->m_remote_id:J
    invoke-static {v4}, Lcom/wareone/tappmt/Liability;->access$5(Lcom/wareone/tappmt/Liability;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/wareone/tappmt/PmtDbAdapter;->delete(Ljava/lang/String;JJ)J

    .line 69
    iget-object v0, p0, Lcom/wareone/tappmt/Liability$1$1;->this$1:Lcom/wareone/tappmt/Liability$1;

    #getter for: Lcom/wareone/tappmt/Liability$1;->this$0:Lcom/wareone/tappmt/Liability;
    invoke-static {v0}, Lcom/wareone/tappmt/Liability$1;->access$0(Lcom/wareone/tappmt/Liability$1;)Lcom/wareone/tappmt/Liability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wareone/tappmt/Liability;->_refresh()V

    goto :goto_0
.end method
