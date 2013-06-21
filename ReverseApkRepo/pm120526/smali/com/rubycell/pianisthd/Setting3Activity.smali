.class public Lcom/rubycell/pianisthd/Setting3Activity;
.super Lcom/rubycell/pianisthd/SettingActivity;

# interfaces
.implements Lcom/tapjoy/bk;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rubycell/pianisthd/SettingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    const v4, 0x7f0a00a9

    const v3, 0x7f0a0089

    const v1, 0x7f0a007f

    const v2, 0x7f02009a

    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v1}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_0
    sget v0, Lcom/rubycell/pianisthd/d/b;->A:I

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v4}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_1
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->B:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a009b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->r:Lcom/rubycell/pianisthd/ui/MySeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setFocusableInTouchMode(Z)V

    :goto_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->r:Lcom/rubycell/pianisthd/ui/MySeekBar;

    sget v1, Lcom/rubycell/pianisthd/d/b;->z:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setProgress(F)V

    sget v0, Lcom/rubycell/pianisthd/d/b;->ae:I

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0, v3}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_3
    return-void

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0a0080

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0a0081

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0a0082

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0, v4}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    :sswitch_1
    const v0, 0x7f0a00aa

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    :sswitch_2
    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    :sswitch_3
    const v0, 0x7f0a00ac

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->r:Lcom/rubycell/pianisthd/ui/MySeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setFocusableInTouchMode(Z)V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3

    :pswitch_5
    const v0, 0x7f0a008a

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_3

    :pswitch_6
    const v0, 0x7f0a008b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_3

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

.method protected final b()V
    .locals 2

    const/16 v1, 0x8

    invoke-super {p0}, Lcom/rubycell/pianisthd/SettingActivity;->b()V

    const v0, 0x7f0a0091

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0a0092

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0a0096

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0095

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a009f

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0a00b1

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0a0094

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0a0098

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public onConfigChange(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const v2, 0x7f02009a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/Setting3Activity;->d()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    sput v3, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    if-eq v0, v5, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/Setting3Activity;->d()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    sput v5, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    if-eq v0, v6, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/Setting3Activity;->d()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    sput v6, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :sswitch_3
    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/Setting3Activity;->d()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v0, 0x4

    sput v0, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/rubycell/pianisthd/d/b;->A:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/Setting3Activity;->e()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    sput v4, Lcom/rubycell/pianisthd/d/b;->A:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DECAY_TIME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :sswitch_5
    sget v0, Lcom/rubycell/pianisthd/d/b;->A:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/Setting3Activity;->e()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v0, 0x14

    sput v0, Lcom/rubycell/pianisthd/d/b;->A:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DECAY_TIME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :sswitch_6
    sget v0, Lcom/rubycell/pianisthd/d/b;->A:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/Setting3Activity;->e()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v0, 0x28

    sput v0, Lcom/rubycell/pianisthd/d/b;->A:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DECAY_TIME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :sswitch_7
    sget v0, Lcom/rubycell/pianisthd/d/b;->A:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/Setting3Activity;->e()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v0, 0x32

    sput v0, Lcom/rubycell/pianisthd/d/b;->A:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DECAY_TIME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :sswitch_8
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->B:Z

    if-eqz v0, :cond_1

    sput-boolean v4, Lcom/rubycell/pianisthd/d/b;->B:Z

    const v0, 0x7f0a009b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->r:Lcom/rubycell/pianisthd/ui/MySeekBar;

    invoke-virtual {v0, v4}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->r:Lcom/rubycell/pianisthd/ui/MySeekBar;

    invoke-virtual {v0, v4}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setFocusable(Z)V

    :goto_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VIBRATE"

    sget-boolean v2, Lcom/rubycell/pianisthd/d/b;->B:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    :cond_1
    sput-boolean v3, Lcom/rubycell/pianisthd/d/b;->B:Z

    const v0, 0x7f0a009b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/Setting3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->r:Lcom/rubycell/pianisthd/ui/MySeekBar;

    invoke-virtual {v0, v3}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->r:Lcom/rubycell/pianisthd/ui/MySeekBar;

    invoke-virtual {v0, v3}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setFocusable(Z)V

    goto :goto_1

    :sswitch_9
    sget v0, Lcom/rubycell/pianisthd/d/b;->ae:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/Setting3Activity;->f()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    sput v4, Lcom/rubycell/pianisthd/d/b;->ae:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEYBOARD_THEME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->ae:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :sswitch_a
    sget v0, Lcom/rubycell/pianisthd/d/b;->ae:I

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/Setting3Activity;->f()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    sput v3, Lcom/rubycell/pianisthd/d/b;->ae:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEYBOARD_THEME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->ae:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :sswitch_b
    sget v0, Lcom/rubycell/pianisthd/d/b;->ae:I

    if-eq v0, v5, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/Setting3Activity;->f()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    sput v5, Lcom/rubycell/pianisthd/d/b;->ae:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/Setting3Activity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEYBOARD_THEME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->ae:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a007f -> :sswitch_0
        0x7f0a0080 -> :sswitch_1
        0x7f0a0081 -> :sswitch_2
        0x7f0a0082 -> :sswitch_3
        0x7f0a0089 -> :sswitch_9
        0x7f0a008a -> :sswitch_a
        0x7f0a008b -> :sswitch_b
        0x7f0a009b -> :sswitch_8
        0x7f0a00a9 -> :sswitch_4
        0x7f0a00aa -> :sswitch_5
        0x7f0a00ab -> :sswitch_6
        0x7f0a00ac -> :sswitch_7
    .end sparse-switch
.end method
