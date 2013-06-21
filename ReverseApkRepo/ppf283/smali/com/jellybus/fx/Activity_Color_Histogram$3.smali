.class Lcom/jellybus/fx/Activity_Color_Histogram$3;
.super Ljava/lang/Object;
.source "Activity_Color_Histogram.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Color_Histogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Color_Histogram;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Color_Histogram;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$3;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    .line 174
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

    .line 178
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 180
    :pswitch_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram$3;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_button_compare:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$15(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200c6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram$3;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_pic:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$16(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$3;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->compare:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$17(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram$3;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$18(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Before"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram$3;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$18(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$3;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_sub_layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$19(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$3;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_sub_layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$19(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 186
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$3;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #setter for: Lcom/jellybus/fx/Activity_Color_Histogram;->isSubOn:Z
    invoke-static {v1, v0}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$20(Lcom/jellybus/fx/Activity_Color_Histogram;Z)V

    goto :goto_0

    .line 192
    :pswitch_1
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram$3;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_button_compare:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$15(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200c5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram$3;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_pic:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$16(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$3;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$21(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram$3;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$18(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram$3;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->isSubOn:Z
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$22(Lcom/jellybus/fx/Activity_Color_Histogram;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram$3;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_sub_layout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$19(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$3;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$9(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramButtonView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/HistogramButtonView;->invalidate()V

    .line 199
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$3;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$12(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramGraphView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/HistogramGraphView;->invalidate()V

    goto/16 :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
