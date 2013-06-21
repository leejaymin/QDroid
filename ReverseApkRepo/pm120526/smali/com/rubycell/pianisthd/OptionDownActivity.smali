.class public Lcom/rubycell/pianisthd/OptionDownActivity;
.super Lcom/rubycell/pianisthd/OptionActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rubycell/pianisthd/OptionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    const/16 v7, 0x32

    const/high16 v6, 0x40c8

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->ac:Landroid/media/AudioManager;

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
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->aa:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->g:Lcom/rubycell/pianisthd/ui/VolumeView;

    sget v1, Lcom/rubycell/pianisthd/d/b;->D:I

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/VolumeView;->setVolumePersent(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->X:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->Z:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    sget v1, Lcom/rubycell/pianisthd/d/b;->y:I

    sub-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setPersent(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->Z:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    invoke-virtual {v0, v4}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setEnable(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->Y:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->I:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    sget v1, Lcom/rubycell/pianisthd/d/b;->z:I

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setPersent(I)V

    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    sget v0, Lcom/rubycell/pianisthd/d/b;->ae:I

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->C:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    sget v0, Lcom/rubycell/pianisthd/d/b;->A:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->o:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->t:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->u:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->S:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->v:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    sget v0, Lcom/rubycell/pianisthd/d/b;->Q:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->y:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_4
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->B:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->F:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->I:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    invoke-virtual {v0, v3}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setEnable(Z)V

    :goto_5
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->I:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    sget v1, Lcom/rubycell/pianisthd/d/b;->z:I

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setPersent(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->Z:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    sget v1, Lcom/rubycell/pianisthd/d/b;->y:I

    sub-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setPersent(I)V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->C:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->W:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->l:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->k:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->m:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->C:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->D:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->E:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    :sswitch_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->o:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    :sswitch_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->p:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    :sswitch_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->q:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    :sswitch_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->r:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    :cond_2
    sget v0, Lcom/rubycell/pianisthd/d/b;->Q:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->z:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->A:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_4

    :cond_4
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->F:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->I:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    invoke-virtual {v0, v4}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setEnable(Z)V

    goto/16 :goto_5

    :cond_5
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->W:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x14 -> :sswitch_1
        0x28 -> :sswitch_2
        0x32 -> :sswitch_3
    .end sparse-switch
.end method

.method protected final b()V
    .locals 7

    const/4 v6, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->n:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->S:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "NOTE_NAMING_DOWN"

    sget-boolean v2, Lcom/rubycell/pianisthd/d/b;->S:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->x:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->B:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    sput v4, Lcom/rubycell/pianisthd/d/b;->ae:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEYBOARD_THEME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->ae:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->s:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    :goto_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->F:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->B:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VIBRATE"

    sget-boolean v2, Lcom/rubycell/pianisthd/d/b;->B:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :pswitch_0
    sput v3, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :pswitch_1
    sput v5, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :pswitch_2
    sput v2, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :pswitch_3
    sput v6, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_4
    sput v3, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_5
    sput v4, Lcom/rubycell/pianisthd/d/b;->Q:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEY_WIDTH_DOWN"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :pswitch_6
    sput v3, Lcom/rubycell/pianisthd/d/b;->Q:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEY_WIDTH_DOWN"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :pswitch_7
    sput v5, Lcom/rubycell/pianisthd/d/b;->Q:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEY_WIDTH_DOWN"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :pswitch_8
    sput v4, Lcom/rubycell/pianisthd/d/b;->ae:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEYBOARD_THEME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->ae:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    :pswitch_9
    sput v3, Lcom/rubycell/pianisthd/d/b;->ae:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEYBOARD_THEME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->ae:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    :pswitch_a
    sput v5, Lcom/rubycell/pianisthd/d/b;->ae:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEYBOARD_THEME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->ae:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    :pswitch_b
    sput v4, Lcom/rubycell/pianisthd/d/b;->A:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DECAY_TIME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :pswitch_c
    const/16 v0, 0x14

    sput v0, Lcom/rubycell/pianisthd/d/b;->A:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DECAY_TIME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :pswitch_d
    const/16 v0, 0x28

    sput v0, Lcom/rubycell/pianisthd/d/b;->A:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DECAY_TIME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :pswitch_e
    const/16 v0, 0x32

    sput v0, Lcom/rubycell/pianisthd/d/b;->A:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionDownActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DECAY_TIME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00e5
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a00d9
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0a00eb
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f0a00df
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public final c()V
    .locals 5

    const/16 v4, 0xc

    const/16 v3, 0x8

    const/16 v2, 0xa

    sget v0, Lcom/rubycell/pianisthd/d/b;->Q:I

    if-nez v0, :cond_0

    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x6

    sput v0, Lcom/rubycell/pianisthd/d/b;->O:I

    goto :goto_0

    :pswitch_1
    sput v3, Lcom/rubycell/pianisthd/d/b;->O:I

    goto :goto_0

    :pswitch_2
    sput v2, Lcom/rubycell/pianisthd/d/b;->O:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    sput v3, Lcom/rubycell/pianisthd/d/b;->O:I

    goto :goto_0

    :pswitch_4
    sput v2, Lcom/rubycell/pianisthd/d/b;->O:I

    goto :goto_0

    :pswitch_5
    sput v4, Lcom/rubycell/pianisthd/d/b;->O:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_6
    sput v2, Lcom/rubycell/pianisthd/d/b;->O:I

    goto :goto_0

    :pswitch_7
    sput v4, Lcom/rubycell/pianisthd/d/b;->O:I

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xe

    sput v0, Lcom/rubycell/pianisthd/d/b;->O:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
