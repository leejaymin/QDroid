.class Lcom/donple/cpa/CpaModule$11;
.super Ljava/lang/Object;
.source "CpaModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/donple/cpa/CpaModule;->agreementDialog()V
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
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$11;->this$0:Lcom/donple/cpa/CpaModule;

    .line 2421
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
    .line 2426
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 2429
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2431
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$11;->this$0:Lcom/donple/cpa/CpaModule;

    #calls: Lcom/donple/cpa/CpaModule;->activityClose()V
    invoke-static {v0}, Lcom/donple/cpa/CpaModule;->access$31(Lcom/donple/cpa/CpaModule;)V

    .line 2433
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
