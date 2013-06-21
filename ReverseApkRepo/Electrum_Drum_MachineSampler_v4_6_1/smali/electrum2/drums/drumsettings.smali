.class public Lelectrum2/drums/drumsettings;
.super Landroid/app/Activity;
.source "drumsettings.java"


# instance fields
.field OldPosition:I

.field OldY:F

.field Position:I

.field WasRecording:Z

.field private bpmOnClick:Landroid/view/View$OnClickListener;

.field bpmbutton:Landroid/widget/CheckBox;

.field private btnOkClick:Landroid/view/View$OnClickListener;

.field private btnPlaySampleClick:Landroid/view/View$OnClickListener;

.field private btnSampleLoadClick:Landroid/view/View$OnClickListener;

.field private btnTest2Click:Landroid/view/View$OnClickListener;

.field private btnTestClick:Landroid/view/View$OnClickListener;

.field copybutton:Landroid/widget/Button;

.field copyclick:Landroid/view/View$OnClickListener;

.field drumname:Landroid/widget/EditText;

.field private drumplaylistener:Landroid/view/View$OnClickListener;

.field drumsamplename:Landroid/widget/TextView;

.field fxbutton:Landroid/widget/Button;

.field fxchanging:Z

.field fxdistbutton:Landroid/widget/Button;

.field fxdistortionlistener:Landroid/view/View$OnClickListener;

.field fxlistener:Landroid/view/View$OnClickListener;

.field fxreversebutton:Landroid/widget/Button;

.field fxreverselistener:Landroid/view/View$OnClickListener;

.field lOldPosition:I

.field lOldY:F

.field lPosition:I

.field loadsamplebutton:Landroid/widget/Button;

.field lrotator:Landroid/view/animation/RotateAnimation;

.field lstarttracking:Z

.field okbutton:Landroid/widget/Button;

.field padtrack:Landroid/media/AudioTrack;

.field pastebutton:Landroid/widget/Button;

.field pasteclick:Landroid/view/View$OnClickListener;

.field playsamplebutton:Landroid/widget/Button;

.field recordsamplebutton:Landroid/widget/Button;

.field private recordsamplelistener:Landroid/view/View$OnClickListener;

.field retrigbutton:Landroid/widget/Button;

.field retriglistener:Landroid/view/View$OnClickListener;

.field rotator:Landroid/view/animation/RotateAnimation;

.field sampleleft:Landroid/widget/Button;

.field private sampleleftlistener:Landroid/view/View$OnClickListener;

.field samplerecorder:Landroid/media/AudioRecord;

.field sampleright:Landroid/widget/Button;

.field private samplerightlistener:Landroid/view/View$OnClickListener;

.field starttracking:Z

.field stopsamplebutton:Landroid/widget/Button;

.field private stopsamplelistener:Landroid/view/View$OnClickListener;

.field test2button:Landroid/widget/Button;

.field testbutton:Landroid/widget/Button;

.field volknob:Landroid/widget/ImageView;

.field vollistener:Landroid/view/View$OnTouchListener;

.field voltext:Landroid/widget/TextView;

.field volval:D

.field wave:Lelectrum2/drums/wavedisplay;

