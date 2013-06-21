.class Lcom/wareone/tappmt/Transaction$7;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Transaction;->_addToPayee(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Transaction;

.field private final synthetic val$payee_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Transaction;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$7;->this$0:Lcom/wareone/tappmt/Transaction;

    iput-object p2, p0, Lcom/wareone/tappmt/Transaction$7;->val$payee_name:Ljava/lang/String;

    .line 1099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1104
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "payee_name"

    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$7;->val$payee_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    iget-object v1, p0, Lcom/wareone/tappmt/Transaction$7;->this$0:Lcom/wareone/tappmt/Transaction;

    #getter for: Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v1}, Lcom/wareone/tappmt/Transaction;->access$2(Lcom/wareone/tappmt/Transaction;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v1

    const-string v2, "payees"

    invoke-virtual {v1, v2, v0}, Lcom/wareone/tappmt/PmtDbAdapter;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1106
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1107
    return-void
.end method
