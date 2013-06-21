.class Lcom/jellybus/fx/Activity_Border_Vignetting$3;
.super Ljava/lang/Object;
.source "Activity_Border_Vignetting.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_Vignetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Vignetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$3;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    .line 261
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

    .line 265
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 267
    :pswitch_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$3;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_button_compare:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$9(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200c6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$3;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_pic:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$6(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$3;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$2(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 269
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$3;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$10(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Before"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$3;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$10(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$3;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_sub:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$11(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$3;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_sub:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$11(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$3;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #setter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->isSubOn:Z
    invoke-static {v1, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$12(Lcom/jellybus/fx/Activity_Border_Vignetting;Z)V

    goto :goto_0

    .line 277
    :pswitch_1
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$3;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_button_compare:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$9(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200c5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 278
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$3;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_pic:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$6(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$3;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 279
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$3;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$10(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$3;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->isSubOn:Z
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$13(Lcom/jellybus/fx/Activity_Border_Vignetting;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$3;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_sub:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$11(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