.field private waveclicklistener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput-boolean v0, p0, Lelectrum2/drums/drumsettings;->WasRecording:Z

    .line 74
    iput v0, p0, Lelectrum2/drums/drumsettings;->Position:I

    .line 75
    iput v0, p0, Lelectrum2/drums/drumsettings;->OldPosition:I

    .line 77
    iput-boolean v0, p0, Lelectrum2/drums/drumsettings;->starttracking:Z

    .line 83
    iput v0, p0, Lelectrum2/drums/drumsettings;->lPosition:I

    .line 84
    iput v0, p0, Lelectrum2/drums/drumsettings;->lOldPosition:I

    .line 86
    iput-boolean v0, p0, Lelectrum2/drums/drumsettings;->lstarttracking:Z

    .line 90
    iput-boolean v0, p0, Lelectrum2/drums/drumsettings;->fxchanging:Z

    .line 230
    new-instance v0, Lelectrum2/drums/drumsettings$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$1;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->retriglistener:Landroid/view/View$OnClickListener;

    .line 262
    new-instance v0, Lelectrum2/drums/drumsettings$2;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$2;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->fxreverselistener:Landroid/view/View$OnClickListener;

    .line 301
    new-instance v0, Lelectrum2/drums/drumsettings$3;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$3;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->copyclick:Landroid/view/View$OnClickListener;

    .line 314
    new-instance v0, Lelectrum2/drums/drumsettings$4;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$4;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->pasteclick:Landroid/view/View$OnClickListener;

    .line 418
    new-instance v0, Lelectrum2/drums/drumsettings$5;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$5;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->fxlistener:Landroid/view/View$OnClickListener;

    .line 469
    new-instance v0, Lelectrum2/drums/drumsettings$6;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$6;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->fxdistortionlistener:Landroid/view/View$OnClickListener;

    .line 600
    new-instance v0, Lelectrum2/drums/drumsettings$7;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$7;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->vollistener:Landroid/view/View$OnTouchListener;

    .line 680
    new-instance v0, Lelectrum2/drums/drumsettings$8;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$8;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->stopsamplelistener:Landroid/view/View$OnClickListener;

    .line 692
    new-instance v0, Lelectrum2/drums/drumsettings$9;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$9;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->sampleleftlistener:Landroid/view/View$OnClickListener;

    .line 736
    new-instance v0, Lelectrum2/drums/drumsettings$10;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$10;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->samplerightlistener:Landroid/view/View$OnClickListener;

    .line 786
    new-instance v0, Lelectrum2/drums/drumsettings$11;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$11;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->recordsamplelistener:Landroid/view/View$OnClickListener;

    .line 831
    new-instance v0, Lelectrum2/drums/drumsettings$12;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$12;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->drumplaylistener:Landroid/view/View$OnClickListener;

    .line 871
    new-instance v0, Lelectrum2/drums/drumsettings$13;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$13;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->waveclicklistener:Landroid/view/View$OnClickListener;

    .line 895
    new-instance v0, Lelectrum2/drums/drumsettings$14;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$14;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->btnTestClick:Landroid/view/View$OnClickListener;

    .line 945
    new-instance v0, Lelectrum2/drums/drumsettings$15;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$15;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->btnTest2Click:Landroid/view/View$OnClickListener;

    .line 1005
    new-instance v0, Lelectrum2/drums/drumsettings$16;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$16;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->bpmOnClick:Landroid/view/View$OnClickListener;

    .line 1062
    new-instance v0, Lelectrum2/drums/drumsettings$17;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$17;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->btnOkClick:Landroid/view/View$OnClickListener;

    .line 1247
    new-instance v0, Lelectrum2/drums/drumsettings$18;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$18;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->btnSampleLoadClick:Landroid/view/View$OnClickListener;

    .line 1270
    new-instance v0, Lelectrum2/drums/drumsettings$19;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsettings$19;-><init>(Lelectrum2/drums/drumsettings;)V

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->btnPlaySampleClick:Landroid/view/View$OnClickListener;

    .line 26
    return-void
.end method

.method private ClearFx()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 336
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v6}, Lelectrum2/drums/soundObj;->ClearReverse()V

    .line 339
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v6, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 341
    .local v2, oldsamplefulllen:I
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->pitch:I

    invoke-virtual {v6, v7}, Lelectrum2/drums/soundObj;->SetPitch(I)Z

    .line 343
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->samplelen:I

    int-to-double v6, v6

    int-to-double v8, v2

    div-double v0, v6, v8

    .line 344
    .local v0, endpointdiff:D
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->startpos:I

    int-to-double v6, v6

    int-to-double v8, v2

    div-double v3, v6, v8

    .line 348
    .local v3, startposdiff:D
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v7, v7

    mul-double/2addr v7, v0

    double-to-int v7, v7

    iput v7, v6, Lelectrum2/drums/soundObj;->samplelen:I

    .line 349
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v7, v7

    mul-double/2addr v7, v3

    double-to-int v7, v7

    iput v7, v6, Lelectrum2/drums/soundObj;->startpos:I

    .line 351
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    if-le v6, v7, :cond_0

    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    iput v7, v6, Lelectrum2/drums/soundObj;->samplelen:I

    .line 352
    :cond_0
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->startpos:I

    if-gez v6, :cond_1

    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput v10, v6, Lelectrum2/drums/soundObj;->startpos:I

    .line 356
    :cond_1
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v6, v10}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 358
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v6, v6, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 362
    .local v5, temptoast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 367
    .end local v5           #temptoast:Landroid/widget/Toast;
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 368
    return-void
