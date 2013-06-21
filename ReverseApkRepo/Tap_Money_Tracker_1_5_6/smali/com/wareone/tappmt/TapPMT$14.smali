.class Lcom/wareone/tappmt/TapPMT$14;
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
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$14;->this$0:Lcom/wareone/tappmt/TapPMT;

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$14;->this$0:Lcom/wareone/tappmt/TapPMT;

    #calls: Lcom/wareone/tappmt/TapPMT;->_doSendMail()V
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT;->access$19(Lcom/wareone/tappmt/TapPMT;)V

    .line 735
    return-void
.end method
