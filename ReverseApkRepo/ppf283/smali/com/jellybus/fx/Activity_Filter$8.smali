.class Lcom/jellybus/fx/Activity_Filter$8;
.super Ljava/lang/Object;
.source "Activity_Filter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Filter;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Filter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Filter$8;->this$0:Lcom/jellybus/fx/Activity_Filter;

    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 849
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 868
    :cond_0
    :goto_0
    return v0

    .line 851
    :pswitch_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$8;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_button_compare:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$33(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200c6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 852
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$8;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$3(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter$8;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Filter;->access$29(Lcom/jellybus/fx/Activity_Filter;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 853
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$8;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$34(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Before"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$8;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$34(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 855
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$8;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_sub:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Filter;->access$35(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$8;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_sub:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Filter;->access$35(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 857
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$8;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #setter for: Lcom/jellybus/fx/Activity_Filter;->isSubOn:Z
    invoke-static {v1, v0}, Lcom/jellybus/fx/Activity_Filter;->access$36(Lcom/jellybus/fx/Activity_Filter;Z)V

    goto :goto_0

    .line 861
    :pswitch_1
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$8;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_button_compare:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$33(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200c5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 862
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$8;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$3(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter$8;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Filter;->access$31(Lcom/jellybus/fx/Activity_Filter;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 863
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$8;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$34(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 864
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$8;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->isSubOn:Z
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$37(Lcom/jellybus/fx/Activity_Filter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 865
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$8;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_sub:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$35(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 849
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