.end method

.method private DoFx()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 376
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-boolean v6, v6, Lelectrum2/drums/soundObj;->hasReverse:Z

    if-eqz v6, :cond_3

    .line 381
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v6, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 383
    .local v2, oldsamplefulllen:I
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->pitch:I

    invoke-virtual {v6, v7}, Lelectrum2/drums/soundObj;->SetPitch(I)Z

    .line 385
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->samplelen:I

    int-to-double v6, v6

    int-to-double v8, v2

    div-double v0, v6, v8

    .line 386
    .local v0, endpointdiff:D
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->startpos:I

    int-to-double v6, v6

    int-to-double v8, v2

    div-double v3, v6, v8

    .line 390
    .local v3, startposdiff:D
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v7, v7

    mul-double/2addr v7, v0

    double-to-int v7, v7

    iput v7, v6, Lelectrum2/drums/soundObj;->samplelen:I

    .line 391
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v7, v7

    mul-double/2addr v7, v3

    double-to-int v7, v7

    iput v7, v6, Lelectrum2/drums/soundObj;->startpos:I

    .line 393
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    if-le v6, v7, :cond_0

    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    iput v7, v6, Lelectrum2/drums/soundObj;->samplelen:I

    .line 394
    :cond_0
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->startpos:I

    if-gez v6, :cond_1

    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput v10, v6, Lelectrum2/drums/soundObj;->startpos:I

    .line 399
    :cond_1
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v6, v10}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 401
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v6, v6, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 405
    .local v5, temptoast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 409
    .end local v5           #temptoast:Landroid/widget/Toast;
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 413
    .end local v0           #endpointdiff:D
    .end local v2           #oldsamplefulllen:I
    .end local v3           #startposdiff:D
    :cond_3
    return-void
.end method

.method private DoFxButtonColors()V
    .locals 5

    .prologue
    const/16 v4, 0xff

    const/high16 v3, -0x1

    const/16 v2, 0x28

    .line 202
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->hasReverse:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lelectrum2/drums/drumsettings;->fxreversebutton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 211
    :goto_0
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->hasDelay:Z

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lelectrum2/drums/drumsettings;->fxbutton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 218
    :goto_1
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->hasDistortion:Z

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lelectrum2/drums/drumsettings;->fxdistbutton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 226
    :goto_2
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lelectrum2/drums/drumsettings;->fxreversebutton:Landroid/widget/Button;

    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lelectrum2/drums/drumsettings;->fxbutton:Landroid/widget/Button;

    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 223
    :cond_2
    iget-object v0, p0, Lelectrum2/drums/drumsettings;->fxdistbutton:Landroid/widget/Button;

    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2
.end method

