.class Lcom/jellybus/fx/Activity_Border_Stamp$3;
.super Ljava/lang/Object;
.source "Activity_Border_Stamp.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_Stamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Stamp;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Stamp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$3;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 245
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 259
    :goto_0
    return v0

    .line 247
    :pswitch_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp$3;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$3(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/StampControllView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/StampControllView;->setVisibility(I)V

    .line 248
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp$3;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_button_compare:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$10(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200c6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp$3;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$11(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Before"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp$3;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$11(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 253
    :pswitch_1
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp$3;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$3(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/StampControllView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jellybus/fx_sub/StampControllView;->setVisibility(I)V

    .line 254
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$3;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_button_compare:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$10(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200c5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$3;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_pic:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$1(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp$3;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$12(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 256
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$3;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_compare_info:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$11(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
