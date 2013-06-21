.class Lcom/wareone/tappmt/General$4;
.super Ljava/lang/Object;
.source "General.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/General;->_setDefaultCurrency()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/General;

.field private final synthetic val$m_data:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/General;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/General$4;->this$0:Lcom/wareone/tappmt/General;

    iput-object p2, p0, Lcom/wareone/tappmt/General$4;->val$m_data:Ljava/util/ArrayList;

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "pos"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/wareone/tappmt/General$4;->this$0:Lcom/wareone/tappmt/General;

    #getter for: Lcom/wareone/tappmt/General;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v0}, Lcom/wareone/tappmt/General;->access$2(Lcom/wareone/tappmt/General;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/wareone/tappmt/General$4;->val$m_data:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->setDefaultCurrency(Ljava/lang/String;)V

    .line 578
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 579
    return-void
.end method
