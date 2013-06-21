.class Lcom/jellybus/fx/Activity_Main$7;
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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$7;->this$0:Lcom/jellybus/fx/Activity_Main;

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 767
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    move v0, v1

    .line 796
    :goto_1
    return v0

    .line 769
    :pswitch_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$7;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->check_main_button_isSelected:I
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$20(Lcom/jellybus/fx/Activity_Main;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 771
    :pswitch_1
    const v1, 0x7f0200fd

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 774
    :pswitch_2
    const v1, 0x7f020116

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 777
    :pswitch_3
    const v1, 0x7f020112

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 780
    :pswitch_4
    const v1, 0x7f020106

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 783
    :pswitch_5
    const v1, 0x7f0200e9

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 786
    :pswitch_6
    const v1, 0x7f02011d

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 791
    :pswitch_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 793
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$7;->this$0:Lcom/jellybus/fx/Activity_Main;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    #calls: Lcom/jellybus/fx/Activity_Main;->sub_menu_action(I)V
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Main;->access$23(Lcom/jellybus/fx/Activity_Main;I)V

    goto :goto_1

    .line 767
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 769
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
