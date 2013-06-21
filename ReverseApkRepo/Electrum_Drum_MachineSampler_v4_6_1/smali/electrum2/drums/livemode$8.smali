.class Lelectrum2/drums/livemode$8;
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
    iput-object p1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    .line 941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f020056

    .line 946
    sget v0, Lelectrum2/drums/globalSounds;->playingpattern:I

    .line 955
    .local v0, PattNum:I
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget v1, v1, Lelectrum2/drums/livemode;->oldpattern:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-boolean v1, v1, Lelectrum2/drums/livemode;->clearloopimage:Z

    if-eqz v1, :cond_2

    .line 958
    :cond_0
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    #calls: Lelectrum2/drums/livemode;->DisplayPatternSlots()V
    invoke-static {v1}, Lelectrum2/drums/livemode;->access$1(Lelectrum2/drums/livemode;)V

    .line 960
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lelectrum2/drums/livemode;->clearloopimage:Z

    .line 962
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget v1, v1, Lelectrum2/drums/livemode;->currbank:I

    if-nez v1, :cond_1

    .line 964
    packed-switch v0, :pswitch_data_0

    .line 1033
    :cond_1
    :goto_0
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget v1, v1, Lelectrum2/drums/livemode;->currbank:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1035
    packed-switch v0, :pswitch_data_1

    .line 1107
    :cond_2
    :goto_1
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iput v0, v1, Lelectrum2/drums/livemode;->oldpattern:I

    .line 1110
    return-void

    .line 967
    :pswitch_0
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 971
    :pswitch_1
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 975
    :pswitch_2
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 979
    :pswitch_3
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton4:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 983
    :pswitch_4
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton5:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 987
    :pswitch_5
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton6:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 991
    :pswitch_6
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton7:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 995
    :pswitch_7
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton8:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 999
    :pswitch_8
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton9:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1003
    :pswitch_9
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton10:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1007
    :pswitch_a
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton11:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1011
    :pswitch_b
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton12:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1015
    :pswitch_c
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton13:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1019
    :pswitch_d
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton14:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1023
    :pswitch_e
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton15:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1027
    :pswitch_f
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton16:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1038
    :pswitch_10
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1042
    :pswitch_11
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1046
    :pswitch_12
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1050
    :pswitch_13
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton4:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1054
    :pswitch_14
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton5:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1058
    :pswitch_15
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton6:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1062
    :pswitch_16
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton7:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1066
    :pswitch_17
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton8:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1070
    :pswitch_18
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton9:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1074
    :pswitch_19
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton10:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1078
    :pswitch_1a
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton11:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1082
    :pswitch_1b
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton12:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1086
    :pswitch_1c
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton13:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1090
    :pswitch_1d
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton14:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1094
    :pswitch_1e
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton15:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1098
    :pswitch_1f
    iget-object v1, p0, Lelectrum2/drums/livemode$8;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton16:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 964
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

    .line 1035
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
