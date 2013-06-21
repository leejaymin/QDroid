.class Lnet/londatiga/android/QuickAction$1;
.super Ljava/lang/Object;
.source "QuickAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/londatiga/android/QuickAction;

.field private final synthetic val$actionId:I

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lnet/londatiga/android/QuickAction;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/londatiga/android/QuickAction$1;->this$0:Lnet/londatiga/android/QuickAction;

    iput p2, p0, Lnet/londatiga/android/QuickAction$1;->val$pos:I

    iput p3, p0, Lnet/londatiga/android/QuickAction$1;->val$actionId:I

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 195
    iget-object v0, p0, Lnet/londatiga/android/QuickAction$1;->this$0:Lnet/londatiga/android/QuickAction;

    #getter for: Lnet/londatiga/android/QuickAction;->mItemClickListener:Lnet/londatiga/android/QuickAction$OnActionItemClickListener;
    invoke-static {v0}, Lnet/londatiga/android/QuickAction;->access$0(Lnet/londatiga/android/QuickAction;)Lnet/londatiga/android/QuickAction$OnActionItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lnet/londatiga/android/QuickAction$1;->this$0:Lnet/londatiga/android/QuickAction;

    #getter for: Lnet/londatiga/android/QuickAction;->mItemClickListener:Lnet/londatiga/android/QuickAction$OnActionItemClickListener;
    invoke-static {v0}, Lnet/londatiga/android/QuickAction;->access$0(Lnet/londatiga/android/QuickAction;)Lnet/londatiga/android/QuickAction$OnActionItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lnet/londatiga/android/QuickAction$1;->this$0:Lnet/londatiga/android/QuickAction;

    iget v2, p0, Lnet/londatiga/android/QuickAction$1;->val$pos:I

    .line 197
    iget v3, p0, Lnet/londatiga/android/QuickAction$1;->val$actionId:I

    .line 196
    invoke-interface {v0, v1, v2, v3}, Lnet/londatiga/android/QuickAction$OnActionItemClickListener;->onItemClick(Lnet/londatiga/android/QuickAction;II)V

    .line 200
    :cond_0
    iget-object v0, p0, Lnet/londatiga/android/QuickAction$1;->this$0:Lnet/londatiga/android/QuickAction;

    iget v1, p0, Lnet/londatiga/android/QuickAction$1;->val$pos:I

    invoke-virtual {v0, v1}, Lnet/londatiga/android/QuickAction;->getActionItem(I)Lnet/londatiga/android/ActionItem;

    move-result-object v0

    invoke-virtual {v0}, Lnet/londatiga/android/ActionItem;->isSticky()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lnet/londatiga/android/QuickAction$1;->this$0:Lnet/londatiga/android/QuickAction;

    const/4 v1, 0x1

    #setter for: Lnet/londatiga/android/QuickAction;->mDidAction:Z
    invoke-static {v0, v1}, Lnet/londatiga/android/QuickAction;->access$1(Lnet/londatiga/android/QuickAction;Z)V

    .line 203
    iget-object v0, p0, Lnet/londatiga/android/QuickAction$1;->this$0:Lnet/londatiga/android/QuickAction;

    invoke-virtual {v0}, Lnet/londatiga/android/QuickAction;->dismiss()V

    .line 205
    :cond_1
    return-void
.end method