.method private InitDisplayValues()V
    .locals 6

    .prologue
    .line 521
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-wide v0, v0, Lelectrum2/drums/soundObj;->samplevolume:D

    iput-wide v0, p0, Lelectrum2/drums/drumsettings;->volval:D

    .line 524
    iget-object v0, p0, Lelectrum2/drums/drumsettings;->bpmbutton:Landroid/widget/CheckBox;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-boolean v1, v1, Lelectrum2/drums/soundObj;->dofitbpm:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 527
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->retrigger:Z

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lelectrum2/drums/drumsettings;->retrigbutton:Landroid/widget/Button;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 535
    :goto_0
    const-wide v0, -0x3fa9800000000000L

    iget-wide v2, p0, Lelectrum2/drums/drumsettings;->volval:D

    const-wide v4, 0x4066800000000000L

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lelectrum2/drums/drumsettings;->Position:I

    .line 536
    const/4 v0, 0x0

    iput v0, p0, Lelectrum2/drums/drumsettings;->OldPosition:I

    .line 538
    iget-object v0, p0, Lelectrum2/drums/drumsettings;->drumname:Landroid/widget/EditText;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lelectrum2/drums/drumsettings;->drumsamplename:Landroid/widget/TextView;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    invoke-direct {p0}, Lelectrum2/drums/drumsettings;->SetKnobPositions()V

    .line 543
    invoke-direct {p0}, Lelectrum2/drums/drumsettings;->SetVolumeAndLengthText()V

    .line 545
    iget-object v0, p0, Lelectrum2/drums/drumsettings;->wave:Lelectrum2/drums/wavedisplay;

    invoke-virtual {v0}, Lelectrum2/drums/wavedisplay;->invalidate()V

    .line 548
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lelectrum2/drums/drumsettings;->retrigbutton:Landroid/widget/Button;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method private SetKnobPositions()V
    .locals 8

    .prologue
    .line 554
    invoke-virtual {p0}, Lelectrum2/drums/drumsettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f02

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 556
    .local v0, temp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 558
    .local v1, volknobsize:I
    move v2, v1

    .line 561
    .local v2, xrot:I
    new-instance v3, Landroid/view/animation/RotateAnimation;

    iget v4, p0, Lelectrum2/drums/drumsettings;->OldPosition:I

    int-to-float v4, v4

    iget v5, p0, Lelectrum2/drums/drumsettings;->Position:I

    int-to-float v5, v5

    int-to-float v6, v2

    int-to-float v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    iput-object v3, p0, Lelectrum2/drums/drumsettings;->rotator:Landroid/view/animation/RotateAnimation;

    .line 562
    iget-object v3, p0, Lelectrum2/drums/drumsettings;->rotator:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 563
    iget-object v3, p0, Lelectrum2/drums/drumsettings;->rotator:Landroid/view/animation/RotateAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 564
    iget-object v3, p0, Lelectrum2/drums/drumsettings;->rotator:Landroid/view/animation/RotateAnimation;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 566
    iget-object v3, p0, Lelectrum2/drums/drumsettings;->volknob:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/drumsettings;->rotator:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 568
    iget v3, p0, Lelectrum2/drums/drumsettings;->Position:I

    iput v3, p0, Lelectrum2/drums/drumsettings;->OldPosition:I

    .line 570
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 571
    const/4 v0, 0x0

    .line 574
    return-void
.end method

.method private SetVolumeAndLengthText()V
    .locals 6

    .prologue
    .line 582
    iget v2, p0, Lelectrum2/drums/drumsettings;->Position:I

    int-to-float v2, v2

    const/high16 v3, 0x42b4

    add-float/2addr v2, v3

    const/high16 v3, 0x4334

    div-float/2addr v2, v3

    float-to-double v2, v2

    iput-wide v2, p0, Lelectrum2/drums/drumsettings;->volval:D

    .line 584
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.0"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 587
    .local v0, twoPlaces:Ljava/text/DecimalFormat;
    new-instance v1, Ljava/lang/Double;

    iget-wide v2, p0, Lelectrum2/drums/drumsettings;->volval:D

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    .line 589
    .local v1, volper:Ljava/lang/Double;
    iget-object v2, p0, Lelectrum2/drums/drumsettings;->voltext:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Vol: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    return-void
.end method

