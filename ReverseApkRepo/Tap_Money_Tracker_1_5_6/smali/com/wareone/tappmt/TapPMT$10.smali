.class Lcom/wareone/tappmt/TapPMT$10;
.super Ljava/lang/Object;
.source "TapPMT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMT;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/TapPMT;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$10;->this$0:Lcom/wareone/tappmt/TapPMT;

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$10;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT;->access$10(Lcom/wareone/tappmt/TapPMT;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->restore()V

    .line 670
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$10;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-virtual {v0}, Lcom/wareone/tappmt/TapPMT;->_refresh()V

    .line 671
    return-void
.end method
