.class Lcom/donple/cpa/CpaModule$2;
.super Ljava/lang/Object;
.source "CpaModule.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/donple/cpa/CpaModule;->initLayout()V
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
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$2;->this$0:Lcom/donple/cpa/CpaModule;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 362
    iget-object v3, p0, Lcom/donple/cpa/CpaModule$2;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->llRootLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$27(Lcom/donple/cpa/CpaModule;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/donple/cpa/CpaModule$2;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->llRootLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/donple/cpa/CpaModule;->access$27(Lcom/donple/cpa/CpaModule;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sub-int v0, v3, v4

    .line 363
    .local v0, heightDiff:I
    const/16 v3, 0x80

    if-le v0, v3, :cond_2

    .line 365
    iget-object v3, p0, Lcom/donple/cpa/CpaModule$2;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->bKeyboardState:Z
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$28(Lcom/donple/cpa/CpaModule;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 367
    const-string v3, "KEYBOARD\uac00 SHOW \ub420 \ub54c\uc758 \uc774\ubca4\ud2b8\ub97c \uad6c\ud604\ud55c\ub2e4."

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 370
    iget-object v3, p0, Lcom/donple/cpa/CpaModule$2;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->rlBottomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$29(Lcom/donple/cpa/CpaModule;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 372
    iget-object v3, p0, Lcom/donple/cpa/CpaModule$2;->this$0:Lcom/donple/cpa/CpaModule;

    iget-object v4, p0, Lcom/donple/cpa/CpaModule$2;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->bKeyboardState:Z
    invoke-static {v4}, Lcom/donple/cpa/CpaModule;->access$28(Lcom/donple/cpa/CpaModule;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    #setter for: Lcom/donple/cpa/CpaModule;->bKeyboardState:Z
    invoke-static {v3, v1}, Lcom/donple/cpa/CpaModule;->access$30(Lcom/donple/cpa/CpaModule;Z)V

    .line 387
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 372
    goto :goto_0

    .line 377
    :cond_2
    iget-object v3, p0, Lcom/donple/cpa/CpaModule$2;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->bKeyboardState:Z
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$28(Lcom/donple/cpa/CpaModule;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    const-string v3, "KEYBOARD\uac00 HIDE \ub420 \ub54c\uc758 \uc774\ubca4\ud2b8\ub97c \uad6c\ud604\ud55c\ub2e4."

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/donple/cpa/CpaModule$2;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->rlBottomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$29(Lcom/donple/cpa/CpaModule;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 384
    iget-object v3, p0, Lcom/donple/cpa/CpaModule$2;->this$0:Lcom/donple/cpa/CpaModule;

    iget-object v4, p0, Lcom/donple/cpa/CpaModule$2;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->bKeyboardState:Z
    invoke-static {v4}, Lcom/donple/cpa/CpaModule;->access$28(Lcom/donple/cpa/CpaModule;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    #setter for: Lcom/donple/cpa/CpaModule;->bKeyboardState:Z
    invoke-static {v3, v1}, Lcom/donple/cpa/CpaModule;->access$30(Lcom/donple/cpa/CpaModule;Z)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