.method private StopSounds()V
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lelectrum2/drums/drumsettings;->padtrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 1102
    :try_start_0
    iget-object v0, p0, Lelectrum2/drums/drumsettings;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 1103
    iget-object v0, p0, Lelectrum2/drums/drumsettings;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 1105
    const/4 v0, 0x0

    iput-object v0, p0, Lelectrum2/drums/drumsettings;->padtrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1110
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$0(Lelectrum2/drums/drumsettings;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    invoke-direct {p0}, Lelectrum2/drums/drumsettings;->ClearFx()V

    return-void
.end method

.method static synthetic access$1(Lelectrum2/drums/drumsettings;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    invoke-direct {p0}, Lelectrum2/drums/drumsettings;->DoFx()V

    return-void
.end method

.method static synthetic access$2(Lelectrum2/drums/drumsettings;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    invoke-direct {p0}, Lelectrum2/drums/drumsettings;->DoFxButtonColors()V

    return-void
.end method

.method static synthetic access$3(Lelectrum2/drums/drumsettings;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    invoke-direct {p0}, Lelectrum2/drums/drumsettings;->InitDisplayValues()V

    return-void
.end method

.method static synthetic access$4(Lelectrum2/drums/drumsettings;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    invoke-direct {p0}, Lelectrum2/drums/drumsettings;->SetVolumeAndLengthText()V

    return-void
.end method

.method static synthetic access$5(Lelectrum2/drums/drumsettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1094
    invoke-direct {p0}, Lelectrum2/drums/drumsettings;->StopSounds()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-wide/high16 v6, 0x3ff0

    const/4 v10, 0x0

    .line 1145
    if-eqz p2, :cond_3

    .line 1147
    const/16 v4, 0xd75

    if-ne p1, v4, :cond_0

    .line 1151
    sget-object v4, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v5, Lelectrum2/drums/globalSounds;->recordedfilename:Ljava/lang/String;

    invoke-virtual {v4, v5, v10}, Lelectrum2/drums/soundObj;->LoadWaveFile(Ljava/lang/String;Z)Z

    .line 1152
    sget-object v4, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v5, Lelectrum2/drums/globalSounds;->recordedfilename:Ljava/lang/String;

    iput-object v5, v4, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 1154
    invoke-direct {p0}, Lelectrum2/drums/drumsettings;->InitDisplayValues()V

    .line 1162
    :cond_0
    const/16 v4, 0x2a

    if-ne p1, v4, :cond_2

    .line 1164
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1166
    .local v0, extras:Landroid/os/Bundle;
    const-string v4, "selectedsamplefile"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1168
    .local v1, result:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 1175
    const/4 v3, 0x1

    .line 1179
    .local v3, testsound:Z
    sget-object v4, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v4, v1, v10}, Lelectrum2/drums/soundObj;->LoadWaveFile(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1181
    sget-object v4, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v4, v4, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1183
    .local v2, temptoast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1184
    const/4 v3, 0x0

    .line 1188
    .end local v2           #temptoast:Landroid/widget/Toast;
    :cond_1
    if-eqz v3, :cond_2

    .line 1192
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->bpmbutton:Landroid/widget/CheckBox;

    sget-object v5, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-boolean v5, v5, Lelectrum2/drums/soundObj;->dofitbpm:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1195
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->drumsamplename:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    sget-object v4, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Lelectrum2/drums/soundObj;->samplefilename:Ljava/lang/String;

    .line 1197
    sget-object v4, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v4, v6, v7}, Lelectrum2/drums/soundObj;->SetSampleVolume(D)V

    .line 1198
    sget-object v4, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v4, v6, v7}, Lelectrum2/drums/soundObj;->SetSampleLen(D)V

    .line 1200
    sget-object v4, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-wide v4, v4, Lelectrum2/drums/soundObj;->samplevolume:D

    iput-wide v4, p0, Lelectrum2/drums/drumsettings;->volval:D

    .line 1202
    iput v10, p0, Lelectrum2/drums/drumsettings;->OldPosition:I

    .line 1206
    const-wide v4, -0x3fa9800000000000L

    iget-wide v6, p0, Lelectrum2/drums/drumsettings;->volval:D

    const-wide v8, 0x4066800000000000L

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lelectrum2/drums/drumsettings;->Position:I

    .line 1209
    invoke-direct {p0}, Lelectrum2/drums/drumsettings;->SetKnobPositions()V

    .line 1211
    invoke-direct {p0}, Lelectrum2/drums/drumsettings;->SetVolumeAndLengthText()V

    .line 1234
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #result:Ljava/lang/String;
    .end local v3           #testsound:Z
    :cond_2
    :goto_0
    iput-boolean v10, p0, Lelectrum2/drums/drumsettings;->WasRecording:Z

    .line 1235
    iput-boolean v10, p0, Lelectrum2/drums/drumsettings;->fxchanging:Z

    .line 1237
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->wave:Lelectrum2/drums/wavedisplay;

    invoke-virtual {v4}, Lelectrum2/drums/wavedisplay;->invalidate()V

    .line 1239
    invoke-direct {p0}, Lelectrum2/drums/drumsettings;->InitDisplayValues()V

    .line 1241
    invoke-direct {p0}, Lelectrum2/drums/drumsettings;->DoFxButtonColors()V

    .line 1243
    return-void

    .line 1223
    :cond_3
    iget-boolean v4, p0, Lelectrum2/drums/drumsettings;->WasRecording:Z

    if-nez v4, :cond_2

    .line 1225
    iget-boolean v4, p0, Lelectrum2/drums/drumsettings;->fxchanging:Z

    if-nez v4, :cond_2

    .line 1227
    sget-object v4, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v4}, Lelectrum2/drums/soundObj;->RestoreBackupSample()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x3

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v4, 0x7f030006

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->setContentView(I)V

    .line 102
    invoke-virtual {p0}, Lelectrum2/drums/drumsettings;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 103
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 104
    .local v3, width:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 106
    .local v1, height:I
    invoke-virtual {p0}, Lelectrum2/drums/drumsettings;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 109
    .local v2, params:Landroid/view/WindowManager$LayoutParams;
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 112
    invoke-virtual {p0}, Lelectrum2/drums/drumsettings;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 115
    invoke-virtual {p0}, Lelectrum2/drums/drumsettings;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 118
    const v4, 0x7f070030

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->drumname:Landroid/widget/EditText;

    .line 119
    const v4, 0x7f07003f

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->drumsamplename:Landroid/widget/TextView;

    .line 120
    const v4, 0x7f070041

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->loadsamplebutton:Landroid/widget/Button;

    .line 121
    const v4, 0x7f070046

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->okbutton:Landroid/widget/Button;

    .line 122
    const v4, 0x7f070035

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->playsamplebutton:Landroid/widget/Button;

    .line 123
    const v4, 0x7f070037

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->recordsamplebutton:Landroid/widget/Button;

    .line 124
    const v4, 0x7f070043

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->testbutton:Landroid/widget/Button;

    .line 125
    const v4, 0x7f070044

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->test2button:Landroid/widget/Button;

    .line 126
    const v4, 0x7f070045

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->bpmbutton:Landroid/widget/CheckBox;

    .line 127
    const v4, 0x7f070036

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->stopsamplebutton:Landroid/widget/Button;

    .line 129
    const v4, 0x7f070031

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->copybutton:Landroid/widget/Button;

    .line 130
    const v4, 0x7f070034

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->pastebutton:Landroid/widget/Button;

    .line 132
    const v4, 0x7f070032

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->sampleleft:Landroid/widget/Button;

    .line 133
    const v4, 0x7f070033

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->sampleright:Landroid/widget/Button;

    .line 135
    const v4, 0x7f07003c

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->fxbutton:Landroid/widget/Button;

    .line 136
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->fxbutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->fxlistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v4, 0x7f07003b

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->fxreversebutton:Landroid/widget/Button;

    .line 139
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->fxreversebutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->fxreverselistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v4, 0x7f070039

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->volknob:Landroid/widget/ImageView;

    .line 143
    const v4, 0x7f07003a

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->voltext:Landroid/widget/TextView;

    .line 146
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->volknob:Landroid/widget/ImageView;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->vollistener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    const v4, 0x7f070038

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lelectrum2/drums/wavedisplay;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->wave:Lelectrum2/drums/wavedisplay;

    .line 150
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->wave:Lelectrum2/drums/wavedisplay;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->waveclicklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lelectrum2/drums/wavedisplay;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->okbutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->btnOkClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->loadsamplebutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->btnSampleLoadClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->playsamplebutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->drumplaylistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->stopsamplebutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->stopsamplelistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->recordsamplebutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->recordsamplelistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->testbutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->btnTestClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->test2button:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->btnTest2Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->bpmbutton:Landroid/widget/CheckBox;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->bpmOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->sampleleft:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->sampleleftlistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->sampleright:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->samplerightlistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->copybutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->copyclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->pastebutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->pasteclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v4, 0x7f070042

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->retrigbutton:Landroid/widget/Button;

    .line 177
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->retrigbutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->retriglistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v4, 0x7f07003d

    invoke-virtual {p0, v4}, Lelectrum2/drums/drumsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/drumsettings;->fxdistbutton:Landroid/widget/Button;

    .line 181
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->fxdistbutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/drumsettings;->fxdistortionlistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-direct {p0}, Lelectrum2/drums/drumsettings;->DoFxButtonColors()V

    .line 187
    invoke-direct {p0}, Lelectrum2/drums/drumsettings;->InitDisplayValues()V

    .line 189
    invoke-virtual {p0, v6}, Lelectrum2/drums/drumsettings;->setVolumeControlStream(I)V

    .line 191
    iget-object v4, p0, Lelectrum2/drums/drumsettings;->volknob:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->requestFocus()Z

    .line 194
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1123
    invoke-direct {p0}, Lelectrum2/drums/drumsettings;->StopSounds()V

    .line 1131
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1134
    return-void
.end method
