.class Lcom/donple/cpa/CpaModule$6;
.super Ljava/lang/Object;
.source "CpaModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$6;->this$0:Lcom/donple/cpa/CpaModule;

    .line 2337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 2343
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$6;->this$0:Lcom/donple/cpa/CpaModule;

    #setter for: Lcom/donple/cpa/CpaModule;->devModeInitialize:Z
    invoke-static {v0, v1}, Lcom/donple/cpa/CpaModule;->access$33(Lcom/donple/cpa/CpaModule;Z)V

    .line 2345
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$6;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/donple/cpa/CpaModule;->access$34(Lcom/donple/cpa/CpaModule;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2348
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2349
    return-void
.end method
