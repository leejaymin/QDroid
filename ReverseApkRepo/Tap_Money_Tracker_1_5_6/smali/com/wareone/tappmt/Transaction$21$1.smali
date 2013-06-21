.class Lcom/wareone/tappmt/Transaction$21$1;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Transaction$21;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/Transaction$21;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Transaction$21;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$21$1;->this$1:Lcom/wareone/tappmt/Transaction$21;

    iput-object p2, p0, Lcom/wareone/tappmt/Transaction$21$1;->val$input:Landroid/widget/EditText;

    .line 1843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1850
    :try_start_0
    iget-object v4, p0, Lcom/wareone/tappmt/Transaction$21$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1851
    .local v2, rate:D
    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->round(DI)D

    move-result-wide v2

    .line 1852
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "acc_rate"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    iget-object v4, p0, Lcom/wareone/tappmt/Transaction$21$1;->this$1:Lcom/wareone/tappmt/Transaction$21;

    #getter for: Lcom/wareone/tappmt/Transaction$21;->this$0:Lcom/wareone/tappmt/Transaction;
    invoke-static {v4}, Lcom/wareone/tappmt/Transaction$21;->access$0(Lcom/wareone/tappmt/Transaction$21;)Lcom/wareone/tappmt/Transaction;

    move-result-object v4

    const v5, 0x7f0c0026

    invoke-virtual {v4, v5}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1858
    .local v0, btn_currency:Landroid/widget/Button;
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "currency"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1863
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1868
    .end local v0           #btn_currency:Landroid/widget/Button;
    .end local v2           #rate:D
    :goto_0
    return-void

    .line 1864
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1865
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/wareone/tappmt/Transaction$21$1;->this$1:Lcom/wareone/tappmt/Transaction$21;

    #getter for: Lcom/wareone/tappmt/Transaction$21;->this$0:Lcom/wareone/tappmt/Transaction;
    invoke-static {v4}, Lcom/wareone/tappmt/Transaction$21;->access$0(Lcom/wareone/tappmt/Transaction$21;)Lcom/wareone/tappmt/Transaction;

    move-result-object v4

    const v5, 0x7f09008c

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
