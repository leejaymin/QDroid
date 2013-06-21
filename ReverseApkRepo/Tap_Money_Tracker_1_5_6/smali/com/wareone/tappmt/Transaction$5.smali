.class Lcom/wareone/tappmt/Transaction$5;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Transaction;->_newPayee()V
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
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$5;->this$0:Lcom/wareone/tappmt/Transaction;

    iput-object p2, p0, Lcom/wareone/tappmt/Transaction$5;->val$input:Landroid/widget/EditText;

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 924
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 925
    .local v0, curTime:Ljava/util/Calendar;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 926
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 928
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 929
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "payee_name"

    iget-object v4, p0, Lcom/wareone/tappmt/Transaction$5;->val$input:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v3, "remote_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 931
    const-string v3, "sync"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 932
    const-string v3, "modified"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 933
    iget-object v3, p0, Lcom/wareone/tappmt/Transaction$5;->this$0:Lcom/wareone/tappmt/Transaction;

    #getter for: Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v3}, Lcom/wareone/tappmt/Transaction;->access$2(Lcom/wareone/tappmt/Transaction;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v3

    const-string v4, "payees"

    invoke-virtual {v3, v4, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 934
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 936
    iget-object v3, p0, Lcom/wareone/tappmt/Transaction$5;->this$0:Lcom/wareone/tappmt/Transaction;

    const v4, 0x7f0c009a

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 937
    .local v1, edt_payee:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/wareone/tappmt/Transaction$5;->val$input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 939
    iget-object v3, p0, Lcom/wareone/tappmt/Transaction$5;->this$0:Lcom/wareone/tappmt/Transaction;

    #calls: Lcom/wareone/tappmt/Transaction;->_loadPayee()V
    invoke-static {v3}, Lcom/wareone/tappmt/Transaction;->access$5(Lcom/wareone/tappmt/Transaction;)V

    .line 940
    return-void
.end method
