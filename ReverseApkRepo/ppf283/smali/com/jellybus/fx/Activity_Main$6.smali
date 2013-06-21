.class Lcom/jellybus/fx/Activity_Main$6;
.super Ljava/lang/Object;
.source "Activity_Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Main;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$6;->this$0:Lcom/jellybus/fx/Activity_Main;

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 732
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$6;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$0(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$6;->this$0:Lcom/jellybus/fx/Activity_Main;

    #calls: Lcom/jellybus/fx/Activity_Main;->toggle_main_icon(Z)V
    invoke-static {v0, v3}, Lcom/jellybus/fx/Activity_Main;->access$15(Lcom/jellybus/fx/Activity_Main;Z)V

    .line 736
    const v0, 0x7f0200f7

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 737
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 738
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$6;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->flipper_SubMenu:Landroid/widget/ViewFlipper;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$16(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$6;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_bar_layout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$17(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$6;->this$0:Lcom/jellybus/fx/Activity_Main;

    #setter for: Lcom/jellybus/fx/Activity_Main;->check_main_button_isSelected:I
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Main;->access$18(Lcom/jellybus/fx/Activity_Main;I)V

    .line 741
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$6;->this$0:Lcom/jellybus/fx/Activity_Main;

    #calls: Lcom/jellybus/fx/Activity_Main;->reset_main_bar()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$19(Lcom/jellybus/fx/Activity_Main;)V

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    const v0, 0x7f0200f8

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 745
    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 746
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$6;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->check_main_button_isSelected:I
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$20(Lcom/jellybus/fx/Activity_Main;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 748
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$6;->this$0:Lcom/jellybus/fx/Activity_Main;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$6;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->check_main_button_isSelected:I
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$20(Lcom/jellybus/fx/Activity_Main;)I

    move-result v1

    #calls: Lcom/jellybus/fx/Activity_Main;->reset_main_button(I)V
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Main;->access$21(Lcom/jellybus/fx/Activity_Main;I)V

    .line 749
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$6;->this$0:Lcom/jellybus/fx/Activity_Main;

    #calls: Lcom/jellybus/fx/Activity_Main;->reset_main_bar()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$19(Lcom/jellybus/fx/Activity_Main;)V

    .line 752
    :cond_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$6;->this$0:Lcom/jellybus/fx/Activity_Main;

    #calls: Lcom/jellybus/fx/Activity_Main;->toggle_main_icon(Z)V
    invoke-static {v0, v3}, Lcom/jellybus/fx/Activity_Main;->access$15(Lcom/jellybus/fx/Activity_Main;Z)V

    .line 753
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$6;->this$0:Lcom/jellybus/fx/Activity_Main;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$6;->this$0:Lcom/jellybus/fx/Activity_Main;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    #calls: Lcom/jellybus/fx/Activity_Main;->check_view_id(I)I
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Main;->access$22(Lcom/jellybus/fx/Activity_Main;I)I

    move-result v1

    #setter for: Lcom/jellybus/fx/Activity_Main;->check_main_button_isSelected:I
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Main;->access$18(Lcom/jellybus/fx/Activity_Main;I)V

    .line 754
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$6;->this$0:Lcom/jellybus/fx/Activity_Main;

    #calls: Lcom/jellybus/fx/Activity_Main;->toggle_main_icon(Z)V
    invoke-static {v0, v4}, Lcom/jellybus/fx/Activity_Main;->access$15(Lcom/jellybus/fx/Activity_Main;Z)V

    .line 756
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$6;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->flipper_SubMenu:Landroid/widget/ViewFlipper;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$16(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$6;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_bar_layout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$17(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
