.class public Lcom/jellybus/fx/Activity_Border_Vignetting;
.super Landroid/app/Activity;
.source "Activity_Border_Vignetting.java"


# instance fields
.field private final ELLIPS_ORI:I

.field private final ELLIPS_WHITE:I

.field private final ORIGINAL:I

.field private final WHITE:I

.field private final apply_handler:Landroid/os/Handler;

.field private compare:Landroid/graphics/Bitmap;

.field private compare_Listener:Landroid/view/View$OnTouchListener;

.field private current_vignetting:I

.field private empty_text_view:Landroid/widget/TextView;

.field private empty_view:Landroid/widget/ImageView;

.field private inner:F

.field private inner_short:F

.field private isSubOn:Z

.field private none_listener:Landroid/view/View$OnTouchListener;

.field private outter:F

.field private preview:Landroid/graphics/Bitmap;

.field private progressListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private progress_value:F

.field private resetListener:Landroid/view/View$OnClickListener;

.field private slope:F

.field private vignetting_button_compare:Landroid/widget/ImageView;

.field private vignetting_button_sub:Landroid/widget/ImageView;

.field private vignetting_compare_info:Landroid/widget/TextView;

.field private vignetting_icon:Landroid/widget/ImageView;

.field private vignetting_pic:Landroid/widget/ImageView;

.field private vignetting_seekbar:Landroid/widget/SeekBar;

.field private vignetting_select1:Landroid/widget/ImageView;

.field private vignetting_select2:Landroid/widget/ImageView;

.field private vignetting_select3:Landroid/widget/ImageView;

.field private vignetting_select4:Landroid/widget/ImageView;

.field private vignetting_sub:Landroid/widget/LinearLayout;

