.class Lcom/wareone/tappmt/TapPMT$9;
.super Ljava/lang/Object;
.source "TapPMT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMT;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/TapPMT;

.field private final synthetic val$extra:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TapPMT;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$9;->this$0:Lcom/wareone/tappmt/TapPMT;

    iput-object p2, p0, Lcom/wareone/tappmt/TapPMT$9;->val$extra:Landroid/os/Bundle;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "pos"

    .prologue
    const-string v6, "_id"

    const-string v7, "REMINDER_ID"

    .line 462
    packed-switch p2, :pswitch_data_0

    .line 493
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 494
    return-void

    .line 464
    :pswitch_0
    invoke-static {}, Lcom/wareone/tappmt/TapPMT;->access$7()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/wareone/tappmt/TapPMT$9;->val$extra:Landroid/os/Bundle;

    const-string v5, "REMINDER_ID"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT$9;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v3}, Lcom/wareone/tappmt/TapPMT;->access$10(Lcom/wareone/tappmt/TapPMT;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/wareone/tappmt/TapPMT$9;->val$extra:Landroid/os/Bundle;

    const-string v5, "REMINDER_ID"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getReminderById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v1

    .line 466
    .local v1, c:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT$9;->this$0:Lcom/wareone/tappmt/TapPMT;

    const-class v4, Lcom/wareone/tappmt/Transaction;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 468
    .local v2, it:Landroid/content/Intent;
    const-string v3, "ACTION"

    const v4, 0x7f09005b

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 469
    const-string v3, "MODE"

    const-string v4, "mode"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 470
    const-string v3, "_id"

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    const-string v3, "REMINDER_ID"

    const-string v3, "_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 472
    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT$9;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-virtual {v3, v2}, Lcom/wareone/tappmt/TapPMT;->startActivity(Landroid/content/Intent;)V

    .line 474
    .end local v2           #it:Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT$9;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v3}, Lcom/wareone/tappmt/TapPMT;->access$10(Lcom/wareone/tappmt/TapPMT;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v3

    const-string v4, "_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->setNextTimeOfReminder(J)V

    .line 475
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 476
    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT$9;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-virtual {v3}, Lcom/wareone/tappmt/TapPMT;->finish()V

    goto/16 :goto_0

    .line 479
    .end local v1           #c:Landroid/database/Cursor;
    :pswitch_1
    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT$9;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-virtual {v3}, Lcom/wareone/tappmt/TapPMT;->finish()V

    goto/16 :goto_0

    .line 482
    :pswitch_2
    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT$9;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v3}, Lcom/wareone/tappmt/TapPMT;->access$10(Lcom/wareone/tappmt/TapPMT;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/wareone/tappmt/TapPMT$9;->val$extra:Landroid/os/Bundle;

    const-string v5, "REMINDER_ID"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->setNextTimeOfReminder(J)V

    .line 483
    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT$9;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-virtual {v3}, Lcom/wareone/tappmt/TapPMT;->finish()V

    goto/16 :goto_0

    .line 486
    :pswitch_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 487
    .local v0, _values:Landroid/content/ContentValues;
    const-string v3, "status"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT$9;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v3}, Lcom/wareone/tappmt/TapPMT;->access$10(Lcom/wareone/tappmt/TapPMT;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v3

    const-string v4, "reminders"

    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT$9;->val$extra:Landroid/os/Bundle;

    const-string v6, "REMINDER_ID"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Long;)J

    .line 489
    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT$9;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-virtual {v3}, Lcom/wareone/tappmt/TapPMT;->finish()V

    goto/16 :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
