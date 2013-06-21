.class Lcom/wareone/tappmt/TapPMT$3$1;
.super Ljava/lang/Object;
.source "TapPMT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMT$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/TapPMT$3;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TapPMT$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$3$1;->this$1:Lcom/wareone/tappmt/TapPMT$3;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$3$1;->this$1:Lcom/wareone/tappmt/TapPMT$3;

    #getter for: Lcom/wareone/tappmt/TapPMT$3;->this$0:Lcom/wareone/tappmt/TapPMT;
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT$3;->access$0(Lcom/wareone/tappmt/TapPMT$3;)Lcom/wareone/tappmt/TapPMT;

    move-result-object v0

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT;->access$10(Lcom/wareone/tappmt/TapPMT;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v0

    const-string v1, "transactions"

    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT$3$1;->this$1:Lcom/wareone/tappmt/TapPMT$3;

    #getter for: Lcom/wareone/tappmt/TapPMT$3;->this$0:Lcom/wareone/tappmt/TapPMT;
    invoke-static {v2}, Lcom/wareone/tappmt/TapPMT$3;->access$0(Lcom/wareone/tappmt/TapPMT$3;)Lcom/wareone/tappmt/TapPMT;

    move-result-object v2

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_id:J
    invoke-static {v2}, Lcom/wareone/tappmt/TapPMT;->access$11(Lcom/wareone/tappmt/TapPMT;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/wareone/tappmt/TapPMT$3$1;->this$1:Lcom/wareone/tappmt/TapPMT$3;

    #getter for: Lcom/wareone/tappmt/TapPMT$3;->this$0:Lcom/wareone/tappmt/TapPMT;
    invoke-static {v4}, Lcom/wareone/tappmt/TapPMT$3;->access$0(Lcom/wareone/tappmt/TapPMT$3;)Lcom/wareone/tappmt/TapPMT;

    move-result-object v4

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_remote_id:J
    invoke-static {v4}, Lcom/wareone/tappmt/TapPMT;->access$12(Lcom/wareone/tappmt/TapPMT;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/wareone/tappmt/PmtDbAdapter;->delete(Ljava/lang/String;JJ)J

    .line 325
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$3$1;->this$1:Lcom/wareone/tappmt/TapPMT$3;

    #getter for: Lcom/wareone/tappmt/TapPMT$3;->this$0:Lcom/wareone/tappmt/TapPMT;
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT$3;->access$0(Lcom/wareone/tappmt/TapPMT$3;)Lcom/wareone/tappmt/TapPMT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wareone/tappmt/TapPMT;->_refresh()V

    .line 326
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$3$1;->this$1:Lcom/wareone/tappmt/TapPMT$3;

    #getter for: Lcom/wareone/tappmt/TapPMT$3;->this$0:Lcom/wareone/tappmt/TapPMT;
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT$3;->access$0(Lcom/wareone/tappmt/TapPMT$3;)Lcom/wareone/tappmt/TapPMT;

    move-result-object v0

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT;->access$10(Lcom/wareone/tappmt/TapPMT;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT$3$1;->this$1:Lcom/wareone/tappmt/TapPMT$3;

    #getter for: Lcom/wareone/tappmt/TapPMT$3;->this$0:Lcom/wareone/tappmt/TapPMT;
    invoke-static {v1}, Lcom/wareone/tappmt/TapPMT$3;->access$0(Lcom/wareone/tappmt/TapPMT$3;)Lcom/wareone/tappmt/TapPMT;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->updateWidget(Landroid/content/Context;)V

    .line 327
    return-void
.end method
