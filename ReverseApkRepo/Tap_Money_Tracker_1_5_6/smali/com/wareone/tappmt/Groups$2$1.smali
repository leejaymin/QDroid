.class Lcom/wareone/tappmt/Groups$2$1;
.super Ljava/lang/Object;
.source "Groups.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Groups$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/Groups$2;

.field private final synthetic val$m_pos:I


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Groups$2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Groups$2$1;->this$1:Lcom/wareone/tappmt/Groups$2;

    iput p2, p0, Lcom/wareone/tappmt/Groups$2$1;->val$m_pos:I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/wareone/tappmt/Groups$2$1;->this$1:Lcom/wareone/tappmt/Groups$2;

    #getter for: Lcom/wareone/tappmt/Groups$2;->this$0:Lcom/wareone/tappmt/Groups;
    invoke-static {v0}, Lcom/wareone/tappmt/Groups$2;->access$0(Lcom/wareone/tappmt/Groups$2;)Lcom/wareone/tappmt/Groups;

    move-result-object v0

    #getter for: Lcom/wareone/tappmt/Groups;->m_data:Ljava/util/List;
    invoke-static {v0}, Lcom/wareone/tappmt/Groups;->access$2(Lcom/wareone/tappmt/Groups;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/wareone/tappmt/Groups$2$1;->val$m_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 113
    .local v2, row_id:J
    iget-object v0, p0, Lcom/wareone/tappmt/Groups$2$1;->this$1:Lcom/wareone/tappmt/Groups$2;

    #getter for: Lcom/wareone/tappmt/Groups$2;->this$0:Lcom/wareone/tappmt/Groups;
    invoke-static {v0}, Lcom/wareone/tappmt/Groups$2;->access$0(Lcom/wareone/tappmt/Groups$2;)Lcom/wareone/tappmt/Groups;

    move-result-object v0

    #getter for: Lcom/wareone/tappmt/Groups;->m_data:Ljava/util/List;
    invoke-static {v0}, Lcom/wareone/tappmt/Groups;->access$2(Lcom/wareone/tappmt/Groups;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/wareone/tappmt/Groups$2$1;->val$m_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "remote_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 114
    .local v4, remote_id:J
    iget-object v0, p0, Lcom/wareone/tappmt/Groups$2$1;->this$1:Lcom/wareone/tappmt/Groups$2;

    #getter for: Lcom/wareone/tappmt/Groups$2;->this$0:Lcom/wareone/tappmt/Groups;
    invoke-static {v0}, Lcom/wareone/tappmt/Groups$2;->access$0(Lcom/wareone/tappmt/Groups$2;)Lcom/wareone/tappmt/Groups;

    move-result-object v0

    #getter for: Lcom/wareone/tappmt/Groups;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v0}, Lcom/wareone/tappmt/Groups;->access$1(Lcom/wareone/tappmt/Groups;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->isGroupExists(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/wareone/tappmt/Groups$2$1;->this$1:Lcom/wareone/tappmt/Groups$2;

    #getter for: Lcom/wareone/tappmt/Groups$2;->this$0:Lcom/wareone/tappmt/Groups;
    invoke-static {v0}, Lcom/wareone/tappmt/Groups$2;->access$0(Lcom/wareone/tappmt/Groups$2;)Lcom/wareone/tappmt/Groups;

    move-result-object v0

    const v1, 0x7f09009d

    const/4 v6, 0x0

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 120
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 121
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/wareone/tappmt/Groups$2$1;->this$1:Lcom/wareone/tappmt/Groups$2;

    #getter for: Lcom/wareone/tappmt/Groups$2;->this$0:Lcom/wareone/tappmt/Groups;
    invoke-static {v0}, Lcom/wareone/tappmt/Groups$2;->access$0(Lcom/wareone/tappmt/Groups$2;)Lcom/wareone/tappmt/Groups;

    move-result-object v0

    #getter for: Lcom/wareone/tappmt/Groups;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v0}, Lcom/wareone/tappmt/Groups;->access$1(Lcom/wareone/tappmt/Groups;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v0

    const-string v1, "groups"

    invoke-virtual/range {v0 .. v5}, Lcom/wareone/tappmt/PmtDbAdapter;->delete(Ljava/lang/String;JJ)J

    .line 118
    iget-object v0, p0, Lcom/wareone/tappmt/Groups$2$1;->this$1:Lcom/wareone/tappmt/Groups$2;

    #getter for: Lcom/wareone/tappmt/Groups$2;->this$0:Lcom/wareone/tappmt/Groups;
    invoke-static {v0}, Lcom/wareone/tappmt/Groups$2;->access$0(Lcom/wareone/tappmt/Groups$2;)Lcom/wareone/tappmt/Groups;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wareone/tappmt/Groups;->_refresh()V

    goto :goto_0
.end method
