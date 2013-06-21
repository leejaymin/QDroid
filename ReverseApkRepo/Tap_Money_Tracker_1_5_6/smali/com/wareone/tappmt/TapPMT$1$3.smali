.class Lcom/wareone/tappmt/TapPMT$1$3;
.super Ljava/lang/Object;
.source "TapPMT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMT$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/TapPMT$1;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TapPMT$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$1$3;->this$1:Lcom/wareone/tappmt/TapPMT$1;

    .line 1815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1820
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1822
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$1$3;->this$1:Lcom/wareone/tappmt/TapPMT$1;

    #getter for: Lcom/wareone/tappmt/TapPMT$1;->this$0:Lcom/wareone/tappmt/TapPMT;
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT$1;->access$0(Lcom/wareone/tappmt/TapPMT$1;)Lcom/wareone/tappmt/TapPMT;

    move-result-object v0

    #calls: Lcom/wareone/tappmt/TapPMT;->_downloadAll()V
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT;->access$5(Lcom/wareone/tappmt/TapPMT;)V

    .line 1824
    return-void
.end method
