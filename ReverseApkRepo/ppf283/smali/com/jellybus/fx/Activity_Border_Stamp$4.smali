.class Lcom/jellybus/fx/Activity_Border_Stamp$4;
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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$4;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const v3, 0x7f02013b

    const/4 v2, 0x1

    .line 267
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp$4;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$3(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/StampControllView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jellybus/fx_sub/StampControllView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 268
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 284
    :goto_0
    return v2

    .line 270
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$4;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$3(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/StampControllView;

    move-result-object v1

    iget v1, v1, Lcom/jellybus/fx_sub/StampControllView;->trashY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp$4;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_icon_4:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$7(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02014c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp$4;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_icon_4:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$7(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 277
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$4;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$3(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/StampControllView;

    move-result-object v1

    iget v1, v1, Lcom/jellybus/fx_sub/StampControllView;->trashY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sget-object v0, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 278
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp$4;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #calls: Lcom/jellybus/fx/Activity_Border_Stamp;->setUnactivityResource()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$13(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp$4;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_icon_4:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$7(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
