.class Lcom/wareone/tappmt/General$2;
.super Ljava/lang/Object;
.source "General.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/General;->_doAction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/General;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/General;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/General$2;->this$0:Lcom/wareone/tappmt/General;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 504
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wareone/tappmt/General$2;->this$0:Lcom/wareone/tappmt/General;

    const-class v2, Lcom/wareone/tappmt/Register;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 505
    .local v0, it:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wareone/tappmt/General$2;->this$0:Lcom/wareone/tappmt/General;

    invoke-virtual {v1, v0}, Lcom/wareone/tappmt/General;->startActivity(Landroid/content/Intent;)V

    .line 506
    iget-object v1, p0, Lcom/wareone/tappmt/General$2;->this$0:Lcom/wareone/tappmt/General;

    invoke-virtual {v1}, Lcom/wareone/tappmt/General;->finish()V

    .line 508
    return-void
.end method
