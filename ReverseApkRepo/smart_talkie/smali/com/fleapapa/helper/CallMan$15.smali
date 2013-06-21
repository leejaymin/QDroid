.class Lcom/fleapapa/helper/CallMan$15;
.super Ljava/lang/Object;
.source "CallMan.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallMan;->gotoCall(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
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
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$15;->this$0:Lcom/fleapapa/helper/CallMan;

    iput-object p2, p0, Lcom/fleapapa/helper/CallMan$15;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fleapapa/helper/CallMan$15;)Lcom/fleapapa/helper/CallMan;
    .locals 1
    .parameter

    .prologue
    .line 509
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$15;->this$0:Lcom/fleapapa/helper/CallMan;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 511
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$15;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v1, v1, Lcom/fleapapa/helper/CallMan;->badapter:Lcom/fleapapa/helper/CallMan$BurstAdapter;

    invoke-virtual {v1, p3}, Lcom/fleapapa/helper/CallMan$BurstAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Burst;

    .line 512
    .local v0, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    iget-byte v1, v0, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    if-nez v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$15;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v1, p3, v3}, Lcom/fleapapa/helper/CallPapa$Call;->playBursts(IZ)V

    .line 514
    iget-object v2, p0, Lcom/fleapapa/helper/CallMan$15;->this$0:Lcom/fleapapa/helper/CallMan;

    const v1, 0x7f080011

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/fleapapa/helper/CallMan;->vstop:Landroid/widget/ImageView;

    .line 515
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$15;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v1, v1, Lcom/fleapapa/helper/CallMan;->vstop:Landroid/widget/ImageView;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 516
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$15;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v1, v1, Lcom/fleapapa/helper/CallMan;->vstop:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$15;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v1, v1, Lcom/fleapapa/helper/CallMan;->vstop:Landroid/widget/ImageView;

    new-instance v2, Lcom/fleapapa/helper/CallMan$15$1;

    invoke-direct {v2, p0, v0}, Lcom/fleapapa/helper/CallMan$15$1;-><init>(Lcom/fleapapa/helper/CallMan$15;Lcom/fleapapa/helper/CallPapa$Burst;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    :cond_0
    return-void
.end method
