.class Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$3;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$3;->this$1:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$3;->this$1:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;

    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 245
    .local v0, vf:Landroid/widget/ViewFlipper;
    iget-object v1, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$3;->this$1:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;

    const v2, 0x7f0c003a

    invoke-virtual {v1, v2}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 246
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 248
    return-void
.end method
