.class public Lcom/fleapapa/util/MyImageButton;
.super Landroid/widget/ImageButton;
.source "MyImageButton.java"


# static fields
.field public static pressed:Z

.field public static tip:Lcom/fleapapa/util/MyTip;


# instance fields
.field context:Landroid/content/Context;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p1, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object p1, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public static tipOff()V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/fleapapa/util/MyImageButton;->tip:Lcom/fleapapa/util/MyTip;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fleapapa/util/MyImageButton;->tip:Lcom/fleapapa/util/MyTip;

    invoke-virtual {v0}, Lcom/fleapapa/util/MyTip;->off()V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 36
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 27
    :pswitch_1
    new-instance v0, Lcom/fleapapa/util/MyTip;

    iget-object v1, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/fleapapa/util/MyImageButton;->tip()Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fleapapa/util/MyTip;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    sput-object v0, Lcom/fleapapa/util/MyImageButton;->tip:Lcom/fleapapa/util/MyTip;

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fleapapa/util/MyImageButton;->pressed:Z

    goto :goto_0

    .line 31
    :pswitch_2
    sput-boolean v5, Lcom/fleapapa/util/MyImageButton;->pressed:Z

    .line 33
    :pswitch_3
    sget-object v0, Lcom/fleapapa/util/MyImageButton;->tip:Lcom/fleapapa/util/MyTip;

    invoke-virtual {v0}, Lcom/fleapapa/util/MyTip;->off()V

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method tip()Ljava/lang/String;
    .locals 2

    .prologue
    const v1, 0x7f06002a

    .line 39
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 69
    :goto_0
    return-object v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/fleapapa/util/MyImageButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 69
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :sswitch_0
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f06007a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 42
    :sswitch_1
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f060084

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :sswitch_2
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :sswitch_3
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f06007d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :sswitch_4
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f06007e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :sswitch_5
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :sswitch_6
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f06007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :sswitch_7
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f060080

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :sswitch_8
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f060081

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :sswitch_9
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f060083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :sswitch_a
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f0600a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :sswitch_b
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f0600a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :sswitch_c
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f0600a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 57
    :sswitch_d
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f0600c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 58
    :sswitch_e
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    sget v1, Lcom/fleapapa/util/My;->uid:I

    if-lez v1, :cond_1

    const v1, 0x7f0600a4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const v1, 0x7f0600a3

    goto :goto_1

    .line 59
    :sswitch_f
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f0600a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 62
    :sswitch_10
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f060021

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 63
    :sswitch_11
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f060022

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 64
    :sswitch_12
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 65
    :sswitch_13
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f060028

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 66
    :sswitch_14
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 67
    :sswitch_15
    iget-object v0, p0, Lcom/fleapapa/util/MyImageButton;->context:Landroid/content/Context;

    const v1, 0x7f06002b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080081 -> :sswitch_f
        0x7f080082 -> :sswitch_7
        0x7f080083 -> :sswitch_9
        0x7f080084 -> :sswitch_a
        0x7f080085 -> :sswitch_8
        0x7f080086 -> :sswitch_b
        0x7f080087 -> :sswitch_c
        0x7f080088 -> :sswitch_d
        0x7f080089 -> :sswitch_e
        0x7f0800bd -> :sswitch_7
        0x7f0800be -> :sswitch_3
        0x7f0800bf -> :sswitch_4
        0x7f0800c0 -> :sswitch_5
        0x7f0800c1 -> :sswitch_8
        0x7f0800c2 -> :sswitch_6
        0x7f0800c3 -> :sswitch_9
        0x7f0800c4 -> :sswitch_1
        0x7f0800c5 -> :sswitch_0
        0x7f0800c6 -> :sswitch_2
        0x7f080100 -> :sswitch_10
        0x7f080101 -> :sswitch_11
        0x7f080102 -> :sswitch_12
        0x7f080103 -> :sswitch_13
        0x7f080104 -> :sswitch_14
        0x7f080105 -> :sswitch_15
    .end sparse-switch
.end method