.field private vignetting_value:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->progress_value:F

    .line 55
    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->ORIGINAL:I

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->WHITE:I

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->ELLIPS_ORI:I

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->ELLIPS_WHITE:I

    .line 59
    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->current_vignetting:I

    .line 217
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Vignetting$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Vignetting$1;-><init>(Lcom/jellybus/fx/Activity_Border_Vignetting;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->none_listener:Landroid/view/View$OnTouchListener;

    .line 226
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Vignetting$2;-><init>(Lcom/jellybus/fx/Activity_Border_Vignetting;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->progressListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 261
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Vignetting$3;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Vignetting$3;-><init>(Lcom/jellybus/fx/Activity_Border_Vignetting;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare_Listener:Landroid/view/View$OnTouchListener;

    .line 289
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Vignetting$4;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Vignetting$4;-><init>(Lcom/jellybus/fx/Activity_Border_Vignetting;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->resetListener:Landroid/view/View$OnClickListener;

    .line 391
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Vignetting$5;-><init>(Lcom/jellybus/fx/Activity_Border_Vignetting;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->apply_handler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx/Activity_Border_Vignetting;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->removePreviewBitmap()V

    return-void
.end method

.method static synthetic access$10(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_compare_info:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_sub:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jellybus/fx/Activity_Border_Vignetting;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->isSubOn:Z

    return-void
.end method

.method static synthetic access$13(Lcom/jellybus/fx/Activity_Border_Vignetting;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->isSubOn:Z

    return v0
.end method

.method static synthetic access$14(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_seekbar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jellybus/fx/Activity_Border_Vignetting;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->current_vignetting:I

    return v0
.end method

.method static synthetic access$16(Lcom/jellybus/fx/Activity_Border_Vignetting;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->removeBitmap()V

    return-void
.end method

.method static synthetic access$2(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jellybus/fx/Activity_Border_Vignetting;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->setVignetting(II)V

    return-void
.end method

.method static synthetic access$4(Lcom/jellybus/fx/Activity_Border_Vignetting;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_pic:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jellybus/fx/Activity_Border_Vignetting;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput p1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->progress_value:F

    return-void
.end method

.method static synthetic access$8(Lcom/jellybus/fx/Activity_Border_Vignetting;)F
    .locals 1
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->progress_value:F

    return v0
.end method

.method static synthetic access$9(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_button_compare:Landroid/widget/ImageView;

    return-object v0
.end method

.method private degreesToRadian(F)F
    .locals 4
    .parameter "angle"

    .prologue
    .line 181
    const-wide v0, 0x400921fb54442d18L

    float-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getPreview()V
    .locals 4

    .prologue
    .line 186
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    .line 187
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 189
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;

    .line 190
    const/high16 v0, 0x3f00

    const/4 v1, 0x1

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-static {v0, v1, v2, v3}, Lcom/jellybus/fx/Juliet;->setVignettingWithColorAllIndex(FIII)V

    .line 191
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 192
    return-void
.end method

.method private removeBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 199
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    .line 206
    :cond_1
    return-void
.end method

.method private removePreviewBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 212
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;

    .line 214
    :cond_0
    return-void
.end method

.method private setOffButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_select1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 372
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_select2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_select3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 374
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_select4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 375
    return-void
.end method

.method private setSize(FII)V
    .locals 6
    .parameter "progress_value"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 117
    cmpl-float v3, p1, v5

    if-nez v3, :cond_2

    .line 118
    const/high16 v0, 0x3f80

    .line 119
    .local v0, inner_short_value:F
    const/high16 v1, 0x3f80

    .line 120
    .local v1, inner_value:F
    const/high16 v2, 0x3f80

    .line 167
    .local v2, outter_value:F
    :goto_0
    sget v3, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    sget v3, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    .line 168
    :cond_0
    int-to-float v3, p3

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->inner_short:F

    .line 169
    int-to-float v3, p3

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->inner:F

    .line 170
    int-to-float v3, p3

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->outter:F

    .line 171
    iput v5, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->slope:F

    .line 178
    :cond_1
    :goto_1
    return-void

    .line 121
    .end local v0           #inner_short_value:F
    .end local v1           #inner_value:F
    .end local v2           #outter_value:F
    :cond_2
    const v3, 0x3dcccccd

    cmpl-float v3, p1, v3

    if-nez v3, :cond_3

    .line 122
    const v0, 0x3ecccccd

    .line 123
    .restart local v0       #inner_short_value:F
    const v1, 0x3f19999a

    .line 124
    .restart local v1       #inner_value:F
    const v2, 0x3f666666

    .restart local v2       #outter_value:F
    goto :goto_0

    .line 125
    .end local v0           #inner_short_value:F
    .end local v1           #inner_value:F
    .end local v2           #outter_value:F
    :cond_3
    const v3, 0x3e4ccccd

    cmpl-float v3, p1, v3

    if-nez v3, :cond_4

    .line 126
    const v0, 0x3e99999a

    .line 127
    .restart local v0       #inner_short_value:F
    const/high16 v1, 0x3f00

    .line 128
    .restart local v1       #inner_value:F
    const v2, 0x3f666666

    .restart local v2       #outter_value:F
    goto :goto_0

    .line 129
    .end local v0           #inner_short_value:F
    .end local v1           #inner_value:F
    .end local v2           #outter_value:F
    :cond_4
    const v3, 0x3e99999a

    cmpl-float v3, p1, v3

    if-nez v3, :cond_5

    .line 130
    const v0, 0x3e4ccccd

    .line 131
    .restart local v0       #inner_short_value:F
    const v1, 0x3ecccccd

    .line 132
    .restart local v1       #inner_value:F
    const v2, 0x3f666666

    .restart local v2       #outter_value:F
    goto :goto_0

    .line 133
    .end local v0           #inner_short_value:F
    .end local v1           #inner_value:F
    .end local v2           #outter_value:F
    :cond_5
    const v3, 0x3ecccccd

    cmpl-float v3, p1, v3

    if-nez v3, :cond_6

    .line 134
    const v0, 0x3dcccccd

    .line 135
    .restart local v0       #inner_short_value:F
    const v1, 0x3e99999a

    .line 136
    .restart local v1       #inner_value:F
    const v2, 0x3f666666

    .restart local v2       #outter_value:F
    goto :goto_0

    .line 137
    .end local v0           #inner_short_value:F
    .end local v1           #inner_value:F
    .end local v2           #outter_value:F
    :cond_6
    const/high16 v3, 0x3f00

    cmpl-float v3, p1, v3

    if-nez v3, :cond_7

    .line 138
    const v0, 0x3dcccccd

    .line 139
    .restart local v0       #inner_short_value:F
    const v1, 0x3e99999a

    .line 140
    .restart local v1       #inner_value:F
    const v2, 0x3f4ccccd

    .restart local v2       #outter_value:F
    goto :goto_0

    .line 141
    .end local v0           #inner_short_value:F
    .end local v1           #inner_value:F
    .end local v2           #outter_value:F
    :cond_7
    const v3, 0x3f19999a

    cmpl-float v3, p1, v3

    if-nez v3, :cond_8

    .line 142
    const v0, 0x3dcccccd

    .line 143
    .restart local v0       #inner_short_value:F
    const v1, 0x3e99999a

    .line 144
    .restart local v1       #inner_value:F
    const v2, 0x3f333333

    .restart local v2       #outter_value:F
    goto :goto_0

    .line 145
    .end local v0           #inner_short_value:F
    .end local v1           #inner_value:F
    .end local v2           #outter_value:F
    :cond_8
    const v3, 0x3f333333

    cmpl-float v3, p1, v3

    if-nez v3, :cond_9

    .line 146
    const v0, 0x3dcccccd

    .line 147
    .restart local v0       #inner_short_value:F
    const v1, 0x3e99999a

    .line 148
    .restart local v1       #inner_value:F
    const v2, 0x3f266666

    .restart local v2       #outter_value:F
    goto/16 :goto_0

    .line 149
    .end local v0           #inner_short_value:F
    .end local v1           #inner_value:F
    .end local v2           #outter_value:F
    :cond_9
    const v3, 0x3f4ccccd

    cmpl-float v3, p1, v3

    if-nez v3, :cond_a

    .line 150
    const v0, 0x3dcccccd

    .line 151
    .restart local v0       #inner_short_value:F
    const v1, 0x3e99999a

    .line 152
    .restart local v1       #inner_value:F
    const v2, 0x3f19999a

    .restart local v2       #outter_value:F
    goto/16 :goto_0

    .line 153
    .end local v0           #inner_short_value:F
    .end local v1           #inner_value:F
    .end local v2           #outter_value:F
    :cond_a
    const v3, 0x3f666666

    cmpl-float v3, p1, v3

    if-nez v3, :cond_b

    .line 154
    const v0, 0x3dcccccd

    .line 155
    .restart local v0       #inner_short_value:F
    const v1, 0x3e99999a

    .line 156
    .restart local v1       #inner_value:F
    const v2, 0x3f0ccccd

    .restart local v2       #outter_value:F
    goto/16 :goto_0

    .line 157
    .end local v0           #inner_short_value:F
    .end local v1           #inner_value:F
    .end local v2           #outter_value:F
    :cond_b
    const/high16 v3, 0x3f80

    cmpl-float v3, p1, v3

    if-nez v3, :cond_c

    .line 158
    const v0, 0x3dcccccd

    .line 159
    .restart local v0       #inner_short_value:F
    const v1, 0x3e99999a

    .line 160
    .restart local v1       #inner_value:F
    const/high16 v2, 0x3f00

    .restart local v2       #outter_value:F
    goto/16 :goto_0

    .line 162
    .end local v0           #inner_short_value:F
    .end local v1           #inner_value:F
    .end local v2           #outter_value:F
    :cond_c
    const/high16 v0, 0x3f80

    .line 163
    .restart local v0       #inner_short_value:F
    const/high16 v1, 0x3f80

    .line 164
    .restart local v1       #inner_value:F
    const/high16 v2, 0x3f80

    .restart local v2       #outter_value:F
    goto/16 :goto_0

    .line 172
    :cond_d
    sget v3, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 173
    int-to-float v3, p2

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->inner_short:F

    .line 174
    int-to-float v3, p2

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->inner:F

    .line 175
    int-to-float v3, p2

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->outter:F

    .line 176
    const/high16 v3, 0x42b4

    invoke-direct {p0, v3}, Lcom/jellybus/fx/Activity_Border_Vignetting;->degreesToRadian(F)F

    move-result v3

    iput v3, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->slope:F

    goto/16 :goto_1
.end method

.method private setVignetting(II)V
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v3, 0xff

    const/4 v0, 0x1

    .line 316
    iget v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->current_vignetting:I

    if-nez v1, :cond_1

    .line 317
    iget v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->progress_value:F

    invoke-static {v1, v0, p1, p2}, Lcom/jellybus/fx/Juliet;->setVignettingWithColorAllIndex(FIII)V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->current_vignetting:I

    if-ne v1, v0, :cond_2

    .line 319
    iget v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->progress_value:F

    invoke-static {v0, v3, p1, p2}, Lcom/jellybus/fx/Juliet;->setVignettingWithColorAllIndex(FIII)V

    goto :goto_0

    .line 320
    :cond_2
    iget v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->current_vignetting:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 321
    iget v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->progress_value:F

    invoke-direct {p0, v1, p1, p2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->setSize(FII)V

    .line 322
    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p2, 0x2

    iget v5, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->inner_short:F

    iget v6, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->inner:F

    iget v7, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->outter:F

    iget v8, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->slope:F

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v8}, Lcom/jellybus/fx/Juliet;->setEllipseVignettingWithColorAllIndex(IIIIIFFFF)V

    goto :goto_0

    .line 323
    :cond_3
    iget v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->current_vignetting:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 324
    iget v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->progress_value:F

    invoke-direct {p0, v0, p1, p2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->setSize(FII)V

    .line 325
    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p2, 0x2

    iget v5, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->inner_short:F

    iget v6, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->inner:F

    iget v7, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->outter:F

    iget v8, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->slope:F

    move v0, v3

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v8}, Lcom/jellybus/fx/Juliet;->setEllipseVignettingWithColorAllIndex(IIIIIFFFF)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 466
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 470
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 471
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->removeBitmap()V

    .line 473
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 474
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->startActivity(Landroid/content/Intent;)V

    .line 475
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->finish()V

    .line 476
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->overridePendingTransition(II)V

    .line 477
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 77
    const v0, 0x7f060071

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_pic:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f060074

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_icon:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f06007c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_button_sub:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f06007d

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_button_compare:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f060077

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_select1:Landroid/widget/ImageView;

    .line 83
    const v0, 0x7f060078

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_select2:Landroid/widget/ImageView;

    .line 84
    const v0, 0x7f060079

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_select3:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f06007a

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_select4:Landroid/widget/ImageView;

    .line 87
    const v0, 0x7f060072

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_value:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f060076

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_compare_info:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f060073

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_sub:Landroid/widget/LinearLayout;

    .line 90
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_sub:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    const v0, 0x7f060075

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_seekbar:Landroid/widget/SeekBar;

    .line 93
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->empty_view:Landroid/widget/ImageView;

    .line 94
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->empty_text_view:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->empty_view:Landroid/widget/ImageView;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 96
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->empty_text_view:Landroid/widget/TextView;

    const v1, 0x7f050065

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Vignetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->empty_view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->empty_text_view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_seekbar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->progressListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 101
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_button_compare:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare_Listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare_Listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->resetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_seekbar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 108
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->getPreview()V

    .line 109
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 482
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 483
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    if-nez v0, :cond_1

    .line 484
    const-string v0, "4EZYBVGR4X8UBEAITHT4"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 486
    const-string v0, "HMWN2AGW2LYRYQ7ICC4U"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_2
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 488
    const-string v0, "3IDYI4ZBTFXHBC8BSSQZ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_3
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 490
    const-string v0, "4UX5JWZGU78W1H642Q4E"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :cond_4
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 492
    const-string v0, "SHHUZX9C5PR2PR3GRMFH"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_5
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 494
    const-string v0, "D2IQFQKELNZMA7LDJ4XT"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_6
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 496
    const-string v0, "YCU2I7ZKF1MZXMUZ84LA"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 500
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 501
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 502
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 503
    :cond_0
    return-void
.end method

.method public vignetting_button_apply_listener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->empty_text_view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->apply_handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 444
    return-void
.end method

.method public vignetting_button_cancel_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 451
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 455
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 456
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->removeBitmap()V

    .line 458
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 459
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->startActivity(Landroid/content/Intent;)V

    .line 460
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->finish()V

    .line 461
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->overridePendingTransition(II)V

    .line 462
    return-void
.end method

.method public vignetting_button_sub_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_sub:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_sub:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_button_sub:Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    iput-boolean v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->isSubOn:Z

    .line 388
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_sub:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_button_sub:Landroid/widget/ImageView;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->isSubOn:Z

    goto :goto_0
.end method

.method public vignetting_select_listener(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/16 v10, 0xff

    const/4 v0, 0x1

    const v9, 0x7f020044

    .line 334
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->removePreviewBitmap()V

    .line 335
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 336
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 365
    :goto_0
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;

    .line 366
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 367
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 368
    return-void

    .line 339
    :pswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->current_vignetting:I

    .line 340
    iget v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->progress_value:F

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/jellybus/fx/Juliet;->setVignettingWithColorAllIndex(FIII)V

    .line 341
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->setOffButton()V

    .line 342
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_select1:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 345
    :pswitch_1
    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->current_vignetting:I

    .line 346
    iget v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->progress_value:F

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v10, v1, v2}, Lcom/jellybus/fx/Juliet;->setVignettingWithColorAllIndex(FIII)V

    .line 347
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->setOffButton()V

    .line 348
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_select2:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 351
    :pswitch_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->current_vignetting:I

    .line 352
    iget v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->progress_value:F

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/jellybus/fx/Activity_Border_Vignetting;->setSize(FII)V

    .line 353
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->inner_short:F

    iget v6, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->inner:F

    iget v7, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->outter:F

    iget v8, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->slope:F

    invoke-static/range {v0 .. v8}, Lcom/jellybus/fx/Juliet;->setEllipseVignettingWithColorAllIndex(IIIIIFFFF)V

    .line 354
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->setOffButton()V

    .line 355
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_select3:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 358
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->current_vignetting:I

    .line 359
    iget v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->progress_value:F

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->setSize(FII)V

    .line 360
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->inner_short:F

    iget v6, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->inner:F

    iget v7, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->outter:F

    iget v8, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->slope:F

    move v0, v10

    invoke-static/range {v0 .. v8}, Lcom/jellybus/fx/Juliet;->setEllipseVignettingWithColorAllIndex(IIIIIFFFF)V

    .line 361
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->setOffButton()V

    .line 362
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_select4:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x7f060077
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
