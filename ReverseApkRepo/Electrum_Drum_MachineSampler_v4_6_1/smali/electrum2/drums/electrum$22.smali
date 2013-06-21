.class Lelectrum2/drums/electrum$22;
.super Ljava/lang/Object;
.source "electrum.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/electrum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/electrum;


# direct methods
.method constructor <init>(Lelectrum2/drums/electrum;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    .line 6433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v1, 0x7f020052

    .line 6438
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->ResetDrumButtonLights()V
    invoke-static {v0}, Lelectrum2/drums/electrum;->access$11(Lelectrum2/drums/electrum;)V

    .line 6440
    sget-boolean v0, Lelectrum2/drums/globalSounds;->IsPlaying:Z

    if-eqz v0, :cond_0

    .line 6443
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget v0, v0, Lelectrum2/drums/electrum;->currentslotlight:I

    packed-switch v0, :pswitch_data_0

    .line 6532
    :goto_0
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->patternHandler:Landroid/os/Handler;

    iget-object v1, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->DrumLightReset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6536
    :cond_0
    return-void

    .line 6447
    :pswitch_0
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6453
    :pswitch_1
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6458
    :pswitch_2
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6463
    :pswitch_3
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6468
    :pswitch_4
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6473
    :pswitch_5
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton6:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6478
    :pswitch_6
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton7:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6483
    :pswitch_7
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton8:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6488
    :pswitch_8
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton9:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6493
    :pswitch_9
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton10:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6498
    :pswitch_a
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton11:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6503
    :pswitch_b
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton12:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6508
    :pswitch_c
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton13:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6513
    :pswitch_d
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton14:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6518
    :pswitch_e
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton15:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 6523
    :pswitch_f
    iget-object v0, p0, Lelectrum2/drums/electrum$22;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->drumbutton16:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 6443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
