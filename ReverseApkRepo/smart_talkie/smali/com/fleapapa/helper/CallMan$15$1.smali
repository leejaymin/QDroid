.class Lcom/fleapapa/helper/CallMan$15$1;
.super Ljava/lang/Object;
.source "CallMan.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallMan$15;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/CallMan$15;

.field private final synthetic val$burst:Lcom/fleapapa/helper/CallPapa$Burst;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallMan$15;Lcom/fleapapa/helper/CallPapa$Burst;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$15$1;->this$1:Lcom/fleapapa/helper/CallMan$15;

    iput-object p2, p0, Lcom/fleapapa/helper/CallMan$15$1;->val$burst:Lcom/fleapapa/helper/CallPapa$Burst;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$15$1;->val$burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-byte v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 523
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$15$1;->val$burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Call;->stopPlayer()V

    .line 521
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$15$1;->this$1:Lcom/fleapapa/helper/CallMan$15;

    #getter for: Lcom/fleapapa/helper/CallMan$15;->this$0:Lcom/fleapapa/helper/CallMan;
    invoke-static {v0}, Lcom/fleapapa/helper/CallMan$15;->access$0(Lcom/fleapapa/helper/CallMan$15;)Lcom/fleapapa/helper/CallMan;

    move-result-object v0

    iget-object v0, v0, Lcom/fleapapa/helper/CallMan;->vstop:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$15$1;->this$1:Lcom/fleapapa/helper/CallMan$15;

    #getter for: Lcom/fleapapa/helper/CallMan$15;->this$0:Lcom/fleapapa/helper/CallMan;
    invoke-static {v0}, Lcom/fleapapa/helper/CallMan$15;->access$0(Lcom/fleapapa/helper/CallMan$15;)Lcom/fleapapa/helper/CallMan;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fleapapa/helper/CallMan;->vstop:Landroid/widget/ImageView;

    goto :goto_0
.end method
