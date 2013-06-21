.class Lcom/wareone/tappmt/Transaction$3;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Transaction;->_newGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Transaction;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Transaction;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$3;->this$0:Lcom/wareone/tappmt/Transaction;

    iput-object p2, p0, Lcom/wareone/tappmt/Transaction$3;->val$input:Landroid/widget/EditText;

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    const-string v8, "group_name"

    .line 881
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 882
    .local v1, curTime:Ljava/util/Calendar;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 883
    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 885
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 886
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "group_name"

    iget-object v5, p0, Lcom/wareone/tappmt/Transaction$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v5, "remote_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 888
    const-string v5, "sync"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 889
    const-string v5, "modified"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 891
    iget-object v5, p0, Lcom/wareone/tappmt/Transaction$3;->this$0:Lcom/wareone/tappmt/Transaction;

    #getter for: Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v5}, Lcom/wareone/tappmt/Transaction;->access$2(Lcom/wareone/tappmt/Transaction;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v5

    const-string v6, "groups"

    invoke-virtual {v5, v6, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 892
    .local v2, new_id:J
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "group_name"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iget-object v5, p0, Lcom/wareone/tappmt/Transaction$3;->this$0:Lcom/wareone/tappmt/Transaction;

    const v6, 0x7f0c0028

    invoke-virtual {v5, v6}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 894
    .local v0, btn:Landroid/widget/Button;
    const-string v5, "group_name"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 896
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 897
    iget-object v5, p0, Lcom/wareone/tappmt/Transaction$3;->this$0:Lcom/wareone/tappmt/Transaction;

    #calls: Lcom/wareone/tappmt/Transaction;->_loadGroups()V
    invoke-static {v5}, Lcom/wareone/tappmt/Transaction;->access$4(Lcom/wareone/tappmt/Transaction;)V

    .line 898
    return-void
.end method
