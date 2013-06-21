.class Lcom/wareone/tappmt/Currency$6;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Currency;->_setDefaultCurrency()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Currency;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Currency;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Currency$6;->this$0:Lcom/wareone/tappmt/Currency;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/wareone/tappmt/Currency$6;->this$0:Lcom/wareone/tappmt/Currency;

    #getter for: Lcom/wareone/tappmt/Currency;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v0}, Lcom/wareone/tappmt/Currency;->access$4(Lcom/wareone/tappmt/Currency;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/wareone/tappmt/Currency$6;->this$0:Lcom/wareone/tappmt/Currency;

    #getter for: Lcom/wareone/tappmt/Currency;->m_values:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/wareone/tappmt/Currency;->access$3(Lcom/wareone/tappmt/Currency;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "currency_name"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->setDefaultCurrency(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/wareone/tappmt/Currency$6;->this$0:Lcom/wareone/tappmt/Currency;

    invoke-virtual {v0}, Lcom/wareone/tappmt/Currency;->_refresh()V

    .line 429
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 430
    return-void
.end method
