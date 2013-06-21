.class Lcom/jellybus/fx/Activity_Border_LiveBorder$3;
.super Ljava/lang/Object;
.source "Activity_Border_LiveBorder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_LiveBorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_LiveBorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$3;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 237
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 239
    :pswitch_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$3;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_button_compare:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$8(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200c6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$3;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/jellybus/fx_sub/BorderView;->setVisibility(I)V

    .line 241
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$3;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_sub:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$9(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$3;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$10(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Before"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$3;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$10(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 246
    :pswitch_1
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$3;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_button_compare:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$8(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200c5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$3;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jellybus/fx_sub/BorderView;->setVisibility(I)V

    .line 248
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$3;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_compare_info:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$10(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$3;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->isSubOn:Z
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$11(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$3;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_sub:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$9(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
