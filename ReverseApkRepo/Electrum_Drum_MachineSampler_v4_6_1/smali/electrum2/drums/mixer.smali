.class public Lelectrum2/drums/mixer;
.super Landroid/app/Activity;
.source "mixer.java"


# instance fields
.field ScreenHeight:I

.field ScreenWidth:I

.field control1:Lelectrum2/drums/fadercontrol;

.field control1touch:Landroid/view/View$OnTouchListener;

.field control2:Lelectrum2/drums/fadercontrol;

.field control2touch:Landroid/view/View$OnTouchListener;

.field control3:Lelectrum2/drums/fadercontrol;

.field control3touch:Landroid/view/View$OnTouchListener;

.field control4:Lelectrum2/drums/fadercontrol;

.field control4touch:Landroid/view/View$OnTouchListener;

.field control5:Lelectrum2/drums/fadercontrol;

.field control5touch:Landroid/view/View$OnTouchListener;

.field control6:Lelectrum2/drums/fadercontrol;

.field control6touch:Landroid/view/View$OnTouchListener;

.field control7:Lelectrum2/drums/fadercontrol;

.field control7touch:Landroid/view/View$OnTouchListener;

.field control8:Lelectrum2/drums/fadercontrol;

.field control8touch:Landroid/view/View$OnTouchListener;

.field control9:Lelectrum2/drums/fadercontrol;

.field control9touch:Landroid/view/View$OnTouchListener;

.field currentsound:Lelectrum2/drums/soundObj;

.field fadertext1:Landroid/widget/TextView;

.field fadertext2:Landroid/widget/TextView;

.field fadertext3:Landroid/widget/TextView;

.field fadertext4:Landroid/widget/TextView;

.field fadertext5:Landroid/widget/TextView;

.field fadertext6:Landroid/widget/TextView;

.field fadertext7:Landroid/widget/TextView;

.field fadertext8:Landroid/widget/TextView;

.field mute1Click:Landroid/view/View$OnClickListener;

.field mute2Click:Landroid/view/View$OnClickListener;

.field mute3Click:Landroid/view/View$OnClickListener;

.field mute4Click:Landroid/view/View$OnClickListener;

.field mute5Click:Landroid/view/View$OnClickListener;

.field mute6Click:Landroid/view/View$OnClickListener;

.field mute7Click:Landroid/view/View$OnClickListener;

.field mute8Click:Landroid/view/View$OnClickListener;

.field mutebutton1:Landroid/widget/Button;

.field mutebutton2:Landroid/widget/Button;

.field mutebutton3:Landroid/widget/Button;

.field mutebutton4:Landroid/widget/Button;

.field mutebutton5:Landroid/widget/Button;

.field mutebutton6:Landroid/widget/Button;

.field mutebutton7:Landroid/widget/Button;

.field mutebutton8:Landroid/widget/Button;

.field panchange:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field panname:Landroid/widget/TextView;

.field panslider:Landroid/widget/SeekBar;

.field resetbutton:Landroid/widget/Button;

