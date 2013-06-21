.class Lcom/wolfram/android/alpha/QueryTask$4;
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


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/QueryTask;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/wolfram/android/alpha/QueryTask$4;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 243
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$4;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->computing_bar_view:Landroid/view/View;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$600(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$4;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->computing_bar_view:Landroid/view/View;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$600(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 245
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$4;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->computing_bar_view:Landroid/view/View;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$600(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$4;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->conn_compu_commu_label:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$500(Lcom/wolfram/android/alpha/QueryTask;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0c008d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$4;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->connecting_bar_view:Landroid/view/View;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$700(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$4;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask$4;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->cp:Landroid/view/View;
    invoke-static {v2}, Lcom/wolfram/android/alpha/QueryTask;->access$300(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #setter for: Lcom/wolfram/android/alpha/QueryTask;->communicating_bar_view:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/wolfram/android/alpha/QueryTask;->access$802(Lcom/wolfram/android/alpha/QueryTask;Landroid/view/View;)Landroid/view/View;

    .line 250
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$4;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->communicating_bar_view:Landroid/view/View;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$800(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$4;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->communicating_bar_view:Landroid/view/View;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$800(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 252
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$4;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->communicating_bar_view:Landroid/view/View;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$800(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 253
    .local v0, communicatingBar_Animation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 255
    .end local v0           #communicatingBar_Animation:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-void
.end method
