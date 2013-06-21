.class Lcom/wareone/tappmt/Template$4;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Template;->_delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Template;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Template;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Template$4;->this$0:Lcom/wareone/tappmt/Template;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 241
    invoke-static {}, Lcom/wareone/tappmt/Template;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "delete reminder"

    invoke-static {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/wareone/tappmt/Template$4;->this$0:Lcom/wareone/tappmt/Template;

    #getter for: Lcom/wareone/tappmt/Template;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v0}, Lcom/wareone/tappmt/Template;->access$5(Lcom/wareone/tappmt/Template;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v0

    const-string v1, "templates"

    iget-object v2, p0, Lcom/wareone/tappmt/Template$4;->this$0:Lcom/wareone/tappmt/Template;

    #getter for: Lcom/wareone/tappmt/Template;->m_id:J
    invoke-static {v2}, Lcom/wareone/tappmt/Template;->access$6(Lcom/wareone/tappmt/Template;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/wareone/tappmt/Template$4;->this$0:Lcom/wareone/tappmt/Template;

    #getter for: Lcom/wareone/tappmt/Template;->m_remote_id:J
    invoke-static {v4}, Lcom/wareone/tappmt/Template;->access$7(Lcom/wareone/tappmt/Template;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/wareone/tappmt/PmtDbAdapter;->delete(Ljava/lang/String;JJ)J

    .line 243
    iget-object v0, p0, Lcom/wareone/tappmt/Template$4;->this$0:Lcom/wareone/tappmt/Template;

    invoke-virtual {v0}, Lcom/wareone/tappmt/Template;->_refresh()V

    .line 244
    return-void
.end method
