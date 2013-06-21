.class Lcom/jellybus/fx/Activity_Main$2;
.super Ljava/lang/Object;
.source "Activity_Main.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$2;->this$0:Lcom/jellybus/fx/Activity_Main;

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 549
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 566
    :goto_0
    return v0

    .line 551
    :pswitch_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$2;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$0(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 552
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$2;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->image:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$1(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Main$2;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Main;->access$2(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 553
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$2;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$3(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Original"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$2;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$3(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 557
    goto :goto_0

    .line 559
    :pswitch_1
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$2;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$0(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 560
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$2;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->image:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$1(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$2;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$0(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 561
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$2;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_compare_info:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$3(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 564
    goto :goto_0

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