.field resetclick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 196
    new-instance v0, Lelectrum2/drums/mixer$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$1;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->panchange:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 286
    new-instance v0, Lelectrum2/drums/mixer$2;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$2;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->mute1Click:Landroid/view/View$OnClickListener;

    .line 307
    new-instance v0, Lelectrum2/drums/mixer$3;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$3;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->mute2Click:Landroid/view/View$OnClickListener;

    .line 328
    new-instance v0, Lelectrum2/drums/mixer$4;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$4;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->mute3Click:Landroid/view/View$OnClickListener;

    .line 346
    new-instance v0, Lelectrum2/drums/mixer$5;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$5;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->mute4Click:Landroid/view/View$OnClickListener;

    .line 365
    new-instance v0, Lelectrum2/drums/mixer$6;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$6;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->mute5Click:Landroid/view/View$OnClickListener;

    .line 384
    new-instance v0, Lelectrum2/drums/mixer$7;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$7;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->mute6Click:Landroid/view/View$OnClickListener;

    .line 403
    new-instance v0, Lelectrum2/drums/mixer$8;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$8;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->mute7Click:Landroid/view/View$OnClickListener;

    .line 422
    new-instance v0, Lelectrum2/drums/mixer$9;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$9;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->mute8Click:Landroid/view/View$OnClickListener;

    .line 443
    new-instance v0, Lelectrum2/drums/mixer$10;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$10;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->resetclick:Landroid/view/View$OnClickListener;

    .line 482
    new-instance v0, Lelectrum2/drums/mixer$11;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$11;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->control1touch:Landroid/view/View$OnTouchListener;

    .line 505
    new-instance v0, Lelectrum2/drums/mixer$12;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$12;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->control2touch:Landroid/view/View$OnTouchListener;

    .line 526
    new-instance v0, Lelectrum2/drums/mixer$13;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$13;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->control3touch:Landroid/view/View$OnTouchListener;

    .line 546
    new-instance v0, Lelectrum2/drums/mixer$14;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$14;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->control4touch:Landroid/view/View$OnTouchListener;

    .line 566
    new-instance v0, Lelectrum2/drums/mixer$15;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$15;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->control5touch:Landroid/view/View$OnTouchListener;

    .line 586
    new-instance v0, Lelectrum2/drums/mixer$16;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$16;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->control6touch:Landroid/view/View$OnTouchListener;

    .line 608
    new-instance v0, Lelectrum2/drums/mixer$17;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$17;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->control7touch:Landroid/view/View$OnTouchListener;

    .line 630
    new-instance v0, Lelectrum2/drums/mixer$18;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$18;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->control8touch:Landroid/view/View$OnTouchListener;

    .line 652
    new-instance v0, Lelectrum2/drums/mixer$19;

    invoke-direct {v0, p0}, Lelectrum2/drums/mixer$19;-><init>(Lelectrum2/drums/mixer;)V

    iput-object v0, p0, Lelectrum2/drums/mixer;->control9touch:Landroid/view/View$OnTouchListener;

    .line 18
    return-void
.end method

.method private AdjustPan()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lelectrum2/drums/mixer;->panslider:Landroid/widget/SeekBar;

    iget-object v1, p0, Lelectrum2/drums/mixer;->currentsound:Lelectrum2/drums/soundObj;

    invoke-virtual {v1}, Lelectrum2/drums/soundObj;->GetPan()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 477
    iget-object v0, p0, Lelectrum2/drums/mixer;->panname:Landroid/widget/TextView;

    iget-object v1, p0, Lelectrum2/drums/mixer;->currentsound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    return-void
.end method

.method private DoMuteButtons()V
    .locals 3

    .prologue
    const/high16 v2, -0x1

    const/high16 v1, -0x100

    .line 226
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    invoke-virtual {v0}, Lelectrum2/drums/soundObj;->getTrackMute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lelectrum2/drums/mixer;->mutebutton1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 234
    :goto_0
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    invoke-virtual {v0}, Lelectrum2/drums/soundObj;->getTrackMute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lelectrum2/drums/mixer;->mutebutton2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 241
    :goto_1
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    invoke-virtual {v0}, Lelectrum2/drums/soundObj;->getTrackMute()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lelectrum2/drums/mixer;->mutebutton3:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 248
    :goto_2
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    invoke-virtual {v0}, Lelectrum2/drums/soundObj;->getTrackMute()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lelectrum2/drums/mixer;->mutebutton4:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 255
    :goto_3
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-virtual {v0}, Lelectrum2/drums/soundObj;->getTrackMute()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    iget-object v0, p0, Lelectrum2/drums/mixer;->mutebutton5:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 262
    :goto_4
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    invoke-virtual {v0}, Lelectrum2/drums/soundObj;->getTrackMute()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 264
    iget-object v0, p0, Lelectrum2/drums/mixer;->mutebutton6:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 268
    :goto_5
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    invoke-virtual {v0}, Lelectrum2/drums/soundObj;->getTrackMute()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 270
    iget-object v0, p0, Lelectrum2/drums/mixer;->mutebutton7:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 274
    :goto_6
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    invoke-virtual {v0}, Lelectrum2/drums/soundObj;->getTrackMute()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 276
    iget-object v0, p0, Lelectrum2/drums/mixer;->mutebutton8:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 282
    :goto_7
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lelectrum2/drums/mixer;->mutebutton1:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lelectrum2/drums/mixer;->mutebutton2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 245
    :cond_2
    iget-object v0, p0, Lelectrum2/drums/mixer;->mutebutton3:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2

    .line 252
    :cond_3
    iget-object v0, p0, Lelectrum2/drums/mixer;->mutebutton4:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_3

    .line 259
    :cond_4
    iget-object v0, p0, Lelectrum2/drums/mixer;->mutebutton5:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_4

    .line 266
    :cond_5
    iget-object v0, p0, Lelectrum2/drums/mixer;->mutebutton6:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_5

    .line 272
    :cond_6
    iget-object v0, p0, Lelectrum2/drums/mixer;->mutebutton7:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_6

    .line 278
    :cond_7
    iget-object v0, p0, Lelectrum2/drums/mixer;->mutebutton8:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_7
