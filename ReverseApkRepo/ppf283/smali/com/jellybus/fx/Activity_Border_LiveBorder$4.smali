.class Lcom/jellybus/fx/Activity_Border_LiveBorder$4;
.super Ljava/lang/Object;
.source "Activity_Border_LiveBorder.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$4;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 283
    :goto_0
    return-void

    .line 277
    :pswitch_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$4;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jellybus/fx_sub/BorderView;->setRoundSize(I)V

    goto :goto_0

    .line 280
    :pswitch_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$4;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jellybus/fx_sub/BorderView;->setScaleSize(I)V

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x7f060004
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 269
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 263
    return-void
.end method
