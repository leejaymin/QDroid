.class Lcom/donple/cpa/CpaModule$13;
.super Ljava/lang/Object;
.source "CpaModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/donple/cpa/CpaModule;->alertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/donple/cpa/CpaModule;

.field private final synthetic val$isFinish:Z


# direct methods
.method constructor <init>(Lcom/donple/cpa/CpaModule;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$13;->this$0:Lcom/donple/cpa/CpaModule;

    iput-boolean p2, p0, Lcom/donple/cpa/CpaModule$13;->val$isFinish:Z

    .line 2474
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
    .line 2479
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 2482
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2485
    iget-boolean v0, p0, Lcom/donple/cpa/CpaModule$13;->val$isFinish:Z

    if-eqz v0, :cond_0

    .line 2487
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$13;->this$0:Lcom/donple/cpa/CpaModule;

    #calls: Lcom/donple/cpa/CpaModule;->activityClose()V
    invoke-static {v0}, Lcom/donple/cpa/CpaModule;->access$31(Lcom/donple/cpa/CpaModule;)V

    .line 2490
    :cond_0
    const/4 v0, 0x0

    return v0
.end method