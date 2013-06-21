.class Lcom/donple/cpa/CpaModule$9;
.super Ljava/lang/Object;
.source "CpaModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$9;->this$0:Lcom/donple/cpa/CpaModule;

    .line 2396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2402
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2405
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$9;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/donple/cpa/CpaModule;->access$34(Lcom/donple/cpa/CpaModule;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2407
    return-void
.end method
