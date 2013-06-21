.class Lcom/wareone/tappmt/Currency$5;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Currency;->_setSymbol()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Currency;

.field private final synthetic val$symbols:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Currency;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Currency$5;->this$0:Lcom/wareone/tappmt/Currency;

    iput-object p2, p0, Lcom/wareone/tappmt/Currency$5;->val$symbols:[Ljava/lang/String;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "pos"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/wareone/tappmt/Currency$5;->this$0:Lcom/wareone/tappmt/Currency;

    #getter for: Lcom/wareone/tappmt/Currency;->m_values:Landroid/content/ContentValues;
    invoke-static {v0}, Lcom/wareone/tappmt/Currency;->access$3(Lcom/wareone/tappmt/Currency;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "symbol"

    iget-object v2, p0, Lcom/wareone/tappmt/Currency$5;->val$symbols:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/wareone/tappmt/Currency$5;->this$0:Lcom/wareone/tappmt/Currency;

    #getter for: Lcom/wareone/tappmt/Currency;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v0}, Lcom/wareone/tappmt/Currency;->access$4(Lcom/wareone/tappmt/Currency;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v0

    const-string v1, "currency"

    iget-object v2, p0, Lcom/wareone/tappmt/Currency$5;->this$0:Lcom/wareone/tappmt/Currency;

    #getter for: Lcom/wareone/tappmt/Currency;->m_values:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/wareone/tappmt/Currency;->access$3(Lcom/wareone/tappmt/Currency;)Landroid/content/ContentValues;

    move-result-object v2

    iget-object v3, p0, Lcom/wareone/tappmt/Currency$5;->this$0:Lcom/wareone/tappmt/Currency;

    #getter for: Lcom/wareone/tappmt/Currency;->m_values:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/wareone/tappmt/Currency;->access$3(Lcom/wareone/tappmt/Currency;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Long;)J

    .line 408
    iget-object v0, p0, Lcom/wareone/tappmt/Currency$5;->this$0:Lcom/wareone/tappmt/Currency;

    invoke-virtual {v0}, Lcom/wareone/tappmt/Currency;->_refresh()V

    .line 410
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 411
    return-void
.end method
