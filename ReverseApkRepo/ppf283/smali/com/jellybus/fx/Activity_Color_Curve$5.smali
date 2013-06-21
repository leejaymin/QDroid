.class Lcom/jellybus/fx/Activity_Color_Curve$5;
.super Ljava/lang/Object;
.source "Activity_Color_Curve.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Color_Curve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Color_Curve;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Color_Curve;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Curve$5;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    .line 248
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

    .line 251
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 253
    :pswitch_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Curve$5;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->color_button_compare:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Curve;->access$17(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200c6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Curve$5;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curve_pic:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Curve;->access$18(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$5;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->access$19(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 255
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Curve$5;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curve_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Curve;->access$20(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Before"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Curve$5;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curve_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Curve;->access$20(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$5;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curve_sub_layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$21(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$5;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curve_sub_layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$21(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$5;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #setter for: Lcom/jellybus/fx/Activity_Color_Curve;->isSubOn:Z
    invoke-static {v1, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$22(Lcom/jellybus/fx/Activity_Color_Curve;Z)V

    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Curve$5;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->color_button_compare:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Curve;->access$17(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200c5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Curve$5;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curve_pic:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Curve;->access$18(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$5;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->access$23(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 265
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Curve$5;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curve_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Curve;->access$20(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Curve$5;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->isSubOn:Z
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Curve;->access$24(Lcom/jellybus/fx/Activity_Color_Curve;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Curve$5;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curve_sub_layout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Curve;->access$21(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
