.class public Lelectrum2/drums/multidrumpads;
.super Landroid/widget/ImageView;
.source "multidrumpads.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lelectrum2/drums/multidrumpads$pad;
    }
.end annotation


# instance fields
.field bitmaplooppadoff:Landroid/graphics/Bitmap;

.field bitmaplooppadon:Landroid/graphics/Bitmap;

.field destrect:Landroid/graphics/Rect;

.field looppad:I

.field padarray:[Lelectrum2/drums/multidrumpads$pad;

.field padding:I

.field padheight:I

.field padnormal:Landroid/graphics/Bitmap;

.field padtrack:Landroid/media/AudioTrack;

.field padtrack2:Landroid/media/AudioTrack;

.field padtrack3:Landroid/media/AudioTrack;

.field padtrack4:Landroid/media/AudioTrack;

.field padtrack5:Landroid/media/AudioTrack;

.field padtrack6:Landroid/media/AudioTrack;

.field padtrack7:Landroid/media/AudioTrack;

.field padtrack8:Landroid/media/AudioTrack;

.field padwidth:I

.field paintobj:Landroid/graphics/Paint;

.field srcrect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/16 v0, 0xa

    iput v0, p0, Lelectrum2/drums/multidrumpads;->padding:I

    .line 44
    const/16 v0, 0x32

    iput v0, p0, Lelectrum2/drums/multidrumpads;->looppad:I

    .line 46
    iput v1, p0, Lelectrum2/drums/multidrumpads;->padwidth:I

    .line 47
    iput v1, p0, Lelectrum2/drums/multidrumpads;->padheight:I

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->srcrect:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->destrect:Landroid/graphics/Rect;

    .line 153
    const/16 v0, 0x8

    new-array v0, v0, [Lelectrum2/drums/multidrumpads$pad;

    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    .line 155
    invoke-virtual {p0}, Lelectrum2/drums/multidrumpads;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 156
    const v1, 0x7f020072

    .line 155
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padnormal:Landroid/graphics/Bitmap;

    .line 158
    invoke-virtual {p0}, Lelectrum2/drums/multidrumpads;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 159
    const v1, 0x7f020069

    .line 158
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->bitmaplooppadon:Landroid/graphics/Bitmap;

    .line 161
    invoke-virtual {p0}, Lelectrum2/drums/multidrumpads;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 162
    const v1, 0x7f020068

    .line 161
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->bitmaplooppadoff:Landroid/graphics/Bitmap;

    .line 165
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->paintobj:Landroid/graphics/Paint;

    .line 166
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->paintobj:Landroid/graphics/Paint;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 167
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->paintobj:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->paintobj:Landroid/graphics/Paint;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 172
    return-void
.end method

.method private PerformPlay(IFF)V
    .locals 5
    .parameter "id"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    .line 757
    const/4 v1, 0x0

    .line 759
    .local v1, padloc:I
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    .line 877
    :cond_0
    :goto_1
    return-void

    .line 763
    :cond_1
    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    iget v2, v2, Lelectrum2/drums/multidrumpads$pad;->left:I

    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    iget v3, v3, Lelectrum2/drums/multidrumpads$pad;->width:I

    add-int/2addr v2, v3

    iget v3, p0, Lelectrum2/drums/multidrumpads;->looppad:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    iget v2, v2, Lelectrum2/drums/multidrumpads$pad;->left:I

    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    iget v3, v3, Lelectrum2/drums/multidrumpads$pad;->width:I

    add-int/2addr v2, v3

    iget v3, p0, Lelectrum2/drums/multidrumpads;->looppad:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_3

    .line 765
    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    iget v2, v2, Lelectrum2/drums/multidrumpads$pad;->top:I

    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    iget v3, v3, Lelectrum2/drums/multidrumpads$pad;->height:I

    add-int/2addr v2, v3

    iget v3, p0, Lelectrum2/drums/multidrumpads;->looppad:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    iget v2, v2, Lelectrum2/drums/multidrumpads$pad;->top:I

    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    iget v3, v3, Lelectrum2/drums/multidrumpads$pad;->height:I

    add-int/2addr v2, v3

    iget v3, p0, Lelectrum2/drums/multidrumpads;->looppad:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_3

    .line 767
    move v1, v0

    .line 768
    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lelectrum2/drums/multidrumpads$pad;->looped:Z

    if-eqz v2, :cond_2

    .line 770
    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lelectrum2/drums/multidrumpads$pad;->looped:Z

    .line 775
    :goto_2
    invoke-virtual {p0}, Lelectrum2/drums/multidrumpads;->invalidate()V

    .line 777
    packed-switch v1, :pswitch_data_0

    .line 808
    :goto_3
    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lelectrum2/drums/multidrumpads$pad;->looped:Z

    if-nez v2, :cond_0

    .line 810
    invoke-direct {p0}, Lelectrum2/drums/multidrumpads;->stopCurrentPadTrack()V

    goto :goto_1

    .line 772
    :cond_2
    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v1

    iput-boolean v4, v2, Lelectrum2/drums/multidrumpads$pad;->looped:Z

    goto :goto_2

    .line 780
    :pswitch_0
    sget-object v2, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    sput-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_3

    .line 784
    :pswitch_1
    sget-object v2, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    sput-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_3

    .line 787
    :pswitch_2
    sget-object v2, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    sput-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_3

    .line 790
    :pswitch_3
    sget-object v2, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    sput-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_3

    .line 793
    :pswitch_4
    sget-object v2, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    sput-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_3

    .line 796
    :pswitch_5
    sget-object v2, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    sput-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_3

    .line 799
    :pswitch_6
    sget-object v2, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    sput-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_3

    .line 802
    :pswitch_7
    sget-object v2, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    sput-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_3

    .line 820
    :cond_3
    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    iget v2, v2, Lelectrum2/drums/multidrumpads$pad;->left:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    iget v2, v2, Lelectrum2/drums/multidrumpads$pad;->left:I

    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    iget v3, v3, Lelectrum2/drums/multidrumpads$pad;->width:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_4

    .line 822
    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    iget v2, v2, Lelectrum2/drums/multidrumpads$pad;->top:I

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    iget v2, v2, Lelectrum2/drums/multidrumpads$pad;->top:I

    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    iget v3, v3, Lelectrum2/drums/multidrumpads$pad;->height:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_4

    .line 824
    move v1, v0

    .line 825
    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v1

    iput-boolean v4, v2, Lelectrum2/drums/multidrumpads$pad;->active:Z

    .line 826
    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v1

    iput p1, v2, Lelectrum2/drums/multidrumpads$pad;->activeid:I

    .line 831
    packed-switch v1, :pswitch_data_1

    .line 863
    :goto_4
    invoke-direct {p0}, Lelectrum2/drums/multidrumpads;->stopCurrentPadTrack()V

    .line 864
    invoke-direct {p0}, Lelectrum2/drums/multidrumpads;->playCurrentPadTrack()V

    .line 759
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 834
    :pswitch_8
    sget-object v2, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    sput-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_4

    .line 838
    :pswitch_9
    sget-object v2, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    sput-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_4

    .line 841
    :pswitch_a
    sget-object v2, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    sput-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_4

    .line 844
    :pswitch_b
    sget-object v2, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    sput-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_4

    .line 847
    :pswitch_c
    sget-object v2, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    sput-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_4

    .line 850
    :pswitch_d
    sget-object v2, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    sput-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_4

    .line 853
    :pswitch_e
    sget-object v2, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    sput-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_4

    .line 856
    :pswitch_f
    sget-object v2, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    sput-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_4

    .line 777
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
    .end packed-switch

    .line 831
    :pswitch_data_1
    .packed-switch 0x0
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

.method private PerformStop(IFF)V
    .locals 4
    .parameter "id"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 716
    const/4 v1, 0x0

    .line 718
    .local v1, padloc:I
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    .line 746
    return-void

    .line 731
    :cond_0
    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    iget v2, v2, Lelectrum2/drums/multidrumpads$pad;->activeid:I

    if-ne v2, p1, :cond_1

    .line 733
    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lelectrum2/drums/multidrumpads$pad;->active:Z

    .line 734
    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lelectrum2/drums/multidrumpads$pad;->activeid:I

    .line 718
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private playCurrentPadTrack()V
    .locals 8

    .prologue
    .line 238
    :try_start_0
    sget-boolean v0, Lelectrum2/drums/globalSounds;->cutpadswhenhit:Z

    if-eqz v0, :cond_1

    .line 242
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 244
    .local v7, buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    .line 246
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 248
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 372
    .end local v7           #buffersize:I
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_3

    .line 258
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 260
    .restart local v7       #buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    .line 262
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 264
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lelectrum2/drums/multidrumpads$pad;->looped:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v7, v2}, Landroid/media/AudioTrack;->setLoopPoints(III)I

    .line 266
    :cond_2
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 269
    .end local v7           #buffersize:I
    :cond_3
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_5

    .line 272
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 274
    .restart local v7       #buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack2:Landroid/media/AudioTrack;

    .line 276
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack2:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 279
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lelectrum2/drums/multidrumpads$pad;->looped:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack2:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v7, v2}, Landroid/media/AudioTrack;->setLoopPoints(III)I

    .line 281
    :cond_4
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack2:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 283
    .end local v7           #buffersize:I
    :cond_5
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_7

    .line 286
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 288
    .restart local v7       #buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack3:Landroid/media/AudioTrack;

    .line 290
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack3:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 292
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lelectrum2/drums/multidrumpads$pad;->looped:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack3:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v7, v2}, Landroid/media/AudioTrack;->setLoopPoints(III)I

    .line 294
    :cond_6
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack3:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 296
    .end local v7           #buffersize:I
    :cond_7
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_9

    .line 299
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 301
    .restart local v7       #buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack4:Landroid/media/AudioTrack;

    .line 303
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack4:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 305
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lelectrum2/drums/multidrumpads$pad;->looped:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack4:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v7, v2}, Landroid/media/AudioTrack;->setLoopPoints(III)I

    .line 307
    :cond_8
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack4:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 309
    .end local v7           #buffersize:I
    :cond_9
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_b

    .line 312
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 314
    .restart local v7       #buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack5:Landroid/media/AudioTrack;

    .line 316
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack5:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 318
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lelectrum2/drums/multidrumpads$pad;->looped:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack5:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v7, v2}, Landroid/media/AudioTrack;->setLoopPoints(III)I

    .line 320
    :cond_a
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack5:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 322
    .end local v7           #buffersize:I
    :cond_b
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_d

    .line 325
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 327
    .restart local v7       #buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack6:Landroid/media/AudioTrack;

    .line 329
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack6:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 331
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lelectrum2/drums/multidrumpads$pad;->looped:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack6:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v7, v2}, Landroid/media/AudioTrack;->setLoopPoints(III)I

    .line 333
    :cond_c
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack6:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 335
    .end local v7           #buffersize:I
    :cond_d
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_f

    .line 338
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 340
    .restart local v7       #buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack7:Landroid/media/AudioTrack;

    .line 342
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack7:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 344
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lelectrum2/drums/multidrumpads$pad;->looped:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack7:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v7, v2}, Landroid/media/AudioTrack;->setLoopPoints(III)I

    .line 346
    :cond_e
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack7:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 348
    .end local v7           #buffersize:I
    :cond_f
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_0

    .line 351
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    sub-int v7, v0, v1

    .line 353
    .restart local v7       #buffersize:I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack8:Landroid/media/AudioTrack;

    .line 355
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack8:Landroid/media/AudioTrack;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v1, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v2, Lelectrum2/drums/soundObj;->startpos:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 357
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lelectrum2/drums/multidrumpads$pad;->looped:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack8:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v7, v2}, Landroid/media/AudioTrack;->setLoopPoints(III)I

    .line 359
    :cond_10
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack8:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 365
    .end local v7           #buffersize:I
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private releaseAllPadTracks()V
    .locals 1

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 186
    :cond_0
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack2:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 191
    :cond_1
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack3:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 196
    :cond_2
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack4:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 201
    :cond_3
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack5:Landroid/media/AudioTrack;

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 206
    :cond_4
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack6:Landroid/media/AudioTrack;

    if-eqz v0, :cond_5

    .line 208
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 211
    :cond_5
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack7:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    .line 213
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 216
    :cond_6
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack8:Landroid/media/AudioTrack;

    if-eqz v0, :cond_7

    .line 218
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_7
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private stopAllPadTracks()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 507
    :try_start_0
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 511
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 512
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 516
    :cond_0
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack2:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack2:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 520
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack2:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 521
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack2:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 524
    :cond_1
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack3:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack3:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 528
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack3:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 529
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack3:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 533
    :cond_2
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack4:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    .line 535
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack4:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 537
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack4:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 538
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack4:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 542
    :cond_3
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack5:Landroid/media/AudioTrack;

    if-eqz v0, :cond_4

    .line 544
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack5:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 546
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack5:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 547
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack5:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 551
    :cond_4
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack6:Landroid/media/AudioTrack;

    if-eqz v0, :cond_5

    .line 553
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack6:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 555
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack6:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 556
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack6:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 560
    :cond_5
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack7:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    .line 562
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack7:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 564
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack7:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 565
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack7:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 569
    :cond_6
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack8:Landroid/media/AudioTrack;

    if-eqz v0, :cond_7

    .line 571
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack8:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 573
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack8:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 574
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack8:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :cond_7
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private stopCurrentPadTrack()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 380
    :try_start_0
    sget-boolean v0, Lelectrum2/drums/globalSounds;->cutpadswhenhit:Z

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 386
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 387
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_2

    .line 397
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 401
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 402
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 408
    :cond_2
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_3

    .line 410
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack2:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack2:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 414
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack2:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 415
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack2:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 420
    :cond_3
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_4

    .line 422
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack3:Landroid/media/AudioTrack;

    if-eqz v0, :cond_4

    .line 424
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack3:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 426
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack3:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 427
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack3:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 432
    :cond_4
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_5

    .line 434
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack4:Landroid/media/AudioTrack;

    if-eqz v0, :cond_5

    .line 436
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack4:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 438
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack4:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 439
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack4:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 443
    :cond_5
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_6

    .line 445
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack5:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    .line 447
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack5:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 449
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack5:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 450
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack5:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 455
    :cond_6
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_7

    .line 457
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack6:Landroid/media/AudioTrack;

    if-eqz v0, :cond_7

    .line 459
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack6:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 461
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack6:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 462
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack6:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 467
    :cond_7
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_8

    .line 469
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack7:Landroid/media/AudioTrack;

    if-eqz v0, :cond_8

    .line 471
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack7:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 473
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack7:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 474
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack7:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 479
    :cond_8
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_0

    .line 481
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack8:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack8:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 485
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack8:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 486
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack8:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 493
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 594
    invoke-direct {p0}, Lelectrum2/drums/multidrumpads;->stopAllPadTracks()V

    .line 595
    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack:Landroid/media/AudioTrack;

    .line 596
    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack2:Landroid/media/AudioTrack;

    .line 597
    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack3:Landroid/media/AudioTrack;

    .line 598
    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack4:Landroid/media/AudioTrack;

    .line 599
    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack5:Landroid/media/AudioTrack;

    .line 600
    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack6:Landroid/media/AudioTrack;

    .line 601
    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack7:Landroid/media/AudioTrack;

    .line 602
    iput-object v0, p0, Lelectrum2/drums/multidrumpads;->padtrack8:Landroid/media/AudioTrack;

    .line 604
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->padnormal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 605
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->bitmaplooppadon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 606
    iget-object v0, p0, Lelectrum2/drums/multidrumpads;->bitmaplooppadoff:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 609
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 612
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 884
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 888
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 918
    return-void

    .line 892
    :cond_0
    iget-object v1, p0, Lelectrum2/drums/multidrumpads;->srcrect:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 893
    iget-object v1, p0, Lelectrum2/drums/multidrumpads;->srcrect:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 894
    iget-object v1, p0, Lelectrum2/drums/multidrumpads;->srcrect:Landroid/graphics/Rect;

    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padnormal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 895
    iget-object v1, p0, Lelectrum2/drums/multidrumpads;->srcrect:Landroid/graphics/Rect;

    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padnormal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 897
    iget-object v1, p0, Lelectrum2/drums/multidrumpads;->destrect:Landroid/graphics/Rect;

    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    iget v2, v2, Lelectrum2/drums/multidrumpads$pad;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 898
    iget-object v1, p0, Lelectrum2/drums/multidrumpads;->destrect:Landroid/graphics/Rect;

    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    iget v2, v2, Lelectrum2/drums/multidrumpads$pad;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 899
    iget-object v1, p0, Lelectrum2/drums/multidrumpads;->destrect:Landroid/graphics/Rect;

    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    iget v2, v2, Lelectrum2/drums/multidrumpads$pad;->top:I

    iget v3, p0, Lelectrum2/drums/multidrumpads;->padheight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 900
    iget-object v1, p0, Lelectrum2/drums/multidrumpads;->destrect:Landroid/graphics/Rect;

    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    iget v2, v2, Lelectrum2/drums/multidrumpads$pad;->left:I

    iget v3, p0, Lelectrum2/drums/multidrumpads;->padwidth:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 902
    iget-object v1, p0, Lelectrum2/drums/multidrumpads;->padnormal:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->srcrect:Landroid/graphics/Rect;

    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->destrect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 904
    iget-object v1, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lelectrum2/drums/multidrumpads$pad;->looped:Z

    if-eqz v1, :cond_1

    .line 906
    iget-object v1, p0, Lelectrum2/drums/multidrumpads;->bitmaplooppadon:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    iget v2, v2, Lelectrum2/drums/multidrumpads$pad;->left:I

    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    iget v3, v3, Lelectrum2/drums/multidrumpads$pad;->width:I

    add-int/2addr v2, v3

    iget v3, p0, Lelectrum2/drums/multidrumpads;->looppad:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    iget v3, v3, Lelectrum2/drums/multidrumpads$pad;->top:I

    iget-object v4, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v4, v4, v0

    iget v4, v4, Lelectrum2/drums/multidrumpads$pad;->height:I

    add-int/2addr v3, v4

    iget v4, p0, Lelectrum2/drums/multidrumpads;->looppad:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 911
    :goto_1
    iget-object v1, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v1, v1, v0

    iget-object v1, v1, Lelectrum2/drums/multidrumpads$pad;->name:Ljava/lang/String;

    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    iget v2, v2, Lelectrum2/drums/multidrumpads$pad;->left:I

    const/high16 v3, 0x4170

    sget v4, Lelectrum2/drums/globalSounds;->DPIVAL:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    iget v3, v3, Lelectrum2/drums/multidrumpads$pad;->top:I

    const/high16 v4, 0x420c

    sget v5, Lelectrum2/drums/globalSounds;->DPIVAL:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lelectrum2/drums/multidrumpads;->paintobj:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 888
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 908
    :cond_1
    iget-object v1, p0, Lelectrum2/drums/multidrumpads;->bitmaplooppadoff:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v2, v2, v0

    iget v2, v2, Lelectrum2/drums/multidrumpads$pad;->left:I

    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    iget v3, v3, Lelectrum2/drums/multidrumpads$pad;->width:I

    add-int/2addr v2, v3

    iget v3, p0, Lelectrum2/drums/multidrumpads;->looppad:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    iget v3, v3, Lelectrum2/drums/multidrumpads$pad;->top:I

    iget-object v4, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v4, v4, v0

    iget v4, v4, Lelectrum2/drums/multidrumpads$pad;->height:I

    add-int/2addr v3, v4

    iget v4, p0, Lelectrum2/drums/multidrumpads;->looppad:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v6, 0x0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 75
    div-int/lit8 v3, p1, 0x4

    iput v3, p0, Lelectrum2/drums/multidrumpads;->padwidth:I

    .line 76
    div-int/lit8 v3, p2, 0x2

    iput v3, p0, Lelectrum2/drums/multidrumpads;->padheight:I

    .line 78
    iget v3, p0, Lelectrum2/drums/multidrumpads;->padding:I

    int-to-float v3, v3

    sget v4, Lelectrum2/drums/globalSounds;->DPIVAL:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lelectrum2/drums/multidrumpads;->padding:I

    .line 79
    iget v3, p0, Lelectrum2/drums/multidrumpads;->looppad:I

    int-to-float v3, v3

    sget v4, Lelectrum2/drums/globalSounds;->DPIVAL:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lelectrum2/drums/multidrumpads;->looppad:I

    .line 81
    iget v3, p0, Lelectrum2/drums/multidrumpads;->padwidth:I

    iget v4, p0, Lelectrum2/drums/multidrumpads;->padding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lelectrum2/drums/multidrumpads;->padwidth:I

    .line 82
    iget v3, p0, Lelectrum2/drums/multidrumpads;->padheight:I

    iget v4, p0, Lelectrum2/drums/multidrumpads;->padding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lelectrum2/drums/multidrumpads;->padheight:I

    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, spreadcount:I
    iget v3, p0, Lelectrum2/drums/multidrumpads;->padding:I

    mul-int/lit8 v2, v3, 0x2

    .line 94
    .local v2, topval:I
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    .line 146
    return-void

    .line 97
    :cond_0
    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    new-instance v4, Lelectrum2/drums/multidrumpads$pad;

    invoke-direct {v4}, Lelectrum2/drums/multidrumpads$pad;-><init>()V

    aput-object v4, v3, v0

    .line 99
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 101
    iget v3, p0, Lelectrum2/drums/multidrumpads;->padheight:I

    iget v4, p0, Lelectrum2/drums/multidrumpads;->padding:I

    mul-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 102
    const/4 v1, 0x0

    .line 105
    :cond_1
    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    iput v2, v3, Lelectrum2/drums/multidrumpads$pad;->top:I

    .line 106
    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    iget v4, p0, Lelectrum2/drums/multidrumpads;->padwidth:I

    iget v5, p0, Lelectrum2/drums/multidrumpads;->padding:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v1

    iget v5, p0, Lelectrum2/drums/multidrumpads;->padding:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Lelectrum2/drums/multidrumpads$pad;->left:I

    .line 107
    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    iget v4, p0, Lelectrum2/drums/multidrumpads;->padwidth:I

    iget v5, p0, Lelectrum2/drums/multidrumpads;->padding:I

    sub-int/2addr v4, v5

    iput v4, v3, Lelectrum2/drums/multidrumpads$pad;->width:I

    .line 108
    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    iget v4, p0, Lelectrum2/drums/multidrumpads;->padheight:I

    iget v5, p0, Lelectrum2/drums/multidrumpads;->padding:I

    sub-int/2addr v4, v5

    iput v4, v3, Lelectrum2/drums/multidrumpads$pad;->height:I

    .line 109
    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    iput-boolean v6, v3, Lelectrum2/drums/multidrumpads$pad;->active:Z

    .line 110
    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lelectrum2/drums/multidrumpads$pad;->activeid:I

    .line 111
    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    iput-boolean v6, v3, Lelectrum2/drums/multidrumpads$pad;->looped:Z

    .line 113
    packed-switch v0, :pswitch_data_0

    .line 142
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :pswitch_0
    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    sget-object v4, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    iget-object v4, v4, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    iput-object v4, v3, Lelectrum2/drums/multidrumpads$pad;->name:Ljava/lang/String;

    goto :goto_1

    .line 119
    :pswitch_1
    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    sget-object v4, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    iget-object v4, v4, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    iput-object v4, v3, Lelectrum2/drums/multidrumpads$pad;->name:Ljava/lang/String;

    goto :goto_1

    .line 122
    :pswitch_2
    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    sget-object v4, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    iget-object v4, v4, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    iput-object v4, v3, Lelectrum2/drums/multidrumpads$pad;->name:Ljava/lang/String;

    goto :goto_1

    .line 125
    :pswitch_3
    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    sget-object v4, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    iget-object v4, v4, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    iput-object v4, v3, Lelectrum2/drums/multidrumpads$pad;->name:Ljava/lang/String;

    goto :goto_1

    .line 128
    :pswitch_4
    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    sget-object v4, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    iget-object v4, v4, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    iput-object v4, v3, Lelectrum2/drums/multidrumpads$pad;->name:Ljava/lang/String;

    goto :goto_1

    .line 131
    :pswitch_5
    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    sget-object v4, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    iget-object v4, v4, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    iput-object v4, v3, Lelectrum2/drums/multidrumpads$pad;->name:Ljava/lang/String;

    goto :goto_1

    .line 134
    :pswitch_6
    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    sget-object v4, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    iget-object v4, v4, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    iput-object v4, v3, Lelectrum2/drums/multidrumpads$pad;->name:Ljava/lang/String;

    goto :goto_1

    .line 137
    :pswitch_7
    iget-object v3, p0, Lelectrum2/drums/multidrumpads;->padarray:[Lelectrum2/drums/multidrumpads$pad;

    aget-object v3, v3, v0

    sget-object v4, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    iget-object v4, v4, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    iput-object v4, v3, Lelectrum2/drums/multidrumpads$pad;->name:Ljava/lang/String;

    goto :goto_1

    .line 113
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
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const v7, 0xff00

    const/4 v6, 0x1

    .line 618
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 619
    .local v3, tempint:Ljava/lang/Integer;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 624
    .local v0, action:I
    and-int/lit16 v4, v0, 0xff

    if-nez v4, :cond_0

    .line 631
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 633
    .local v1, ptrId:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Lelectrum2/drums/multidrumpads;->PerformPlay(IFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 643
    .end local v1           #ptrId:I
    :cond_0
    :goto_0
    and-int/lit16 v4, v0, 0xff

    if-ne v4, v6, :cond_1

    .line 648
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 651
    .restart local v1       #ptrId:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Lelectrum2/drums/multidrumpads;->PerformStop(IFF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 662
    .end local v1           #ptrId:I
    :cond_1
    :goto_1
    and-int/lit16 v4, v0, 0xff

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 667
    and-int v4, v0, v7

    ushr-int/lit8 v2, v4, 0x8

    .line 670
    .local v2, ptrindexval:I
    :try_start_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 673
    .restart local v1       #ptrId:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Lelectrum2/drums/multidrumpads;->PerformStop(IFF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 683
    .end local v1           #ptrId:I
    .end local v2           #ptrindexval:I
    :cond_2
    :goto_2
    and-int/lit16 v4, v0, 0xff

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 689
    and-int v4, v0, v7

    ushr-int/lit8 v2, v4, 0x8

    .line 692
    .restart local v2       #ptrindexval:I
    :try_start_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 694
    .restart local v1       #ptrId:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Lelectrum2/drums/multidrumpads;->PerformPlay(IFF)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 707
    .end local v1           #ptrId:I
    .end local v2           #ptrindexval:I
    :cond_3
    :goto_3
    return v6

    .line 696
    .restart local v2       #ptrindexval:I
    :catch_0
    move-exception v4

    goto :goto_3

    .line 675
    :catch_1
    move-exception v4

    goto :goto_2

    .line 654
    .end local v2           #ptrindexval:I
    :catch_2
    move-exception v4

    goto :goto_1

    .line 635
    :catch_3
    move-exception v4

    goto :goto_0
.end method
