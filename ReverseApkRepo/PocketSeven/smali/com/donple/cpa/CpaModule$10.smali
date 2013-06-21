.class Lcom/donple/cpa/CpaModule$10;
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
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$10;->this$0:Lcom/donple/cpa/CpaModule;

    .line 2409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2415
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2418
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$10;->this$0:Lcom/donple/cpa/CpaModule;

    #calls: Lcom/donple/cpa/CpaModule;->activityClose()V
    invoke-static {v0}, Lcom/donple/cpa/CpaModule;->access$31(Lcom/donple/cpa/CpaModule;)V

    .line 2419
    return-void
.end method
