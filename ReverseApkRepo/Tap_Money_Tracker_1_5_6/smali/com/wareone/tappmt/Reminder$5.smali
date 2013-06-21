.class Lcom/wareone/tappmt/Reminder$5;
.super Ljava/lang/Object;
.source "Reminder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Reminder;->_delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Reminder;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Reminder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Reminder$5;->this$0:Lcom/wareone/tappmt/Reminder;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 304
    invoke-static {}, Lcom/wareone/tappmt/Reminder;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "delete reminder"

    invoke-static {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/wareone/tappmt/Reminder$5;->this$0:Lcom/wareone/tappmt/Reminder;

    #getter for: Lcom/wareone/tappmt/Reminder;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v0}, Lcom/wareone/tappmt/Reminder;->access$6(Lcom/wareone/tappmt/Reminder;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v0

    const-string v1, "reminders"

    iget-object v2, p0, Lcom/wareone/tappmt/Reminder$5;->this$0:Lcom/wareone/tappmt/Reminder;

    #getter for: Lcom/wareone/tappmt/Reminder;->m_id:J
    invoke-static {v2}, Lcom/wareone/tappmt/Reminder;->access$7(Lcom/wareone/tappmt/Reminder;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/wareone/tappmt/Reminder$5;->this$0:Lcom/wareone/tappmt/Reminder;

    #getter for: Lcom/wareone/tappmt/Reminder;->m_remote_id:J
    invoke-static {v4}, Lcom/wareone/tappmt/Reminder;->access$8(Lcom/wareone/tappmt/Reminder;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/wareone/tappmt/PmtDbAdapter;->delete(Ljava/lang/String;JJ)J

    .line 306
    iget-object v0, p0, Lcom/wareone/tappmt/Reminder$5;->this$0:Lcom/wareone/tappmt/Reminder;

    invoke-virtual {v0}, Lcom/wareone/tappmt/Reminder;->_refresh()V

    .line 307
    return-void
.end method
