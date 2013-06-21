.class Lcom/wareone/tappmt/ReminderEditor$6$1;
.super Ljava/lang/Object;
.source "ReminderEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/ReminderEditor$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/ReminderEditor$6;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/ReminderEditor$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/ReminderEditor$6$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$6;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "position"

    .prologue
    const-string v6, "currency"

    const-string v5, "account"

    .line 339
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$6$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$6;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$6;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor$6;->access$0(Lcom/wareone/tappmt/ReminderEditor$6;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v1

    const v2, 0x7f0c0023

    invoke-virtual {v1, v2}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 340
    .local v0, btn:Landroid/widget/Button;
    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$10()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "acc_name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$6$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$6;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$6;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor$6;->access$0(Lcom/wareone/tappmt/ReminderEditor$6;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v1

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v1, "account"

    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$10()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "_id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$6$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$6;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$6;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor$6;->access$0(Lcom/wareone/tappmt/ReminderEditor$6;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v1

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "currency"

    iget-object v2, p0, Lcom/wareone/tappmt/ReminderEditor$6$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$6;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$6;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v2}, Lcom/wareone/tappmt/ReminderEditor$6;->access$0(Lcom/wareone/tappmt/ReminderEditor$6;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v2

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v2}, Lcom/wareone/tappmt/ReminderEditor;->access$7(Lcom/wareone/tappmt/ReminderEditor;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$6$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$6;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$6;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor$6;->access$0(Lcom/wareone/tappmt/ReminderEditor$6;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v3

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "account"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencyOfAccount(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$6$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$6;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$6;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor$6;->access$0(Lcom/wareone/tappmt/ReminderEditor$6;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v1

    const v2, 0x7f0c0026

    invoke-virtual {v1, v2}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 345
    .restart local v0       #btn:Landroid/widget/Button;
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$6$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$6;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$6;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor$6;->access$0(Lcom/wareone/tappmt/ReminderEditor$6;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v1

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "currency"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 347
    return-void
.end method
