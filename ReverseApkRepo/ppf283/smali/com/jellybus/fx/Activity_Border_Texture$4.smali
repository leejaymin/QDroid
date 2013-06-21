.class Lcom/jellybus/fx/Activity_Border_Texture$4;
.super Ljava/lang/Object;
.source "Activity_Border_Texture.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Texture;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Texture;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Texture$4;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    .line 465
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

    .line 469
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 488
    :cond_0
    :goto_0
    return v0

    .line 471
    :pswitch_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Texture$4;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_button_compare:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Texture;->access$3(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200c6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 472
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Texture$4;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_picture:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Texture;->access$1(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Texture$4;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Border_Texture;->access$4(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 473
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Texture$4;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Texture;->access$5(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Before"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Texture$4;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Texture;->access$5(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture$4;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_sub:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Texture;->access$6(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture$4;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_sub:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Texture;->access$6(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture$4;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #setter for: Lcom/jellybus/fx/Activity_Border_Texture;->isSubOn:Z
    invoke-static {v1, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->access$7(Lcom/jellybus/fx/Activity_Border_Texture;Z)V

    goto :goto_0

    .line 481
    :pswitch_1
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Texture$4;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_button_compare:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Texture;->access$3(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200c5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 482
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Texture$4;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_picture:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Texture;->access$1(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Texture$4;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Border_Texture;->access$8(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 483
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Texture$4;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->isSubOn:Z
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Texture;->access$9(Lcom/jellybus/fx/Activity_Border_Texture;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 484
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Texture$4;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_sub:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Texture;->access$6(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture$4;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_compare_info:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Texture;->access$5(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
