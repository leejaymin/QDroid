.class Lcom/wareone/tappmt/Transaction$10;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Transaction;->_getTemplates()V
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
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$10;->this$0:Lcom/wareone/tappmt/Transaction;

    .line 1413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 1418
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1419
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$10;->this$0:Lcom/wareone/tappmt/Transaction;

    invoke-virtual {v0}, Lcom/wareone/tappmt/Transaction;->finish()V

    .line 1420
    return-void
.end method
