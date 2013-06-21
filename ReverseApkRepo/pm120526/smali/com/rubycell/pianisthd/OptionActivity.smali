.class public Lcom/rubycell/pianisthd/OptionActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/tapjoy/bk;


# instance fields
.field protected A:Landroid/widget/RadioButton;

.field protected B:Landroid/widget/RadioGroup;

.field protected C:Landroid/widget/RadioButton;

.field protected D:Landroid/widget/RadioButton;

.field protected E:Landroid/widget/RadioButton;

.field protected F:Landroid/widget/CheckBox;

.field protected G:Landroid/widget/ImageView;

.field protected H:Landroid/view/animation/Animation;

.field protected I:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

.field protected J:Landroid/widget/Button;

.field protected K:Landroid/widget/Button;

.field protected L:Landroid/widget/Button;

.field protected M:Landroid/widget/Button;

.field protected N:Landroid/widget/Button;

.field protected O:Landroid/widget/Button;

.field protected P:Landroid/widget/Button;

.field protected Q:Landroid/widget/ImageView;

.field protected R:Landroid/widget/ImageView;

.field protected S:Landroid/widget/ImageView;

.field protected T:Landroid/widget/ImageView;

.field protected U:Landroid/widget/ImageView;

.field protected V:Landroid/widget/ImageView;

.field protected W:Landroid/widget/CheckBox;

.field protected X:Landroid/widget/TextView;

.field protected Y:Landroid/widget/TextView;

.field protected Z:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

.field a:Landroid/content/SharedPreferences;

.field protected aa:Landroid/widget/TextView;

.field protected ab:Landroid/widget/Button;

.field protected ac:Landroid/media/AudioManager;

.field private ad:Landroid/widget/LinearLayout;

.field private ae:Landroid/widget/LinearLayout;

.field private af:Landroid/widget/LinearLayout;

.field private ag:Landroid/widget/LinearLayout;

.field private ah:Landroid/widget/LinearLayout;

.field private ai:Landroid/widget/LinearLayout;

.field b:Landroid/content/SharedPreferences$Editor;

.field c:Landroid/content/Context;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ImageButton;

.field f:Lcom/rubycell/adcenter/a;

.field protected g:Lcom/rubycell/pianisthd/ui/VolumeView;

.field protected h:Landroid/widget/ScrollView;

.field protected i:Landroid/widget/RadioButton;

.field protected j:Landroid/widget/RadioButton;

.field protected k:Landroid/widget/RadioButton;

.field protected l:Landroid/widget/RadioButton;

.field protected m:Landroid/widget/RadioButton;

.field protected n:Landroid/widget/RadioGroup;

.field protected o:Landroid/widget/RadioButton;

.field protected p:Landroid/widget/RadioButton;

.field protected q:Landroid/widget/RadioButton;

.field protected r:Landroid/widget/RadioButton;

.field protected s:Landroid/widget/RadioGroup;

.field protected t:Landroid/widget/CheckBox;

.field protected u:Landroid/widget/CheckBox;

.field protected v:Landroid/widget/CheckBox;

.field protected w:Landroid/widget/CheckBox;

.field protected x:Landroid/widget/RadioGroup;

.field protected y:Landroid/widget/RadioButton;

