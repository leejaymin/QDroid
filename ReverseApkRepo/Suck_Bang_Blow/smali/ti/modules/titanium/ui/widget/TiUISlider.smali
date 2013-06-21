.class public Lti/modules/titanium/ui/widget/TiUISlider;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUISlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiUISlider"


# instance fields
.field private max:I

.field private maxRange:I

.field private min:I

.field private minRange:I

.field private offset:I

.field private pos:I

.field private thumbDrawable:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUISlider;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .parameter "proxy"

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 45
    sget-boolean v1, Lti/modules/titanium/ui/widget/TiUISlider;->DBG:Z

    if-eqz v1, :cond_0

    .line 46
    const-string v1, "TiUISlider"

    const-string v2, "Creating a seekBar"

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 51
    iput v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    .line 52
    iput v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    .line 53
    iput v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    .line 56
    new-instance v0, Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, seekBar:Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 58
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUISlider;->setNativeView(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method private scaledValue()I
    .locals 2

    .prologue
    .line 288
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    add-int/2addr v0, v1

    return v0
.end method

.method private updateControl()V
    .locals 6

    .prologue
    .line 111
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    neg-int v2, v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    .line 112
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 113
    .local v0, length:I
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->getNativeView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 114
    .local v1, seekBar:Landroid/widget/SeekBar;
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 115
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 116
    return-void
.end method

.method private updateRange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    .line 102
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    .line 103
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "minRange"

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 105
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    .line 106
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    .line 107
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "maxRange"

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 108
    return-void
.end method

.method private updateThumb(Landroid/widget/SeekBar;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 7
    .parameter "seekBar"
    .parameter "d"

    .prologue
    const/4 v5, 0x0

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    const-string v4, "thumbImage"

    invoke-static {p2, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, thumbImage:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 123
    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lorg/appcelerator/titanium/util/TiFileHelper;

    .end local v0           #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 126
    .restart local v0       #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    :cond_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, url:Ljava/lang/String;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 128
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 129
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->thumbDrawable:Ljava/lang/ref/SoftReference;

    .line 130
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 137
    .end local v1           #thumb:Landroid/graphics/drawable/Drawable;
    .end local v3           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 132
    .restart local v1       #thumb:Landroid/graphics/drawable/Drawable;
    .restart local v3       #url:Ljava/lang/String;
    :cond_1
    const-string v4, "TiUISlider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to locate thumb image for progress bar: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    .end local v1           #thumb:Landroid/graphics/drawable/Drawable;
    .end local v3           #url:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateTrackingImages(Landroid/widget/SeekBar;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 13
    .parameter "seekBar"
    .parameter "d"

    .prologue
    .line 141
    const/4 v8, 0x0

    .line 142
    .local v8, tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    const-string v9, "leftTrackImage"

    invoke-static {p2, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, leftImage:Ljava/lang/String;
    const-string v9, "rightTrackImage"

    invoke-static {p2, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, rightImage:Ljava/lang/String;
    if-eqz v3, :cond_4

    if-eqz v6, :cond_4

    .line 145
    if-nez v8, :cond_0

    .line 146
    new-instance v8, Lorg/appcelerator/titanium/util/TiFileHelper;

    .end local v8           #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 148
    .restart local v8       #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    :cond_0
    iget-object v9, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v9}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v3}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, leftUrl:Ljava/lang/String;
    iget-object v9, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v9}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v6}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, rightUrl:Ljava/lang/String;
    iget-object v9, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v9}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v7, v10, v11}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 152
    .local v5, rightDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v9}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v4, v10, v11}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 153
    .local v2, leftDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 154
    const/4 v9, 0x2

    new-array v1, v9, [Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    aput-object v5, v1, v9

    const/4 v9, 0x1

    new-instance v10, Landroid/graphics/drawable/ClipDrawable;

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-direct {v10, v2, v11, v12}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v10, v1, v9

    .line 158
    .local v1, lda:[Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 159
    .local v0, ld:Landroid/graphics/drawable/LayerDrawable;
    const/4 v9, 0x0

    const/high16 v10, 0x102

    invoke-virtual {v0, v9, v10}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 160
    const/4 v9, 0x1

    const v10, 0x102000d

    invoke-virtual {v0, v9, v10}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 161
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    .end local v0           #ld:Landroid/graphics/drawable/LayerDrawable;
    .end local v1           #lda:[Landroid/graphics/drawable/Drawable;
    .end local v2           #leftDrawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #leftUrl:Ljava/lang/String;
    .end local v5           #rightDrawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #rightUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 163
    .restart local v2       #leftDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #leftUrl:Ljava/lang/String;
    .restart local v5       #rightDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v7       #rightUrl:Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    .line 164
    const-string v9, "TiUISlider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to locate left image for progress bar: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2
    if-nez v5, :cond_3

    .line 167
    const-string v9, "TiUISlider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to locate right image for progress bar: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_3
    const/4 v2, 0x0

    .line 171
    goto :goto_0

    .line 173
    .end local v2           #leftDrawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #leftUrl:Ljava/lang/String;
    .end local v5           #rightDrawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #rightUrl:Ljava/lang/String;
    :cond_4
    if-nez v3, :cond_5

    if-nez v6, :cond_5

    .line 174
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 176
    :cond_5
    const-string v9, "TiUISlider"

    const-string v10, "Custom tracking images must both be set before they\'ll be drawn."

    invoke-static {v9, v10}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 11
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v7

    iput v7, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    .line 242
    iget v7, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    add-int v1, v7, v8

    .line 243
    .local v1, actualMinRange:I
    iget v7, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    add-int v0, v7, v8

    .line 245
    .local v0, actualMaxRange:I
    iget v7, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    if-ge v7, v1, :cond_2

    .line 246
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 247
    iget v7, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    iput v7, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    .line 253
    :cond_0
    :goto_0
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUISlider;->thumbDrawable:Ljava/lang/ref/SoftReference;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUISlider;->thumbDrawable:Ljava/lang/ref/SoftReference;

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/graphics/drawable/Drawable;

    move-object v5, p2

    .line 254
    .local v5, thumb:Landroid/graphics/drawable/Drawable;
    :goto_1
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 255
    .local v3, offset:Lorg/appcelerator/kroll/KrollDict;
    const-string v7, "x"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v7, "y"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v4, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v4}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 258
    .local v4, size:Lorg/appcelerator/kroll/KrollDict;
    const-string v7, "width"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v7, "height"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    if-eqz v5, :cond_1

    .line 261
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 262
    .local v6, thumbBounds:Landroid/graphics/Rect;
    if-eqz v6, :cond_1

    .line 263
    const-string v7, "x"

    iget v8, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v7, "y"

    iget v8, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v7, "width"

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v7, "height"

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .end local v6           #thumbBounds:Landroid/graphics/Rect;
    :cond_1
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 270
    .local v2, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v7, "value"

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->scaledValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v7, "thumbOffset"

    invoke-virtual {v2, v7, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v7, "thumbSize"

    invoke-virtual {v2, v7, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v8, "value"

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->scaledValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 275
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v8, "change"

    invoke-virtual {v7, v8, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 276
    return-void

    .line 248
    .end local v2           #data:Lorg/appcelerator/kroll/KrollDict;
    .end local v3           #offset:Lorg/appcelerator/kroll/KrollDict;
    .end local v4           #size:Lorg/appcelerator/kroll/KrollDict;
    .end local v5           #thumb:Landroid/graphics/drawable/Drawable;
    .restart local p2
    :cond_2
    iget v7, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    if-le v7, v0, :cond_0

    .line 249
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 250
    iget v7, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    iput v7, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    goto/16 :goto_0

    .line 253
    :cond_3
    const/4 v7, 0x0

    move-object v5, v7

    goto/16 :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 279
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 282
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 283
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "value"

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->scaledValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "stop"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 285
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 7
    .parameter "d"

    .prologue
    const-string v6, "value"

    const-string v5, "minRange"

    const-string v4, "min"

    const-string v3, "maxRange"

    const-string v2, "max"

    .line 65
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 67
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 69
    .local v0, seekBar:Landroid/widget/SeekBar;
    const-string v1, "value"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "value"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    .line 72
    :cond_0
    const-string v1, "min"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const-string v1, "min"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    .line 75
    :cond_1
    const-string v1, "max"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    const-string v1, "max"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    .line 78
    :cond_2
    const-string v1, "minRange"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79
    const-string v1, "minRange"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    .line 83
    :goto_0
    const-string v1, "maxRange"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 84
    const-string v1, "maxRange"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    .line 89
    :goto_1
    const-string v1, "thumbImage"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    invoke-direct {p0, v0, p1}, Lti/modules/titanium/ui/widget/TiUISlider;->updateThumb(Landroid/widget/SeekBar;Lorg/appcelerator/kroll/KrollDict;)V

    .line 93
    :cond_3
    const-string v1, "leftTrackImage"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "rightTrackImage"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    invoke-direct {p0, v0, p1}, Lti/modules/titanium/ui/widget/TiUISlider;->updateTrackingImages(Landroid/widget/SeekBar;Lorg/appcelerator/kroll/KrollDict;)V

    .line 96
    :cond_4
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateRange()V

    .line 97
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateControl()V

    .line 98
    return-void

    .line 81
    :cond_5
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    goto :goto_0

    .line 86
    :cond_6
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    goto :goto_1
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    const/4 v3, 0x1

    const-string v4, "TiUISlider"

    .line 183
    sget-boolean v1, Lti/modules/titanium/ui/widget/TiUISlider;->DBG:Z

    if-eqz v1, :cond_0

    .line 184
    const-string v1, "TiUISlider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 187
    .local v0, seekBar:Landroid/widget/SeekBar;
    const-string v1, "value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    .line 189
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 190
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    invoke-virtual {p0, v0, v1, v3}, Lti/modules/titanium/ui/widget/TiUISlider;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 236
    :goto_0
    return-void

    .line 191
    :cond_1
    const-string v1, "min"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    .line 193
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    .line 194
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateRange()V

    .line 195
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    if-ge v1, v2, :cond_2

    .line 196
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    .line 198
    :cond_2
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateControl()V

    .line 199
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    invoke-virtual {p0, v0, v1, v3}, Lti/modules/titanium/ui/widget/TiUISlider;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    .line 200
    :cond_3
    const-string v1, "minRange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 201
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    .line 202
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateRange()V

    .line 203
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    if-ge v1, v2, :cond_4

    .line 204
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    .line 206
    :cond_4
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateControl()V

    .line 207
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    invoke-virtual {p0, v0, v1, v3}, Lti/modules/titanium/ui/widget/TiUISlider;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    .line 208
    :cond_5
    const-string v1, "max"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 209
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    .line 210
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    .line 211
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateRange()V

    .line 212
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    if-le v1, v2, :cond_6

    .line 213
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    .line 215
    :cond_6
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateControl()V

    .line 216
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    invoke-virtual {p0, v0, v1, v3}, Lti/modules/titanium/ui/widget/TiUISlider;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    .line 217
    :cond_7
    const-string v1, "maxRange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 218
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    .line 219
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateRange()V

    .line 220
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    if-le v1, v2, :cond_8

    .line 221
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    .line 223
    :cond_8
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateControl()V

    .line 224
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:I

    invoke-virtual {p0, v0, v1, v3}, Lti/modules/titanium/ui/widget/TiUISlider;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto/16 :goto_0

    .line 225
    :cond_9
    const-string v1, "thumbImage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 228
    const-string v1, "TiUISlider"

    const-string v1, "Dynamically changing thumbImage is not yet supported. Native control doesn\'t draw"

    invoke-static {v4, v1}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 229
    :cond_a
    const-string v1, "leftTrackImage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "rightTrackImage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 232
    :cond_b
    const-string v1, "TiUISlider"

    const-string v1, "Dynamically changing leftTrackImage or rightTrackImage is not yet supported. Native control doesn\'t draw"

    invoke-static {v4, v1}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 234
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method
