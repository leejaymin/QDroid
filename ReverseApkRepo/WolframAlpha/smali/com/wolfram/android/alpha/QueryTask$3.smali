.class Lcom/wolfram/android/alpha/QueryTask$3;
.super Ljava/lang/Object;
.source "QueryTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/QueryTask;->setAllRunnables()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/QueryTask;

.field final synthetic val$contentView:Landroid/view/ViewGroup;

.field final synthetic val$params:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/QueryTask;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    iput-object p2, p0, Lcom/wolfram/android/alpha/QueryTask$3;->val$contentView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/wolfram/android/alpha/QueryTask$3;->val$params:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 216
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$200(Lcom/wolfram/android/alpha/QueryTask;)Lcom/wolfram/android/alpha/QueryResultAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wolfram/android/alpha/QueryResultAdapter;->setQueryResult(Lcom/wolfram/alpha/WAQueryResult;)V

    .line 217
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$200(Lcom/wolfram/android/alpha/QueryTask;)Lcom/wolfram/android/alpha/QueryResultAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->notifyDataSetChanged()V

    .line 219
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->cp:Landroid/view/View;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$300(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->queryResultsView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/wolfram/android/alpha/QueryTask;->access$400(Lcom/wolfram/android/alpha/QueryTask;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->from(Landroid/content/Context;)Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v2

    const v3, 0x7f030012

    invoke-virtual {v2, v3, v4}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    #setter for: Lcom/wolfram/android/alpha/QueryTask;->cp:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/wolfram/android/alpha/QueryTask;->access$302(Lcom/wolfram/android/alpha/QueryTask;Landroid/view/View;)Landroid/view/View;

    .line 221
    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->cp:Landroid/view/View;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$300(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0e000b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    #setter for: Lcom/wolfram/android/alpha/QueryTask;->conn_compu_commu_label:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/wolfram/android/alpha/QueryTask;->access$502(Lcom/wolfram/android/alpha/QueryTask;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 222
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$3;->val$contentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->cp:Landroid/view/View;
    invoke-static {v2}, Lcom/wolfram/android/alpha/QueryTask;->access$300(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask$3;->val$params:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->connecting_bar_view:Landroid/view/View;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$700(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->cp:Landroid/view/View;
    invoke-static {v2}, Lcom/wolfram/android/alpha/QueryTask;->access$300(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #setter for: Lcom/wolfram/android/alpha/QueryTask;->connecting_bar_view:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/wolfram/android/alpha/QueryTask;->access$702(Lcom/wolfram/android/alpha/QueryTask;Landroid/view/View;)Landroid/view/View;

    .line 226
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->connecting_bar_view:Landroid/view/View;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$700(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 227
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->connecting_bar_view:Landroid/view/View;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$700(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 228
    .local v0, connectingBar_Animation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 230
    .end local v0           #connectingBar_Animation:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->computing_bar_view:Landroid/view/View;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$600(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->computing_bar_view:Landroid/view/View;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$600(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 232
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->computing_bar_view:Landroid/view/View;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$600(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_2
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->connecting_bar_view:Landroid/view/View;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$700(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$3;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->conn_compu_commu_label:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$500(Lcom/wolfram/android/alpha/QueryTask;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0c008e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 236
    return-void
.end method
