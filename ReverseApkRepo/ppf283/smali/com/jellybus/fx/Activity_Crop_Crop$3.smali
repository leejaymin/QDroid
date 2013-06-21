.class Lcom/jellybus/fx/Activity_Crop_Crop$3;
.super Ljava/lang/Object;
.source "Activity_Crop_Crop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Crop_Crop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Crop_Crop;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Crop_Crop;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const v2, 0x7f020092

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->current_ratio:I
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$6(Lcom/jellybus/fx/Activity_Crop_Crop;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->current_ratio:I
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$6(Lcom/jellybus/fx/Activity_Crop_Crop;)I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_free:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$7(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_free:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$7(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 195
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    #calls: Lcom/jellybus/fx/Activity_Crop_Crop;->checkRatioID(I)V
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$13(Lcom/jellybus/fx/Activity_Crop_Crop;I)V

    .line 196
    const v0, 0x7f020093

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 197
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    #setter for: Lcom/jellybus/fx/Activity_Crop_Crop;->current_ratio:I
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$14(Lcom/jellybus/fx/Activity_Crop_Crop;I)V

    .line 198
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    #calls: Lcom/jellybus/fx/Activity_Crop_Crop;->changeMainButtonratio(I)V
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$15(Lcom/jellybus/fx/Activity_Crop_Crop;I)V

    .line 199
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->current_ratio:I
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$6(Lcom/jellybus/fx/Activity_Crop_Crop;)I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_11:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$8(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 184
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_11:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$8(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->current_ratio:I
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$6(Lcom/jellybus/fx/Activity_Crop_Crop;)I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_23:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$9(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 186
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_23:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$9(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->current_ratio:I
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$6(Lcom/jellybus/fx/Activity_Crop_Crop;)I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_32:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$10(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 188
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_32:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$10(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->current_ratio:I
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$6(Lcom/jellybus/fx/Activity_Crop_Crop;)I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_34:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$11(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 190
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_34:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$11(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->current_ratio:I
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$6(Lcom/jellybus/fx/Activity_Crop_Crop;)I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_43:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$12(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$3;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_43:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$12(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method
