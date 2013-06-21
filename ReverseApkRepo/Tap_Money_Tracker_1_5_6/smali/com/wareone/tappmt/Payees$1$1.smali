.class Lcom/wareone/tappmt/Payees$1$1;
.super Ljava/lang/Object;
.source "Payees.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Payees$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/Payees$1;

.field private final synthetic val$input:Landroid/widget/EditText;

.field private final synthetic val$m_pos:I


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Payees$1;Landroid/widget/EditText;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Payees$1$1;->this$1:Lcom/wareone/tappmt/Payees$1;

    iput-object p2, p0, Lcom/wareone/tappmt/Payees$1$1;->val$input:Landroid/widget/EditText;

    iput p3, p0, Lcom/wareone/tappmt/Payees$1$1;->val$m_pos:I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 74
    .local v0, curTime:Ljava/util/Calendar;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 75
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 77
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 78
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "payee_name"

    iget-object v3, p0, Lcom/wareone/tappmt/Payees$1$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "sync"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 80
    const-string v2, "modified"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 81
    iget-object v2, p0, Lcom/wareone/tappmt/Payees$1$1;->this$1:Lcom/wareone/tappmt/Payees$1;

    #getter for: Lcom/wareone/tappmt/Payees$1;->this$0:Lcom/wareone/tappmt/Payees;
    invoke-static {v2}, Lcom/wareone/tappmt/Payees$1;->access$0(Lcom/wareone/tappmt/Payees$1;)Lcom/wareone/tappmt/Payees;

    move-result-object v2

    #getter for: Lcom/wareone/tappmt/Payees;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v2}, Lcom/wareone/tappmt/Payees;->access$1(Lcom/wareone/tappmt/Payees;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v3

    const-string v4, "payees"

    iget-object v2, p0, Lcom/wareone/tappmt/Payees$1$1;->this$1:Lcom/wareone/tappmt/Payees$1;

    #getter for: Lcom/wareone/tappmt/Payees$1;->this$0:Lcom/wareone/tappmt/Payees;
    invoke-static {v2}, Lcom/wareone/tappmt/Payees$1;->access$0(Lcom/wareone/tappmt/Payees$1;)Lcom/wareone/tappmt/Payees;

    move-result-object v2

    #getter for: Lcom/wareone/tappmt/Payees;->m_data:Ljava/util/List;
    invoke-static {v2}, Lcom/wareone/tappmt/Payees;->access$2(Lcom/wareone/tappmt/Payees;)Ljava/util/List;

    move-result-object v2

    iget v5, p0, Lcom/wareone/tappmt/Payees$1$1;->val$m_pos:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v5, "_id"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v4, v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Long;)J

    .line 82
    iget-object v2, p0, Lcom/wareone/tappmt/Payees$1$1;->this$1:Lcom/wareone/tappmt/Payees$1;

    #getter for: Lcom/wareone/tappmt/Payees$1;->this$0:Lcom/wareone/tappmt/Payees;
    invoke-static {v2}, Lcom/wareone/tappmt/Payees$1;->access$0(Lcom/wareone/tappmt/Payees$1;)Lcom/wareone/tappmt/Payees;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wareone/tappmt/Payees;->_refresh()V

    .line 83
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 84
    return-void
.end method
