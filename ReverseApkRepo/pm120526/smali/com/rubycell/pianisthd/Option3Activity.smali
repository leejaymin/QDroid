.class public Lcom/rubycell/pianisthd/Option3Activity;
.super Lcom/rubycell/pianisthd/OptionActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/tapjoy/bk;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rubycell/pianisthd/OptionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    const/high16 v6, 0x40c8

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->ac:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    sget v2, Lcom/rubycell/pianisthd/d/b;->D:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    sput v0, Lcom/rubycell/pianisthd/d/b;->D:I

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->aa:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/rubycell/pianisthd/d/b;->D:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->g:Lcom/rubycell/pianisthd/ui/VolumeView;

    sget v1, Lcom/rubycell/pianisthd/d/b;->D:I

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/VolumeView;->setVolumePersent(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->X:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/rubycell/pianisthd/d/b;->y:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->Z:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    sget v1, Lcom/rubycell/pianisthd/d/b;->y:I

    const/16 v2, 0x32

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setPersent(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->Y:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/rubycell/pianisthd/d/b;->z:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->I:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    sget v1, Lcom/rubycell/pianisthd/d/b;->z:I

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setPersent(I)V

    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    sget v0, Lcom/rubycell/pianisthd/d/b;->A:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->o:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    sget v0, Lcom/rubycell/pianisthd/d/b;->ae:I

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->C:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->t:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->u:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->v:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    sget v0, Lcom/rubycell/pianisthd/d/b;->x:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->y:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_4
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->B:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->F:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->I:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    invoke-virtual {v0, v3}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setEnable(Z)V

    :goto_5
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->I:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    sget v1, Lcom/rubycell/pianisthd/d/b;->z:I

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setPersent(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->Z:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    invoke-virtual {v0, v4}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setEnable(Z)V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->C:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->W:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->l:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->k:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->m:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->o:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->p:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->q:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->r:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->C:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->D:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    :pswitch_6
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->E:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    :cond_2
    sget v0, Lcom/rubycell/pianisthd/d/b;->x:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->z:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->A:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_4

    :cond_4
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->F:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->I:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    invoke-virtual {v0, v4}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setEnable(Z)V

    goto/16 :goto_5

    :cond_5
    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->W:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Option3Activity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x14 -> :sswitch_1
        0x28 -> :sswitch_2
        0x32 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
