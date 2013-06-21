.class Lcom/wareone/tappmt/Currency$2$1;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Currency$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/Currency$2;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Currency$2;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Currency$2$1;->this$1:Lcom/wareone/tappmt/Currency$2;

    iput-object p2, p0, Lcom/wareone/tappmt/Currency$2$1;->val$input:Landroid/widget/EditText;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/wareone/tappmt/Currency$2$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 216
    iget-object v1, p0, Lcom/wareone/tappmt/Currency$2$1;->this$1:Lcom/wareone/tappmt/Currency$2;

    #getter for: Lcom/wareone/tappmt/Currency$2;->this$0:Lcom/wareone/tappmt/Currency;
    invoke-static {v1}, Lcom/wareone/tappmt/Currency$2;->access$0(Lcom/wareone/tappmt/Currency$2;)Lcom/wareone/tappmt/Currency;

    move-result-object v1

    #getter for: Lcom/wareone/tappmt/Currency;->m_values:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/wareone/tappmt/Currency;->access$3(Lcom/wareone/tappmt/Currency;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "rate"

    iget-object v3, p0, Lcom/wareone/tappmt/Currency$2$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/wareone/tappmt/Currency$2$1;->this$1:Lcom/wareone/tappmt/Currency$2;

    #getter for: Lcom/wareone/tappmt/Currency$2;->this$0:Lcom/wareone/tappmt/Currency;
    invoke-static {v1}, Lcom/wareone/tappmt/Currency$2;->access$0(Lcom/wareone/tappmt/Currency$2;)Lcom/wareone/tappmt/Currency;

    move-result-object v1

    #getter for: Lcom/wareone/tappmt/Currency;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v1}, Lcom/wareone/tappmt/Currency;->access$4(Lcom/wareone/tappmt/Currency;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v1

    const-string v2, "currency"

    iget-object v3, p0, Lcom/wareone/tappmt/Currency$2$1;->this$1:Lcom/wareone/tappmt/Currency$2;

    #getter for: Lcom/wareone/tappmt/Currency$2;->this$0:Lcom/wareone/tappmt/Currency;
    invoke-static {v3}, Lcom/wareone/tappmt/Currency$2;->access$0(Lcom/wareone/tappmt/Currency$2;)Lcom/wareone/tappmt/Currency;

    move-result-object v3

    #getter for: Lcom/wareone/tappmt/Currency;->m_values:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/wareone/tappmt/Currency;->access$3(Lcom/wareone/tappmt/Currency;)Landroid/content/ContentValues;

    move-result-object v3

    iget-object v4, p0, Lcom/wareone/tappmt/Currency$2$1;->this$1:Lcom/wareone/tappmt/Currency$2;

    #getter for: Lcom/wareone/tappmt/Currency$2;->this$0:Lcom/wareone/tappmt/Currency;
    invoke-static {v4}, Lcom/wareone/tappmt/Currency$2;->access$0(Lcom/wareone/tappmt/Currency$2;)Lcom/wareone/tappmt/Currency;

    move-result-object v4

    #getter for: Lcom/wareone/tappmt/Currency;->m_values:Landroid/content/ContentValues;
    invoke-static {v4}, Lcom/wareone/tappmt/Currency;->access$3(Lcom/wareone/tappmt/Currency;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Long;)J

    .line 218
    iget-object v1, p0, Lcom/wareone/tappmt/Currency$2$1;->this$1:Lcom/wareone/tappmt/Currency$2;

    #getter for: Lcom/wareone/tappmt/Currency$2;->this$0:Lcom/wareone/tappmt/Currency;
    invoke-static {v1}, Lcom/wareone/tappmt/Currency$2;->access$0(Lcom/wareone/tappmt/Currency$2;)Lcom/wareone/tappmt/Currency;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wareone/tappmt/Currency;->_refresh()V

    .line 219
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 221
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/wareone/tappmt/Currency$2$1;->this$1:Lcom/wareone/tappmt/Currency$2;

    #getter for: Lcom/wareone/tappmt/Currency$2;->this$0:Lcom/wareone/tappmt/Currency;
    invoke-static {v1}, Lcom/wareone/tappmt/Currency$2;->access$0(Lcom/wareone/tappmt/Currency$2;)Lcom/wareone/tappmt/Currency;

    move-result-object v1

    const v2, 0x7f09008c

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
