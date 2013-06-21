.class Lcom/wareone/tappmt/Transaction$22;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Transaction;->_initControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Transaction;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Transaction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$22;->this$0:Lcom/wareone/tappmt/Transaction;

    .line 1885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Transaction$22;)Lcom/wareone/tappmt/Transaction;
    .locals 1
    .parameter

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$22;->this$0:Lcom/wareone/tappmt/Transaction;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1888
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$22;->this$0:Lcom/wareone/tappmt/Transaction;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1889
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$25()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$25()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "currency"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1890
    new-instance v3, Lcom/wareone/tappmt/Transaction$22$1;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/Transaction$22$1;-><init>(Lcom/wareone/tappmt/Transaction$22;)V

    .line 1889
    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1903
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1904
    return-void
.end method
