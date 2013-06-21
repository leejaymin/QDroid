.class Lcom/wareone/tappmt/Transaction$27;
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
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$27;->this$0:Lcom/wareone/tappmt/Transaction;

    .line 1997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$27;->this$0:Lcom/wareone/tappmt/Transaction;

    invoke-virtual {v0}, Lcom/wareone/tappmt/Transaction;->finish()V

    .line 2000
    return-void
.end method
