.class Lcom/wareone/tappmt/TapPMT$20;
.super Ljava/lang/Object;
.source "TapPMT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMT;->_showRegister(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$20;->this$0:Lcom/wareone/tappmt/TapPMT;

    .line 1319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1323
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT$20;->this$0:Lcom/wareone/tappmt/TapPMT;

    const-class v2, Lcom/wareone/tappmt/Register;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1324
    .local v0, it:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT$20;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-virtual {v1, v0}, Lcom/wareone/tappmt/TapPMT;->startActivity(Landroid/content/Intent;)V

    .line 1326
    return-void
.end method