.field protected z:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://www.amazon.com/gp/mas/dl/android?p="

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v0, "market://details?id="

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/rubycell/pianisthd/aj;

    invoke-direct {v3, p0}, Lcom/rubycell/pianisthd/aj;-><init>(Lcom/rubycell/pianisthd/OptionActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/OptionActivity;->c()V

    invoke-static {}, Lcom/rubycell/pianisthd/d/k;->b()V

    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/SingleRowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/OptionActivity;->finish()V

    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/SingleRowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Play single mode"

    invoke-static {v1}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/DoubleRowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Play double mode"

    invoke-static {v1}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Play double-mirror mode"

    invoke-static {v1}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/TripleRowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Play triple mode"

    invoke-static {v1}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected a()V
    .locals 7

    const/high16 v6, 0x40c8

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->ac:Landroid/media/AudioManager;

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
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->aa:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->g:Lcom/rubycell/pianisthd/ui/VolumeView;

    sget v1, Lcom/rubycell/pianisthd/d/b;->D:I

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/VolumeView;->setVolumePersent(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->X:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/rubycell/pianisthd/d/b;->y:I

    add-int/lit8 v2, v2, 0x32

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->Z:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    sget v1, Lcom/rubycell/pianisthd/d/b;->y:I

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setPersent(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->Y:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->I:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    sget v1, Lcom/rubycell/pianisthd/d/b;->z:I

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setPersent(I)V

    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    sget v0, Lcom/rubycell/pianisthd/d/b;->A:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->o:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    sget v0, Lcom/rubycell/pianisthd/d/b;->ae:I

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->C:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_2
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->t:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->w:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->u:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_4
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->v:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_5
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->ad:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->v:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_6
    sget v0, Lcom/rubycell/pianisthd/d/b;->x:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->y:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_7
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->B:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->F:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->I:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    invoke-virtual {v0, v3}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setEnable(Z)V

    :goto_8
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->I:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    sget v1, Lcom/rubycell/pianisthd/d/b;->z:I

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setPersent(I)V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->C:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->W:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->l:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->k:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->m:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->o:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->p:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->q:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->r:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->C:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->D:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    :pswitch_6
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->E:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->t:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->u:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5

    :cond_4
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->v:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_6

    :cond_5
    sget v0, Lcom/rubycell/pianisthd/d/b;->x:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->z:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_7

    :cond_6
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->A:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_7

    :cond_7
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->F:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->I:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    invoke-virtual {v0, v4}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setEnable(Z)V

    goto/16 :goto_8

    :cond_8
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->W:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

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

.method public final a(I)V
    .locals 1

    new-instance v0, Lcom/rubycell/pianisthd/ak;

    invoke-direct {v0, p0, p1}, Lcom/rubycell/pianisthd/ak;-><init>(Lcom/rubycell/pianisthd/OptionActivity;I)V

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b()V
    .locals 7

    const/4 v6, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->n:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->t:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->u:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "PLAY_ASSIST"

    sget-boolean v2, Lcom/rubycell/pianisthd/d/b;->u:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->v:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "NOTE_NAMING"

    sget-boolean v2, Lcom/rubycell/pianisthd/d/b;->v:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->v:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->ad:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "OTHER_HAND"

    sget-boolean v2, Lcom/rubycell/pianisthd/d/b;->ad:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->ad:Z

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/l;->b(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->B:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    sput v4, Lcom/rubycell/pianisthd/d/b;->ae:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEYBOARD_THEME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->ae:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->u:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->w:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "NOTE_ANIMATE"

    sget-boolean v2, Lcom/rubycell/pianisthd/d/b;->w:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->x:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :goto_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->s:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    :goto_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->F:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->B:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VIBRATE"

    sget-boolean v2, Lcom/rubycell/pianisthd/d/b;->B:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :pswitch_0
    sput v3, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_1
    sput v5, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_2
    sput v2, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_3
    sput v6, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_4
    sput v3, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_5
    sput v4, Lcom/rubycell/pianisthd/d/b;->ae:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEYBOARD_THEME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->ae:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :pswitch_6
    sput v3, Lcom/rubycell/pianisthd/d/b;->ae:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEYBOARD_THEME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->ae:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :pswitch_7
    sput v5, Lcom/rubycell/pianisthd/d/b;->ae:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEYBOARD_THEME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->ae:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :pswitch_8
    sput v4, Lcom/rubycell/pianisthd/d/b;->x:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEY_WIDTH"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    :pswitch_9
    sput v3, Lcom/rubycell/pianisthd/d/b;->x:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEY_WIDTH"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    :pswitch_a
    sput v5, Lcom/rubycell/pianisthd/d/b;->x:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEY_WIDTH"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    :pswitch_b
    sput v4, Lcom/rubycell/pianisthd/d/b;->A:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DECAY_TIME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :pswitch_c
    const/16 v0, 0x14

    sput v0, Lcom/rubycell/pianisthd/d/b;->A:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DECAY_TIME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :pswitch_d
    const/16 v0, 0x28

    sput v0, Lcom/rubycell/pianisthd/d/b;->A:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DECAY_TIME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :pswitch_e
    const/16 v0, 0x32

    sput v0, Lcom/rubycell/pianisthd/d/b;->A:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DECAY_TIME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x7f0a00e5
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a00eb
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0a00d9
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

.method public c()V
    .locals 5

    const/16 v4, 0xc

    const/16 v3, 0xa

    const/16 v2, 0x8

    sget v0, Lcom/rubycell/pianisthd/d/b;->x:I

    if-nez v0, :cond_0

    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    sget-object v0, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    sget v1, Lcom/rubycell/pianisthd/d/b;->k:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->m:F

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    sget v1, Lcom/rubycell/pianisthd/d/b;->l:F

    mul-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->n:F

    sget v0, Lcom/rubycell/pianisthd/d/b;->m:F

    const v1, 0x3f3d70a4

    mul-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->o:F

    sget v0, Lcom/rubycell/pianisthd/d/b;->n:F

    const v1, 0x3f0f5c29

    mul-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->p:F

    sget v0, Lcom/rubycell/pianisthd/d/b;->m:F

    const/high16 v1, 0x4250

    mul-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->q:F

    return-void

    :pswitch_0
    const/4 v0, 0x6

    sput v0, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_0

    :pswitch_1
    sput v2, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_0

    :pswitch_2
    sput v4, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    sput v2, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_0

    :pswitch_4
    sput v3, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xe

    sput v0, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_6
    sput v3, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_0

    :pswitch_7
    sput v4, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x10

    sput v0, Lcom/rubycell/pianisthd/d/b;->k:I

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

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/16 v2, 0x1f4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/OptionActivity;->b()V

    invoke-direct {p0}, Lcom/rubycell/pianisthd/OptionActivity;->d()V

    goto :goto_0

    :sswitch_1
    const-string v0, "http://mobile.kidapps.us"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/rubycell/pianisthd/OptionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->f:Lcom/rubycell/adcenter/a;

    invoke-virtual {v0}, Lcom/rubycell/adcenter/a;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->f:Lcom/rubycell/adcenter/a;

    invoke-virtual {v0}, Lcom/rubycell/adcenter/a;->a()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "support@rubycell.com"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "About Pianist HD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/OptionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/OptionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_6
    const-string v0, "http://www.facebook.com/rubycell"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/rubycell/pianisthd/OptionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_7
    const-string v0, "https://twitter.com/rubycell"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/rubycell/pianisthd/OptionActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "Earn more ruby"

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->T:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tapjoy/av;->a()Lcom/tapjoy/av;

    invoke-static {}, Lcom/tapjoy/av;->b()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->c:Landroid/content/Context;

    const-string v1, "This feature is coming soon"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "Buy more item"

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->T:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/rubycell/pianisthd/d/m;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tapjoy/av;->a()Lcom/tapjoy/av;

    new-instance v0, Lcom/rubycell/pianisthd/b/b;

    iget-object v1, p0, Lcom/rubycell/pianisthd/OptionActivity;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/rubycell/pianisthd/OptionActivity;->a:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, v2}, Lcom/rubycell/pianisthd/b/b;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-static {v0}, Lcom/tapjoy/av;->a(Lcom/tapjoy/ap;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->c:Landroid/content/Context;

    const-string v1, "Your SD card is unmounted or read-only"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->c:Landroid/content/Context;

    const-string v1, "This feature is coming soon"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "change speed song"

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "change number of note on piano"

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "select type of keyboard"

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "turn on or turn off playing option"

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "change time vibration"

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "change sustatining"

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "com.rubycell.coloringstar"

    invoke-static {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "us.colormefree.princess.u"

    invoke-static {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "com.rubycell.memoryforkids"

    invoke-static {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "com.rubycell.colorgridpro"

    invoke-static {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "us.puzzlepop.swapping.puzzle.fairies.i"

    invoke-static {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "com.rubycell.boxPrince.free"

    invoke-static {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a00c0 -> :sswitch_0
        0x7f0a00c8 -> :sswitch_a
        0x7f0a00cb -> :sswitch_e
        0x7f0a00d2 -> :sswitch_d
        0x7f0a00d7 -> :sswitch_b
        0x7f0a00dd -> :sswitch_f
        0x7f0a00e3 -> :sswitch_c
        0x7f0a00ee -> :sswitch_1
        0x7f0a00ef -> :sswitch_2
        0x7f0a00f0 -> :sswitch_4
        0x7f0a00f1 -> :sswitch_5
        0x7f0a00f2 -> :sswitch_3
        0x7f0a00f3 -> :sswitch_6
        0x7f0a00f4 -> :sswitch_7
        0x7f0a00f9 -> :sswitch_8
        0x7f0a00fa -> :sswitch_9
        0x7f0a00fd -> :sswitch_10
        0x7f0a00fe -> :sswitch_11
        0x7f0a00ff -> :sswitch_12
        0x7f0a0100 -> :sswitch_13
        0x7f0a0101 -> :sswitch_14
        0x7f0a0102 -> :sswitch_15
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f0a00c6

    const/16 v4, 0x1000

    const/16 v3, 0x400

    const/16 v1, 0x80

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/rubycell/pianisthd/OptionActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/OptionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/OptionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/OptionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/OptionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setFormat(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->setVolumeControlStream(I)V

    sget v0, Lcom/rubycell/pianisthd/d/b;->F:I

    const/16 v1, 0x2ee

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/rubycell/pianisthd/OptionActivity;->setRequestedOrientation(I)V

    :goto_0
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->setContentView(I)V

    new-instance v0, Lcom/rubycell/adcenter/a;

    invoke-direct {v0, p0}, Lcom/rubycell/adcenter/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->f:Lcom/rubycell/adcenter/a;

    const v0, 0x7f0a00c5

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->aa:Landroid/widget/TextView;

    const v0, 0x7f0a00c9

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->X:Landroid/widget/TextView;

    const v0, 0x7f0a00cd

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->Y:Landroid/widget/TextView;

    const v0, 0x7f0a00ca

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->Z:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->Z:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    new-instance v1, Lcom/rubycell/pianisthd/ad;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/ad;-><init>(Lcom/rubycell/pianisthd/OptionActivity;)V

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setIOnSeekBarChange(Lcom/rubycell/pianisthd/ui/g;)V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->ac:Landroid/media/AudioManager;

    invoke-virtual {p0, v5}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/VolumeView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->g:Lcom/rubycell/pianisthd/ui/VolumeView;

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->g:Lcom/rubycell/pianisthd/ui/VolumeView;

    new-instance v1, Lcom/rubycell/pianisthd/ae;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/ae;-><init>(Lcom/rubycell/pianisthd/OptionActivity;)V

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/VolumeView;->setIOnVolumeChange(Lcom/rubycell/pianisthd/ui/h;)V

    const v0, 0x7f0a00cf

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->I:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->I:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    new-instance v1, Lcom/rubycell/pianisthd/af;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/af;-><init>(Lcom/rubycell/pianisthd/OptionActivity;)V

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setIOnSeekBarChange(Lcom/rubycell/pianisthd/ui/g;)V

    const v0, 0x7f0a00c1

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->W:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->W:Landroid/widget/CheckBox;

    new-instance v1, Lcom/rubycell/pianisthd/ag;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/ag;-><init>(Lcom/rubycell/pianisthd/OptionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00e4

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->n:Landroid/widget/RadioGroup;

    const v0, 0x7f0a00e5

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->i:Landroid/widget/RadioButton;

    const v0, 0x7f0a00e6

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->j:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->j:Landroid/widget/RadioButton;

    new-instance v1, Lcom/rubycell/pianisthd/ah;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/ah;-><init>(Lcom/rubycell/pianisthd/OptionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00e7

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->k:Landroid/widget/RadioButton;

    const v0, 0x7f0a00e8

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->l:Landroid/widget/RadioButton;

    const v0, 0x7f0a00e9

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->m:Landroid/widget/RadioButton;

    const v0, 0x7f0a00de

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->s:Landroid/widget/RadioGroup;

    const v0, 0x7f0a00df

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->o:Landroid/widget/RadioButton;

    const v0, 0x7f0a00e0

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->p:Landroid/widget/RadioButton;

    const v0, 0x7f0a00e1

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->q:Landroid/widget/RadioButton;

    const v0, 0x7f0a00e2

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->r:Landroid/widget/RadioButton;

    const v0, 0x7f0a00d8

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->x:Landroid/widget/RadioGroup;

    const v0, 0x7f0a00d9

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->y:Landroid/widget/RadioButton;

    const v0, 0x7f0a00da

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->z:Landroid/widget/RadioButton;

    const v0, 0x7f0a00db

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->A:Landroid/widget/RadioButton;

    const v0, 0x7f0a00ea

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->B:Landroid/widget/RadioGroup;

    const v0, 0x7f0a00eb

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->C:Landroid/widget/RadioButton;

    const v0, 0x7f0a00ec

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->D:Landroid/widget/RadioButton;

    const v0, 0x7f0a00ed

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->E:Landroid/widget/RadioButton;

    const v0, 0x7f0a00d3

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->t:Landroid/widget/CheckBox;

    const v0, 0x7f0a00d4

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->u:Landroid/widget/CheckBox;

    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->w:Landroid/widget/CheckBox;

    const v0, 0x7f0a00d6

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->v:Landroid/widget/CheckBox;

    const v0, 0x7f0a00ce

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->F:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->F:Landroid/widget/CheckBox;

    new-instance v1, Lcom/rubycell/pianisthd/ai;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/ai;-><init>(Lcom/rubycell/pianisthd/OptionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0a00c0

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->e:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00f9

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->J:Landroid/widget/Button;

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->J:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00fa

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->N:Landroid/widget/Button;

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->N:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00f1

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->ab:Landroid/widget/Button;

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->ab:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00ee

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->K:Landroid/widget/Button;

    const v0, 0x7f0a00ef

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->L:Landroid/widget/Button;

    const v0, 0x7f0a00f2

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->M:Landroid/widget/Button;

    const v0, 0x7f0a00f3

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->P:Landroid/widget/Button;

    const v0, 0x7f0a00f4

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->O:Landroid/widget/Button;

    const v0, 0x7f0a00fd

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->ad:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00fe

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->ae:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00ff

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->af:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0100

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->ag:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0101

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->ah:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0102

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->ai:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00c8

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->Q:Landroid/widget/ImageView;

    const v0, 0x7f0a00d2

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->R:Landroid/widget/ImageView;

    const v0, 0x7f0a00dd

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->S:Landroid/widget/ImageView;

    const v0, 0x7f0a00cb

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->T:Landroid/widget/ImageView;

    const v0, 0x7f0a00e3

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->U:Landroid/widget/ImageView;

    const v0, 0x7f0a00d7

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->V:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->K:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->L:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->M:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->O:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->ad:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->ae:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->af:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->ag:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->ah:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->ai:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00f0

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->G:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, 0x7f04

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->H:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->G:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/rubycell/pianisthd/OptionActivity;->H:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iput-object p0, p0, Lcom/rubycell/pianisthd/OptionActivity;->c:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/VolumeView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->g:Lcom/rubycell/pianisthd/ui/VolumeView;

    const v0, 0x7f0a00bf

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->h:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->h:Landroid/widget/ScrollView;

    new-instance v1, Lcom/rubycell/pianisthd/ac;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/ac;-><init>(Lcom/rubycell/pianisthd/OptionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->a:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/OptionActivity;->a()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->f:Lcom/rubycell/adcenter/a;

    invoke-virtual {v0}, Lcom/rubycell/adcenter/a;->c()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->Z:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->a()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->I:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->a()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/OptionActivity;->g:Lcom/rubycell/pianisthd/ui/VolumeView;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/VolumeView;->a()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/OptionActivity;->b()V

    invoke-direct {p0}, Lcom/rubycell/pianisthd/OptionActivity;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->T:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/av;->a()Lcom/tapjoy/av;

    invoke-static {p0}, Lcom/tapjoy/av;->a(Lcom/tapjoy/bk;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/rubycell/pianisthd/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/OptionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/OptionActivity;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/OptionActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/OptionActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
