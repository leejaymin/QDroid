.class Lcom/donple/cpa/CpaModule$8;
.super Ljava/lang/Object;
.source "CpaModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/donple/cpa/CpaModule;->devmodeAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/donple/cpa/CpaModule;


# direct methods
.method constructor <init>(Lcom/donple/cpa/CpaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$8;->this$0:Lcom/donple/cpa/CpaModule;

    .line 2363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2368
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 2370
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2371
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$8;->this$0:Lcom/donple/cpa/CpaModule;

    invoke-virtual {v0}, Lcom/donple/cpa/CpaModule;->finish()V

    .line 2373
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
