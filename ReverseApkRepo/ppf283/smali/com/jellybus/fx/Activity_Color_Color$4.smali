.class Lcom/jellybus/fx/Activity_Color_Color$4;
.super Ljava/lang/Object;
.source "Activity_Color_Color.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Color_Color;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Color_Color;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Color_Color;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Color$4;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    .line 303
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

    .line 306
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 325
    :cond_0
    :goto_0
    return v0

    .line 308
    :pswitch_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Color$4;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_button_compare:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Color;->access$14(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200c6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 309
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Color$4;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_pic:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Color;->access$15(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$4;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->compare:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Color;->access$16(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 310
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Color$4;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Color;->access$17(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Before"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Color$4;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Color;->access$17(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$4;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_sub_layout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Color;->access$18(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$4;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_sub_layout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Color;->access$18(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$4;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->isSubOn:Z
    invoke-static {v1, v0}, Lcom/jellybus/fx/Activity_Color_Color;->access$19(Lcom/jellybus/fx/Activity_Color_Color;Z)V

    goto :goto_0

    .line 318
    :pswitch_1
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Color$4;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_button_compare:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Color;->access$14(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200c5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Color$4;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_pic:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Color;->access$15(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$4;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Color;->access$20(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 320
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Color$4;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Color;->access$17(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Color$4;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->isSubOn:Z
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Color;->access$21(Lcom/jellybus/fx/Activity_Color_Color;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Color$4;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_sub_layout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Color;->access$18(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
