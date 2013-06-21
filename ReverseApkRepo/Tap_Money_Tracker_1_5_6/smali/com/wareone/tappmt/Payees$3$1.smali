.class Lcom/wareone/tappmt/Payees$3$1;
.super Ljava/lang/Object;
.source "Payees.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Payees$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/Payees$3;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Payees$3;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Payees$3$1;->this$1:Lcom/wareone/tappmt/Payees$3;

    iput-object p2, p0, Lcom/wareone/tappmt/Payees$3$1;->val$input:Landroid/widget/EditText;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 148
    .local v0, curTime:Ljava/util/Calendar;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 149
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 152
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 153
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "payee_name"

    iget-object v3, p0, Lcom/wareone/tappmt/Payees$3$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "remote_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v2, "sync"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 156
    const-string v2, "modified"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    iget-object v2, p0, Lcom/wareone/tappmt/Payees$3$1;->this$1:Lcom/wareone/tappmt/Payees$3;

    #getter for: Lcom/wareone/tappmt/Payees$3;->this$0:Lcom/wareone/tappmt/Payees;
    invoke-static {v2}, Lcom/wareone/tappmt/Payees$3;->access$0(Lcom/wareone/tappmt/Payees$3;)Lcom/wareone/tappmt/Payees;

    move-result-object v2

    #getter for: Lcom/wareone/tappmt/Payees;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v2}, Lcom/wareone/tappmt/Payees;->access$1(Lcom/wareone/tappmt/Payees;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v2

    const-string v3, "payees"

    invoke-virtual {v2, v3, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 158
    iget-object v2, p0, Lcom/wareone/tappmt/Payees$3$1;->this$1:Lcom/wareone/tappmt/Payees$3;

    #getter for: Lcom/wareone/tappmt/Payees$3;->this$0:Lcom/wareone/tappmt/Payees;
    invoke-static {v2}, Lcom/wareone/tappmt/Payees$3;->access$0(Lcom/wareone/tappmt/Payees$3;)Lcom/wareone/tappmt/Payees;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wareone/tappmt/Payees;->_refresh()V

    .line 159
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 160
    return-void
.end method
