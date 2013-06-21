.class Lelectrum2/drums/livemode$7;
.super Ljava/lang/Object;
.source "livemode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/livemode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/livemode;


# direct methods
.method constructor <init>(Lelectrum2/drums/livemode;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f020052

    .line 787
    sget v0, Lelectrum2/drums/globalSounds;->playingpattern:I

    .line 790
    .local v0, PattNum:I
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget v1, v1, Lelectrum2/drums/livemode;->currbank:I

    if-nez v1, :cond_0

    .line 792
    packed-switch v0, :pswitch_data_0

    .line 861
    :cond_0
    :goto_0
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget v1, v1, Lelectrum2/drums/livemode;->currbank:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 863
    packed-switch v0, :pswitch_data_1

    .line 932
    :cond_1
    :goto_1
    return-void

    .line 795
    :pswitch_0
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 799
    :pswitch_1
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 803
    :pswitch_2
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 807
    :pswitch_3
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton4:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 811
    :pswitch_4
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton5:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 815
    :pswitch_5
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton6:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 819
    :pswitch_6
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton7:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 823
    :pswitch_7
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton8:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 827
    :pswitch_8
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton9:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 831
    :pswitch_9
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton10:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 835
    :pswitch_a
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton11:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 839
    :pswitch_b
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton12:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 843
    :pswitch_c
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton13:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 847
    :pswitch_d
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton14:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 851
    :pswitch_e
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton15:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 855
    :pswitch_f
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton16:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 866
    :pswitch_10
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 870
    :pswitch_11
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 874
    :pswitch_12
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 878
    :pswitch_13
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton4:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 882
    :pswitch_14
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton5:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 886
    :pswitch_15
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton6:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 890
    :pswitch_16
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton7:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 894
    :pswitch_17
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton8:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 898
    :pswitch_18
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton9:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 902
    :pswitch_19
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton10:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 906
    :pswitch_1a
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton11:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 910
    :pswitch_1b
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton12:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 914
    :pswitch_1c
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton13:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 918
    :pswitch_1d
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton14:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 922
    :pswitch_1e
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton15:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 926
    :pswitch_1f
    iget-object v1, p0, Lelectrum2/drums/livemode$7;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton16:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 792
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

    .line 863
    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method
