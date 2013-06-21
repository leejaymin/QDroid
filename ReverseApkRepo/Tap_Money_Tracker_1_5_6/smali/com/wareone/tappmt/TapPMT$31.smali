.class Lcom/wareone/tappmt/TapPMT$31;
.super Ljava/lang/Object;
.source "TapPMT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMT;->_login()V
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
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$31;->this$0:Lcom/wareone/tappmt/TapPMT;

    .line 1689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$31;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-virtual {v0}, Lcom/wareone/tappmt/TapPMT;->_refresh()V

    .line 1695
    return-void
.end method
