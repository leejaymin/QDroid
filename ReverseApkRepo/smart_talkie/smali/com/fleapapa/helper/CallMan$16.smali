.class Lcom/fleapapa/helper/CallMan$16;
.super Ljava/lang/Object;
.source "CallMan.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallMan;->gotoCall(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallMan;

.field private final synthetic val$call:Lcom/fleapapa/helper/CallPapa$Call;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallMan;Lcom/fleapapa/helper/CallPapa$Call;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$16;->this$0:Lcom/fleapapa/helper/CallMan;

    iput-object p2, p0, Lcom/fleapapa/helper/CallMan$16;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$16;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$16;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallMan;->selectPeers(Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 532
    return-void
.end method