.end method

.method static synthetic access$0(Lelectrum2/drums/mixer;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    invoke-direct {p0}, Lelectrum2/drums/mixer;->AdjustPan()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->setContentView(I)V

    .line 68
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->setVolumeControlStream(I)V

    .line 72
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lelectrum2/drums/mixer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 74
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lelectrum2/drums/mixer;->ScreenWidth:I

    .line 75
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lelectrum2/drums/mixer;->ScreenHeight:I

    .line 80
    const v1, 0x7f070048

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lelectrum2/drums/mixer;->fadertext1:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f07004c

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lelectrum2/drums/mixer;->fadertext2:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f07004f

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lelectrum2/drums/mixer;->fadertext3:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f070052

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lelectrum2/drums/mixer;->fadertext4:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f070056

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lelectrum2/drums/mixer;->fadertext5:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f07005a

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lelectrum2/drums/mixer;->fadertext6:Landroid/widget/TextView;

    .line 91
    const v1, 0x7f07005e

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lelectrum2/drums/mixer;->fadertext7:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f070062

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lelectrum2/drums/mixer;->fadertext8:Landroid/widget/TextView;

    .line 96
    const v1, 0x7f070067

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lelectrum2/drums/mixer;->resetbutton:Landroid/widget/Button;

    .line 97
    iget-object v1, p0, Lelectrum2/drums/mixer;->resetbutton:Landroid/widget/Button;

    iget-object v2, p0, Lelectrum2/drums/mixer;->resetclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v1, 0x7f070049

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lelectrum2/drums/mixer;->mutebutton1:Landroid/widget/Button;

    .line 100
    const v1, 0x7f07004d

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lelectrum2/drums/mixer;->mutebutton2:Landroid/widget/Button;

    .line 101
    const v1, 0x7f070050

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lelectrum2/drums/mixer;->mutebutton3:Landroid/widget/Button;

    .line 102
    const v1, 0x7f070053

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lelectrum2/drums/mixer;->mutebutton4:Landroid/widget/Button;

    .line 103
    const v1, 0x7f070057

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lelectrum2/drums/mixer;->mutebutton5:Landroid/widget/Button;

    .line 104
    const v1, 0x7f07005b

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lelectrum2/drums/mixer;->mutebutton6:Landroid/widget/Button;

    .line 105
    const v1, 0x7f07005f

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lelectrum2/drums/mixer;->mutebutton7:Landroid/widget/Button;

    .line 107
    const v1, 0x7f070063

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lelectrum2/drums/mixer;->mutebutton8:Landroid/widget/Button;

    .line 110
    iget-object v1, p0, Lelectrum2/drums/mixer;->mutebutton1:Landroid/widget/Button;

    iget-object v2, p0, Lelectrum2/drums/mixer;->mute1Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v1, p0, Lelectrum2/drums/mixer;->mutebutton2:Landroid/widget/Button;

    iget-object v2, p0, Lelectrum2/drums/mixer;->mute2Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lelectrum2/drums/mixer;->mutebutton3:Landroid/widget/Button;

    iget-object v2, p0, Lelectrum2/drums/mixer;->mute3Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v1, p0, Lelectrum2/drums/mixer;->mutebutton4:Landroid/widget/Button;

    iget-object v2, p0, Lelectrum2/drums/mixer;->mute4Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v1, p0, Lelectrum2/drums/mixer;->mutebutton5:Landroid/widget/Button;

    iget-object v2, p0, Lelectrum2/drums/mixer;->mute5Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v1, p0, Lelectrum2/drums/mixer;->mutebutton6:Landroid/widget/Button;

    iget-object v2, p0, Lelectrum2/drums/mixer;->mute6Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lelectrum2/drums/mixer;->mutebutton7:Landroid/widget/Button;

    iget-object v2, p0, Lelectrum2/drums/mixer;->mute7Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lelectrum2/drums/mixer;->mutebutton8:Landroid/widget/Button;

    iget-object v2, p0, Lelectrum2/drums/mixer;->mute8Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v1, 0x7f07004b

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lelectrum2/drums/fadercontrol;

    iput-object v1, p0, Lelectrum2/drums/mixer;->control1:Lelectrum2/drums/fadercontrol;

    .line 125
    iget-object v1, p0, Lelectrum2/drums/mixer;->control1:Lelectrum2/drums/fadercontrol;

    sget-object v2, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    invoke-virtual {v2}, Lelectrum2/drums/soundObj;->GetVolume()F

    move-result v2

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 126
    iget-object v1, p0, Lelectrum2/drums/mixer;->control1:Lelectrum2/drums/fadercontrol;

    iget-object v2, p0, Lelectrum2/drums/mixer;->control1touch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    iget-object v1, p0, Lelectrum2/drums/mixer;->control1:Lelectrum2/drums/fadercontrol;

    sget-object v2, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    iget-object v2, v2, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setText(Ljava/lang/String;)V

    .line 129
    const v1, 0x7f07004e

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lelectrum2/drums/fadercontrol;

    iput-object v1, p0, Lelectrum2/drums/mixer;->control2:Lelectrum2/drums/fadercontrol;

    .line 130
    iget-object v1, p0, Lelectrum2/drums/mixer;->control2:Lelectrum2/drums/fadercontrol;

    sget-object v2, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    invoke-virtual {v2}, Lelectrum2/drums/soundObj;->GetVolume()F

    move-result v2

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 131
    iget-object v1, p0, Lelectrum2/drums/mixer;->control2:Lelectrum2/drums/fadercontrol;

    iget-object v2, p0, Lelectrum2/drums/mixer;->control2touch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    iget-object v1, p0, Lelectrum2/drums/mixer;->control2:Lelectrum2/drums/fadercontrol;

    sget-object v2, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    iget-object v2, v2, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setText(Ljava/lang/String;)V

    .line 134
    const v1, 0x7f070051

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lelectrum2/drums/fadercontrol;

    iput-object v1, p0, Lelectrum2/drums/mixer;->control3:Lelectrum2/drums/fadercontrol;

    .line 135
    iget-object v1, p0, Lelectrum2/drums/mixer;->control3:Lelectrum2/drums/fadercontrol;

    sget-object v2, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    invoke-virtual {v2}, Lelectrum2/drums/soundObj;->GetVolume()F

    move-result v2

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 136
    iget-object v1, p0, Lelectrum2/drums/mixer;->control3:Lelectrum2/drums/fadercontrol;

    iget-object v2, p0, Lelectrum2/drums/mixer;->control3touch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    iget-object v1, p0, Lelectrum2/drums/mixer;->control3:Lelectrum2/drums/fadercontrol;

    sget-object v2, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    iget-object v2, v2, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setText(Ljava/lang/String;)V

    .line 139
    const v1, 0x7f070054

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lelectrum2/drums/fadercontrol;

    iput-object v1, p0, Lelectrum2/drums/mixer;->control4:Lelectrum2/drums/fadercontrol;

    .line 140
    iget-object v1, p0, Lelectrum2/drums/mixer;->control4:Lelectrum2/drums/fadercontrol;

    sget-object v2, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    invoke-virtual {v2}, Lelectrum2/drums/soundObj;->GetVolume()F

    move-result v2

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 141
    iget-object v1, p0, Lelectrum2/drums/mixer;->control4:Lelectrum2/drums/fadercontrol;

    iget-object v2, p0, Lelectrum2/drums/mixer;->control4touch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    iget-object v1, p0, Lelectrum2/drums/mixer;->control4:Lelectrum2/drums/fadercontrol;

    sget-object v2, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    iget-object v2, v2, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setText(Ljava/lang/String;)V

    .line 144
    const v1, 0x7f070058

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lelectrum2/drums/fadercontrol;

    iput-object v1, p0, Lelectrum2/drums/mixer;->control5:Lelectrum2/drums/fadercontrol;

    .line 145
    iget-object v1, p0, Lelectrum2/drums/mixer;->control5:Lelectrum2/drums/fadercontrol;

    sget-object v2, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    invoke-virtual {v2}, Lelectrum2/drums/soundObj;->GetVolume()F

    move-result v2

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 146
    iget-object v1, p0, Lelectrum2/drums/mixer;->control5:Lelectrum2/drums/fadercontrol;

    iget-object v2, p0, Lelectrum2/drums/mixer;->control5touch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    iget-object v1, p0, Lelectrum2/drums/mixer;->control5:Lelectrum2/drums/fadercontrol;

    sget-object v2, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    iget-object v2, v2, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setText(Ljava/lang/String;)V

    .line 149
    const v1, 0x7f07005c

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lelectrum2/drums/fadercontrol;

    iput-object v1, p0, Lelectrum2/drums/mixer;->control6:Lelectrum2/drums/fadercontrol;

    .line 150
    iget-object v1, p0, Lelectrum2/drums/mixer;->control6:Lelectrum2/drums/fadercontrol;

    sget-object v2, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    invoke-virtual {v2}, Lelectrum2/drums/soundObj;->GetVolume()F

    move-result v2

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 151
    iget-object v1, p0, Lelectrum2/drums/mixer;->control6:Lelectrum2/drums/fadercontrol;

    iget-object v2, p0, Lelectrum2/drums/mixer;->control6touch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    iget-object v1, p0, Lelectrum2/drums/mixer;->control6:Lelectrum2/drums/fadercontrol;

    sget-object v2, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    iget-object v2, v2, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setText(Ljava/lang/String;)V

    .line 154
    const v1, 0x7f070060

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lelectrum2/drums/fadercontrol;

    iput-object v1, p0, Lelectrum2/drums/mixer;->control7:Lelectrum2/drums/fadercontrol;

    .line 155
    iget-object v1, p0, Lelectrum2/drums/mixer;->control7:Lelectrum2/drums/fadercontrol;

    sget-object v2, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    invoke-virtual {v2}, Lelectrum2/drums/soundObj;->GetVolume()F

    move-result v2

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 156
    iget-object v1, p0, Lelectrum2/drums/mixer;->control7:Lelectrum2/drums/fadercontrol;

    iget-object v2, p0, Lelectrum2/drums/mixer;->control7touch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    iget-object v1, p0, Lelectrum2/drums/mixer;->control7:Lelectrum2/drums/fadercontrol;

    sget-object v2, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    iget-object v2, v2, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setText(Ljava/lang/String;)V

    .line 159
    const v1, 0x7f070064

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lelectrum2/drums/fadercontrol;

    iput-object v1, p0, Lelectrum2/drums/mixer;->control8:Lelectrum2/drums/fadercontrol;

    .line 160
    iget-object v1, p0, Lelectrum2/drums/mixer;->control8:Lelectrum2/drums/fadercontrol;

    sget-object v2, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    invoke-virtual {v2}, Lelectrum2/drums/soundObj;->GetVolume()F

    move-result v2

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 161
    iget-object v1, p0, Lelectrum2/drums/mixer;->control8:Lelectrum2/drums/fadercontrol;

    iget-object v2, p0, Lelectrum2/drums/mixer;->control8touch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    iget-object v1, p0, Lelectrum2/drums/mixer;->control8:Lelectrum2/drums/fadercontrol;

    sget-object v2, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    iget-object v2, v2, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setText(Ljava/lang/String;)V

    .line 167
    const v1, 0x7f070068

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lelectrum2/drums/fadercontrol;

    iput-object v1, p0, Lelectrum2/drums/mixer;->control9:Lelectrum2/drums/fadercontrol;

    .line 168
    iget-object v1, p0, Lelectrum2/drums/mixer;->control9:Lelectrum2/drums/fadercontrol;

    sget-wide v2, Lelectrum2/drums/globalSounds;->globalVolume:D

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->SetVolume(F)V

    .line 169
    iget-object v1, p0, Lelectrum2/drums/mixer;->control9:Lelectrum2/drums/fadercontrol;

    iget-object v2, p0, Lelectrum2/drums/mixer;->control9touch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    iget-object v1, p0, Lelectrum2/drums/mixer;->control9:Lelectrum2/drums/fadercontrol;

    const-string v2, "Master"

    invoke-virtual {v1, v2}, Lelectrum2/drums/fadercontrol;->setText(Ljava/lang/String;)V

    .line 173
    const v1, 0x7f070069

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lelectrum2/drums/mixer;->panslider:Landroid/widget/SeekBar;

    .line 174
    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Lelectrum2/drums/mixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lelectrum2/drums/mixer;->panname:Landroid/widget/TextView;

    .line 176
    iget-object v1, p0, Lelectrum2/drums/mixer;->panslider:Landroid/widget/SeekBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 179
    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput-object v1, p0, Lelectrum2/drums/mixer;->currentsound:Lelectrum2/drums/soundObj;

    .line 181
    invoke-direct {p0}, Lelectrum2/drums/mixer;->AdjustPan()V

    .line 185
    iget-object v1, p0, Lelectrum2/drums/mixer;->panslider:Landroid/widget/SeekBar;

    iget-object v2, p0, Lelectrum2/drums/mixer;->panchange:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 187
    invoke-direct {p0}, Lelectrum2/drums/mixer;->DoMuteButtons()V

    .line 192
    return-void
.end method
