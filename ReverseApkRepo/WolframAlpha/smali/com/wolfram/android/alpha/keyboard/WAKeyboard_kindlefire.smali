.class public Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;
.super Landroid/inputmethodservice/Keyboard;
.source "WAKeyboard_kindlefire.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;
    }
.end annotation


# static fields
.field public static final KEYBOARD_USEALWAYS:I = 0x0

.field public static final KEYBOARD_USENEVER:I = 0x1

.field public static final KEYBOARD_USEUPPER:I = 0x3

.field public static final KEYBOARD_USEWHENNOPHYSICAL:I = 0x2

.field public static final SHIFT_LOCKED:I = 0x2

.field public static final SHIFT_OFF:I = 0x0

.field public static final SHIFT_ON:I = 0x1

.field private static inflater:Lcom/wolfram/android/alpha/LayoutInflater_modified;

.field private static logger:Ljava/util/logging/Logger;

.field private static res:Lcom/wolfram/android/alpha/Resources_modified;

.field private static screenDensity:F

.field public static shiftState:I


# instance fields
.field private mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

.field private shiftIcon:Landroid/graphics/drawable/Drawable;

.field private shiftKey:Landroid/inputmethodservice/Keyboard$Key;

.field private shiftOnIcon:Landroid/graphics/drawable/Drawable;

.field private shiftOnPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private shiftPreviewIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v0

    sput v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->screenDensity:F

    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    .line 58
    const-string v0, "com.wolfram.android.alpha.keyboard.WAKeyboard_kindlefire"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "xmlLayoutResId"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;-><init>(Landroid/content/Context;II)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 8
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "modeId"

    .prologue
    const/4 v7, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 64
    new-instance v3, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    sput-object v3, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    .line 65
    invoke-static {p1}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->from(Landroid/content/Context;)Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v3

    sput-object v3, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->inflater:Lcom/wolfram/android/alpha/LayoutInflater_modified;

    .line 69
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->getHeight()I

    move-result v0

    .line 70
    .local v0, height:I
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->getMinWidth()I

    move-result v2

    .line 74
    .local v2, width:I
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->getShiftKeyIndex()I

    move-result v1

    .line 75
    .local v1, index:I
    if-ltz v1, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    iput-object v3, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 77
    iget-object v3, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    instance-of v3, v3, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    check-cast v3, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;->setShiftKey()V

    .line 80
    :cond_0
    iget-object v3, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, v3, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftIcon:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object v3, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, v3, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 82
    sget-object v3, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    const v4, 0x7f0200c3

    invoke-virtual {v3, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftOnIcon:Landroid/graphics/drawable/Drawable;

    .line 83
    sget-object v3, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    const v4, 0x7f0200be

    invoke-virtual {v3, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 86
    iget-object v3, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftOnIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftOnIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftOnIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftOnIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 91
    iget-object v3, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    :cond_2
    return-void
.end method

.method static synthetic access$000()Lcom/wolfram/android/alpha/LayoutInflater_modified;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->inflater:Lcom/wolfram/android/alpha/LayoutInflater_modified;

    return-object v0
.end method

.method static synthetic access$100()Lcom/wolfram/android/alpha/Resources_modified;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    return-object v0
.end method

.method static synthetic access$200()F
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->screenDensity:F

    return v0
.end method

.method public static keyboard_icon_drawable([IIILandroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "codes"
    .parameter "width"
    .parameter "height"
    .parameter "tv"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 281
    invoke-static {p0, p2, p3}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->setText_Key([IILandroid/widget/TextView;)Landroid/widget/TextView;

    .line 283
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setWidth(I)V

    .line 284
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 285
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 288
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 289
    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p3, v4, v4, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 290
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->buildDrawingCache(Z)V

    .line 291
    invoke-virtual {p3}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 292
    .local v1, returnedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 293
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 295
    .local v0, key_icon:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private static setText_Key([IILandroid/widget/TextView;)Landroid/widget/TextView;
    .locals 6
    .parameter "codes"
    .parameter "height"
    .parameter "tv"

    .prologue
    const v5, 0x7f0702a1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const v2, 0x7f07029f

    const v1, 0x7f0702a0

    .line 301
    aget v0, p0, v3

    sparse-switch v0, :sswitch_data_0

    .line 732
    :goto_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x100

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 733
    :cond_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "123!?"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 735
    :cond_1
    return-object p2

    .line 303
    :sswitch_0
    const-string v0, "q"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 305
    :sswitch_1
    const-string v0, "w"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 307
    :sswitch_2
    const-string v0, "e"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 309
    :sswitch_3
    const-string v0, "r"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 311
    :sswitch_4
    const-string v0, "t"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 313
    :sswitch_5
    const-string v0, "y"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 315
    :sswitch_6
    const-string v0, "u"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 317
    :sswitch_7
    const-string v0, "i"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 319
    :sswitch_8
    const-string v0, "o"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 321
    :sswitch_9
    const-string v0, "p"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 323
    :sswitch_a
    const-string v0, "a"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 325
    :sswitch_b
    const-string v0, "s"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 327
    :sswitch_c
    const-string v0, "d"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 329
    :sswitch_d
    const-string v0, "f"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 331
    :sswitch_e
    const-string v0, "g"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 333
    :sswitch_f
    const-string v0, "h"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 335
    :sswitch_10
    const-string v0, "j"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 337
    :sswitch_11
    const-string v0, "k"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 339
    :sswitch_12
    const-string v0, "l"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 341
    :sswitch_13
    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 342
    div-int/lit8 v0, p1, 0x4

    invoke-virtual {p2, v3, v0, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    .line 344
    :sswitch_14
    const-string v0, "z"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 346
    :sswitch_15
    const-string v0, "x"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 348
    :sswitch_16
    const-string v0, "c"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 350
    :sswitch_17
    const-string v0, "v"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 352
    :sswitch_18
    const-string v0, "b"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 354
    :sswitch_19
    const-string v0, "n"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 356
    :sswitch_1a
    const-string v0, "m"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 358
    :sswitch_1b
    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 359
    div-int/lit8 v0, p1, 0x4

    invoke-virtual {p2, v3, v0, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    .line 361
    :sswitch_1c
    const-string v0, "123!?"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v5}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 363
    :sswitch_1d
    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 364
    div-int/lit8 v0, p1, 0x4

    invoke-virtual {p2, v3, v0, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    .line 366
    :sswitch_1e
    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 367
    div-int/lit8 v0, p1, 0x4

    invoke-virtual {p2, v3, v0, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    .line 369
    :sswitch_1f
    const-string v0, "Go"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v5}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 372
    :sswitch_20
    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 373
    div-int/lit8 v0, p1, 0x6

    invoke-virtual {p2, v3, v0, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    .line 376
    :sswitch_21
    const-string v0, "1"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 378
    :sswitch_22
    const-string v0, "2"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 380
    :sswitch_23
    const-string v0, "3"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 382
    :sswitch_24
    const-string v0, "4"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 384
    :sswitch_25
    const-string v0, "5"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 386
    :sswitch_26
    const-string v0, "6"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 388
    :sswitch_27
    const-string v0, "7"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 390
    :sswitch_28
    const-string v0, "8"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 392
    :sswitch_29
    const-string v0, "9"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 394
    :sswitch_2a
    const-string v0, "0"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 396
    :sswitch_2b
    const-string v0, "-"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 398
    :sswitch_2c
    const-string v0, "/"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 400
    :sswitch_2d
    const-string v0, ":"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 402
    :sswitch_2e
    const-string v0, ";"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 404
    :sswitch_2f
    const-string v0, "("

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 406
    :sswitch_30
    const-string v0, ")"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 408
    :sswitch_31
    const-string v0, "$"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 410
    :sswitch_32
    const-string v0, "&"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 412
    :sswitch_33
    const-string v0, "@"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 414
    :sswitch_34
    const-string v0, "\""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 416
    :sswitch_35
    const-string v0, "#+="

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 418
    :sswitch_36
    const-string v0, "."

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 420
    :sswitch_37
    const-string v0, ","

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 422
    :sswitch_38
    const-string v0, "?"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 424
    :sswitch_39
    const-string v0, "!"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 426
    :sswitch_3a
    const-string v0, "\'"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 428
    :sswitch_3b
    const-string v0, "ABC"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v5}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 431
    :sswitch_3c
    const-string v0, "["

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 433
    :sswitch_3d
    const-string v0, "]"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 435
    :sswitch_3e
    const-string v0, "{"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 437
    :sswitch_3f
    const-string v0, "}"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 439
    :sswitch_40
    const-string v0, "#"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 441
    :sswitch_41
    const-string v0, "%"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 443
    :sswitch_42
    const-string v0, "^"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 445
    :sswitch_43
    const-string v0, "*"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 447
    :sswitch_44
    const-string v0, "+"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 449
    :sswitch_45
    const-string v0, "="

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 451
    :sswitch_46
    const-string v0, "_"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 453
    :sswitch_47
    const-string v0, "\\"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 455
    :sswitch_48
    const-string v0, "|"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 457
    :sswitch_49
    const-string v0, "~"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 459
    :sswitch_4a
    const-string v0, "<"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 461
    :sswitch_4b
    const-string v0, ">"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 463
    :sswitch_4c
    const-string v0, "\u20ac"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 465
    :sswitch_4d
    const-string v0, "\u00a3"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 467
    :sswitch_4e
    const-string v0, "\u00a5"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 469
    :sswitch_4f
    const-string v0, "\u2022"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 471
    :sswitch_50
    const-string v0, "123"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v5}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 474
    :sswitch_51
    const-string v0, "Q"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 476
    :sswitch_52
    const-string v0, "W"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 478
    :sswitch_53
    const-string v0, "E"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 480
    :sswitch_54
    const-string v0, "R"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 482
    :sswitch_55
    const-string v0, "T"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 484
    :sswitch_56
    const-string v0, "Y"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 486
    :sswitch_57
    const-string v0, "U"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 488
    :sswitch_58
    const-string v0, "I"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 490
    :sswitch_59
    const-string v0, "O"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 492
    :sswitch_5a
    const-string v0, "P"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 494
    :sswitch_5b
    const-string v0, "A"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 496
    :sswitch_5c
    const-string v0, "S"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 498
    :sswitch_5d
    const-string v0, "D"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 500
    :sswitch_5e
    const-string v0, "F"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 502
    :sswitch_5f
    const-string v0, "G"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 504
    :sswitch_60
    const-string v0, "H"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 506
    :sswitch_61
    const-string v0, "J"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 508
    :sswitch_62
    const-string v0, "K"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 510
    :sswitch_63
    const-string v0, "L"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 512
    :sswitch_64
    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 513
    div-int/lit8 v0, p1, 0x4

    invoke-virtual {p2, v3, v0, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    .line 515
    :sswitch_65
    const-string v0, "Z"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 517
    :sswitch_66
    const-string v0, "X"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 519
    :sswitch_67
    const-string v0, "C"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 521
    :sswitch_68
    const-string v0, "V"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 523
    :sswitch_69
    const-string v0, "B"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 525
    :sswitch_6a
    const-string v0, "N"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 527
    :sswitch_6b
    const-string v0, "M"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 530
    :sswitch_6c
    const-string v0, "+"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 532
    :sswitch_6d
    const-string v0, "-"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 534
    :sswitch_6e
    const-string v0, "*"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 536
    :sswitch_6f
    const-string v0, "/"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 538
    :sswitch_70
    const-string v0, "^"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 540
    :sswitch_71
    const-string v0, "="

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 542
    :sswitch_72
    const-string v0, "("

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 544
    :sswitch_73
    const-string v0, ")"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 546
    :sswitch_74
    const-string v0, "$"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 548
    :sswitch_75
    const-string v0, "%"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 550
    :sswitch_76
    const-string v0, "\u00b0"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 552
    :sswitch_77
    const-string v0, "\'"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 554
    :sswitch_78
    const-string v0, "1"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 556
    :sswitch_79
    const-string v0, "2"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 558
    :sswitch_7a
    const-string v0, "3"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 560
    :sswitch_7b
    const-string v0, "4"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 562
    :sswitch_7c
    const-string v0, "5"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 564
    :sswitch_7d
    const-string v0, "6"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 566
    :sswitch_7e
    const-string v0, "7"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 568
    :sswitch_7f
    const-string v0, "8"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 570
    :sswitch_80
    const-string v0, "9"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 572
    :sswitch_81
    const-string v0, "0"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 574
    :sswitch_82
    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 575
    div-int/lit8 v0, p1, 0x4

    invoke-virtual {p2, v3, v0, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    .line 577
    :sswitch_83
    const-string v0, "["

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 579
    :sswitch_84
    const-string v0, "]"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 581
    :sswitch_85
    const-string v0, "{"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 583
    :sswitch_86
    const-string v0, "}"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 585
    :sswitch_87
    const-string v0, "<"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 587
    :sswitch_88
    const-string v0, ">"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 589
    :sswitch_89
    const-string v0, ","

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 591
    :sswitch_8a
    const-string v0, "."

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 593
    :sswitch_8b
    const-string v0, "\u222b\u221e"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 595
    :sswitch_8c
    const-string v0, "[ ]"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 597
    :sswitch_8d
    const-string v0, "\u222b"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 599
    :sswitch_8e
    const-string v0, "\u2211"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 601
    :sswitch_8f
    const-string v0, "\u221a"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 603
    :sswitch_90
    const-string v0, "\u221e"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 605
    :sswitch_91
    const-string v0, "\u03b8"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 607
    :sswitch_92
    const-string v0, "\u03c0"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 610
    :sswitch_93
    const-string v0, "!"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 612
    :sswitch_94
    const-string v0, "?"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 614
    :sswitch_95
    const-string v0, "@"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 616
    :sswitch_96
    const-string v0, "#"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 618
    :sswitch_97
    const-string v0, "&"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 620
    :sswitch_98
    const-string v0, "|"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 622
    :sswitch_99
    const-string v0, ":"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 624
    :sswitch_9a
    const-string v0, ";"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 626
    :sswitch_9b
    const-string v0, "\""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 628
    :sswitch_9c
    const-string v0, "_"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 630
    :sswitch_9d
    const-string v0, "\u03b1"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 632
    :sswitch_9e
    const-string v0, "\u03b2"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 634
    :sswitch_9f
    const-string v0, "\u03b3"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 636
    :sswitch_a0
    const-string v0, "\u03b5"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 638
    :sswitch_a1
    const-string v0, "\u03bb"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 640
    :sswitch_a2
    const-string v0, "\u00b5"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 642
    :sswitch_a3
    const-string v0, "\u03c3"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 644
    :sswitch_a4
    const-string v0, "\u03c4"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 646
    :sswitch_a5
    const-string v0, "\u03c6"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 648
    :sswitch_a6
    const-string v0, "\u03c9"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 650
    :sswitch_a7
    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 651
    div-int/lit8 v0, p1, 0x4

    invoke-virtual {p2, v3, v0, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    .line 653
    :sswitch_a8
    const-string v0, "\u0394"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 655
    :sswitch_a9
    const-string v0, "\u2207"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 657
    :sswitch_aa
    const-string v0, "\u2202"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 659
    :sswitch_ab
    const-string v0, "\u212b"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 661
    :sswitch_ac
    const-string v0, "\u03a9"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 663
    :sswitch_ad
    const-string v0, "\u2020"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 665
    :sswitch_ae
    const-string v0, "\u2192"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 667
    :sswitch_af
    const-string v0, "\u21cc"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 670
    :sswitch_b0
    const-string v0, "\u2200"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 672
    :sswitch_b1
    const-string v0, "\u2203"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 674
    :sswitch_b2
    const-string v0, "\u222a"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 676
    :sswitch_b3
    const-string v0, "\u2229"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 678
    :sswitch_b4
    const-string v0, "\u2135"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 680
    :sswitch_b5
    const-string v0, "\u2118"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 682
    :sswitch_b6
    const-string v0, "\u2640"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 684
    :sswitch_b7
    const-string v0, "\u2642"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 686
    :sswitch_b8
    const-string v0, "\u2295"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 688
    :sswitch_b9
    const-string v0, "\u2297"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 690
    :sswitch_ba
    const-string v0, "\u03b4"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 692
    :sswitch_bb
    const-string v0, "\u03b6"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 694
    :sswitch_bc
    const-string v0, "\u03b7"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 696
    :sswitch_bd
    const-string v0, "\u03ba"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 698
    :sswitch_be
    const-string v0, "\u03bd"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 700
    :sswitch_bf
    const-string v0, "\u03be"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 702
    :sswitch_c0
    const-string v0, "\u03c1"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 704
    :sswitch_c1
    const-string v0, "\u03c5"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 706
    :sswitch_c2
    const-string v0, "\u03c7"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 708
    :sswitch_c3
    const-string v0, "\u03c8"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 710
    :sswitch_c4
    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 711
    div-int/lit8 v0, p1, 0x4

    invoke-virtual {p2, v3, v0, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    .line 713
    :sswitch_c5
    const-string v0, "\u0393"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 715
    :sswitch_c6
    const-string v0, "\u0398"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 717
    :sswitch_c7
    const-string v0, "\u039b"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 719
    :sswitch_c8
    const-string v0, "\u039e"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 721
    :sswitch_c9
    const-string v0, "\u03a0"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 723
    :sswitch_ca
    const-string v0, "\u03a5"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 725
    :sswitch_cb
    const-string v0, "\u03a6"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 727
    :sswitch_cc
    const-string v0, "\u03a8"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 301
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1f
        0x43 -> :sswitch_1b
        0x2724 -> :sswitch_a7
        0x272e -> :sswitch_c4
        0xf800 -> :sswitch_a
        0xf801 -> :sswitch_18
        0xf802 -> :sswitch_16
        0xf803 -> :sswitch_c
        0xf804 -> :sswitch_2
        0xf805 -> :sswitch_d
        0xf806 -> :sswitch_e
        0xf807 -> :sswitch_f
        0xf808 -> :sswitch_7
        0xf809 -> :sswitch_10
        0xf810 -> :sswitch_11
        0xf811 -> :sswitch_12
        0xf812 -> :sswitch_1a
        0xf813 -> :sswitch_19
        0xf814 -> :sswitch_8
        0xf815 -> :sswitch_9
        0xf816 -> :sswitch_0
        0xf817 -> :sswitch_3
        0xf818 -> :sswitch_b
        0xf819 -> :sswitch_4
        0xf820 -> :sswitch_6
        0xf821 -> :sswitch_17
        0xf822 -> :sswitch_1
        0xf823 -> :sswitch_15
        0xf824 -> :sswitch_5
        0xf825 -> :sswitch_14
        0xf826 -> :sswitch_5b
        0xf827 -> :sswitch_69
        0xf828 -> :sswitch_67
        0xf829 -> :sswitch_5d
        0xf830 -> :sswitch_53
        0xf831 -> :sswitch_5e
        0xf832 -> :sswitch_5f
        0xf833 -> :sswitch_60
        0xf834 -> :sswitch_58
        0xf835 -> :sswitch_61
        0xf836 -> :sswitch_62
        0xf837 -> :sswitch_63
        0xf838 -> :sswitch_6b
        0xf839 -> :sswitch_6a
        0xf840 -> :sswitch_59
        0xf841 -> :sswitch_5a
        0xf842 -> :sswitch_51
        0xf843 -> :sswitch_54
        0xf844 -> :sswitch_5c
        0xf845 -> :sswitch_55
        0xf846 -> :sswitch_57
        0xf847 -> :sswitch_68
        0xf848 -> :sswitch_52
        0xf849 -> :sswitch_66
        0xf850 -> :sswitch_56
        0xf851 -> :sswitch_65
        0xf852 -> :sswitch_2a
        0xf853 -> :sswitch_21
        0xf854 -> :sswitch_22
        0xf855 -> :sswitch_23
        0xf856 -> :sswitch_24
        0xf857 -> :sswitch_25
        0xf858 -> :sswitch_26
        0xf859 -> :sswitch_27
        0xf860 -> :sswitch_28
        0xf861 -> :sswitch_29
        0xf862 -> :sswitch_2b
        0xf863 -> :sswitch_2c
        0xf864 -> :sswitch_2d
        0xf865 -> :sswitch_2e
        0xf866 -> :sswitch_2f
        0xf867 -> :sswitch_30
        0xf868 -> :sswitch_31
        0xf869 -> :sswitch_32
        0xf870 -> :sswitch_33
        0xf871 -> :sswitch_34
        0xf872 -> :sswitch_36
        0xf873 -> :sswitch_37
        0xf874 -> :sswitch_38
        0xf875 -> :sswitch_39
        0xf876 -> :sswitch_3a
        0xf877 -> :sswitch_3c
        0xf878 -> :sswitch_3d
        0xf879 -> :sswitch_3e
        0xf880 -> :sswitch_3f
        0xf881 -> :sswitch_40
        0xf882 -> :sswitch_41
        0xf883 -> :sswitch_42
        0xf884 -> :sswitch_43
        0xf885 -> :sswitch_44
        0xf886 -> :sswitch_45
        0xf887 -> :sswitch_46
        0xf888 -> :sswitch_47
        0xf889 -> :sswitch_48
        0xf890 -> :sswitch_49
        0xf891 -> :sswitch_4a
        0xf892 -> :sswitch_4b
        0xf893 -> :sswitch_4c
        0xf894 -> :sswitch_4d
        0xf895 -> :sswitch_4e
        0xf896 -> :sswitch_4f
        0xf897 -> :sswitch_1e
        0xf898 -> :sswitch_6c
        0xf899 -> :sswitch_6d
        0xf900 -> :sswitch_6e
        0xf901 -> :sswitch_6f
        0xf902 -> :sswitch_70
        0xf903 -> :sswitch_71
        0xf904 -> :sswitch_72
        0xf905 -> :sswitch_73
        0xf906 -> :sswitch_74
        0xf907 -> :sswitch_75
        0xf908 -> :sswitch_76
        0xf909 -> :sswitch_77
        0xf910 -> :sswitch_81
        0xf911 -> :sswitch_78
        0xf912 -> :sswitch_79
        0xf913 -> :sswitch_7a
        0xf914 -> :sswitch_7b
        0xf915 -> :sswitch_7c
        0xf916 -> :sswitch_7d
        0xf917 -> :sswitch_7e
        0xf918 -> :sswitch_7f
        0xf919 -> :sswitch_80
        0xf921 -> :sswitch_83
        0xf922 -> :sswitch_84
        0xf923 -> :sswitch_85
        0xf924 -> :sswitch_86
        0xf925 -> :sswitch_87
        0xf926 -> :sswitch_88
        0xf927 -> :sswitch_89
        0xf928 -> :sswitch_8a
        0xf929 -> :sswitch_8d
        0xf930 -> :sswitch_8e
        0xf931 -> :sswitch_8f
        0xf932 -> :sswitch_90
        0xf933 -> :sswitch_91
        0xf934 -> :sswitch_92
        0xf935 -> :sswitch_93
        0xf936 -> :sswitch_94
        0xf937 -> :sswitch_95
        0xf938 -> :sswitch_96
        0xf939 -> :sswitch_97
        0xf940 -> :sswitch_98
        0xf941 -> :sswitch_99
        0xf942 -> :sswitch_9a
        0xf943 -> :sswitch_9b
        0xf944 -> :sswitch_9c
        0xf945 -> :sswitch_9d
        0xf946 -> :sswitch_9e
        0xf947 -> :sswitch_9f
        0xf948 -> :sswitch_a0
        0xf949 -> :sswitch_a1
        0xf950 -> :sswitch_a2
        0xf951 -> :sswitch_a3
        0xf952 -> :sswitch_a4
        0xf953 -> :sswitch_a5
        0xf954 -> :sswitch_a6
        0xf955 -> :sswitch_a8
        0xf956 -> :sswitch_a9
        0xf957 -> :sswitch_aa
        0xf958 -> :sswitch_ab
        0xf959 -> :sswitch_ac
        0xf960 -> :sswitch_ad
        0xf961 -> :sswitch_ae
        0xf962 -> :sswitch_af
        0xf963 -> :sswitch_b0
        0xf964 -> :sswitch_b1
        0xf965 -> :sswitch_b2
        0xf966 -> :sswitch_b3
        0xf967 -> :sswitch_b4
        0xf968 -> :sswitch_b5
        0xf969 -> :sswitch_b6
        0xf970 -> :sswitch_b7
        0xf971 -> :sswitch_b8
        0xf972 -> :sswitch_b9
        0xf973 -> :sswitch_ba
        0xf974 -> :sswitch_bb
        0xf975 -> :sswitch_bc
        0xf976 -> :sswitch_bd
        0xf977 -> :sswitch_be
        0xf978 -> :sswitch_bf
        0xf979 -> :sswitch_c0
        0xf980 -> :sswitch_c1
        0xf981 -> :sswitch_c2
        0xf982 -> :sswitch_c3
        0xf983 -> :sswitch_c5
        0xf984 -> :sswitch_c6
        0xf985 -> :sswitch_c7
        0xf986 -> :sswitch_c8
        0xf987 -> :sswitch_c9
        0xf988 -> :sswitch_ca
        0xf989 -> :sswitch_cb
        0xf990 -> :sswitch_cc
        0x186a0 -> :sswitch_82
        0x186a1 -> :sswitch_8b
        0x186a2 -> :sswitch_35
        0x186a3 -> :sswitch_1c
        0x186aa -> :sswitch_1d
        0x186ab -> :sswitch_8c
        0x186b4 -> :sswitch_3b
        0x186b5 -> :sswitch_50
        0x186b9 -> :sswitch_13
        0x186ba -> :sswitch_64
        0xf4256 -> :sswitch_20
    .end sparse-switch
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .locals 8
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    .line 168
    new-instance v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 170
    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 171
    iput-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 174
    :cond_0
    new-instance v1, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    sput-object v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->res:Lcom/wolfram/android/alpha/Resources_modified;

    .line 177
    sget-object v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->inflater:Lcom/wolfram/android/alpha/LayoutInflater_modified;

    const v2, 0x7f050003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 179
    .local v6, tv:Landroid/widget/TextView;
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 241
    :cond_1
    :goto_0
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    sget v2, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->screenDensity:F

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->screenDensity:F

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1, v2, v3, v6}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->keyboard_icon_drawable([IIILandroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 243
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 246
    :cond_2
    sget-object v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->inflater:Lcom/wolfram/android/alpha/LayoutInflater_modified;

    const v2, 0x7f050003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 247
    .local v7, tv_preview:Landroid/widget/TextView;
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-virtual {p0, v1, v2, v3, v7}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->keyboard_icon_preview_drawable([IIILandroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 249
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->screenDensity:F

    iget-object v5, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sget v5, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->screenDensity:F

    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .end local v6           #tv:Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 255
    :cond_3
    return-object v0

    .line 183
    .end local v7           #tv_preview:Landroid/widget/TextView;
    .restart local v6       #tv:Landroid/widget/TextView;
    :sswitch_0
    const v1, 0x7f020094

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 185
    :sswitch_1
    const v1, 0x7f020091

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 187
    :sswitch_2
    const v1, 0x7f020096

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 189
    :sswitch_3
    const v1, 0x7f020094

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 194
    :sswitch_4
    const v1, 0x7f020094

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 196
    :sswitch_5
    const v1, 0x7f020091

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 201
    :sswitch_6
    const v1, 0x7f020094

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 203
    :sswitch_7
    const v1, 0x7f020091

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 208
    :sswitch_8
    const v1, 0x7f020094

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 210
    :sswitch_9
    sget v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const v1, 0x7f020091

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 211
    :cond_4
    sget v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const v1, 0x7f020096

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 219
    :sswitch_a
    const v1, 0x7f020094

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 221
    :sswitch_b
    const v1, 0x7f020091

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 227
    :sswitch_c
    const v1, 0x7f020094

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 229
    :sswitch_d
    const v1, 0x7f020091

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 235
    :sswitch_e
    const v1, 0x7f020094

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 237
    :sswitch_f
    const v1, 0x7f020091

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 179
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x2724 -> :sswitch_d
        0x272e -> :sswitch_f
        0xf800 -> :sswitch_0
        0xf801 -> :sswitch_0
        0xf802 -> :sswitch_0
        0xf803 -> :sswitch_0
        0xf804 -> :sswitch_0
        0xf805 -> :sswitch_0
        0xf806 -> :sswitch_0
        0xf807 -> :sswitch_0
        0xf808 -> :sswitch_0
        0xf809 -> :sswitch_0
        0xf810 -> :sswitch_0
        0xf811 -> :sswitch_0
        0xf812 -> :sswitch_0
        0xf813 -> :sswitch_0
        0xf814 -> :sswitch_0
        0xf815 -> :sswitch_0
        0xf816 -> :sswitch_0
        0xf817 -> :sswitch_0
        0xf818 -> :sswitch_0
        0xf819 -> :sswitch_0
        0xf820 -> :sswitch_0
        0xf821 -> :sswitch_0
        0xf822 -> :sswitch_0
        0xf823 -> :sswitch_0
        0xf824 -> :sswitch_0
        0xf825 -> :sswitch_0
        0xf826 -> :sswitch_8
        0xf827 -> :sswitch_8
        0xf828 -> :sswitch_8
        0xf829 -> :sswitch_8
        0xf830 -> :sswitch_8
        0xf831 -> :sswitch_8
        0xf832 -> :sswitch_8
        0xf833 -> :sswitch_8
        0xf834 -> :sswitch_8
        0xf835 -> :sswitch_8
        0xf836 -> :sswitch_8
        0xf837 -> :sswitch_8
        0xf838 -> :sswitch_8
        0xf839 -> :sswitch_8
        0xf840 -> :sswitch_8
        0xf841 -> :sswitch_8
        0xf842 -> :sswitch_8
        0xf843 -> :sswitch_8
        0xf844 -> :sswitch_8
        0xf845 -> :sswitch_8
        0xf846 -> :sswitch_8
        0xf847 -> :sswitch_8
        0xf848 -> :sswitch_8
        0xf849 -> :sswitch_8
        0xf850 -> :sswitch_8
        0xf851 -> :sswitch_8
        0xf852 -> :sswitch_4
        0xf853 -> :sswitch_4
        0xf854 -> :sswitch_4
        0xf855 -> :sswitch_4
        0xf856 -> :sswitch_4
        0xf857 -> :sswitch_4
        0xf858 -> :sswitch_4
        0xf859 -> :sswitch_4
        0xf860 -> :sswitch_4
        0xf861 -> :sswitch_4
        0xf862 -> :sswitch_4
        0xf863 -> :sswitch_4
        0xf864 -> :sswitch_4
        0xf865 -> :sswitch_4
        0xf866 -> :sswitch_4
        0xf867 -> :sswitch_4
        0xf868 -> :sswitch_4
        0xf869 -> :sswitch_4
        0xf870 -> :sswitch_4
        0xf871 -> :sswitch_4
        0xf872 -> :sswitch_4
        0xf873 -> :sswitch_4
        0xf874 -> :sswitch_4
        0xf875 -> :sswitch_4
        0xf876 -> :sswitch_4
        0xf877 -> :sswitch_6
        0xf878 -> :sswitch_6
        0xf879 -> :sswitch_6
        0xf880 -> :sswitch_6
        0xf881 -> :sswitch_6
        0xf882 -> :sswitch_6
        0xf883 -> :sswitch_6
        0xf884 -> :sswitch_6
        0xf885 -> :sswitch_6
        0xf886 -> :sswitch_6
        0xf887 -> :sswitch_6
        0xf888 -> :sswitch_6
        0xf889 -> :sswitch_6
        0xf890 -> :sswitch_6
        0xf891 -> :sswitch_6
        0xf892 -> :sswitch_6
        0xf893 -> :sswitch_6
        0xf894 -> :sswitch_6
        0xf895 -> :sswitch_6
        0xf896 -> :sswitch_6
        0xf897 -> :sswitch_3
        0xf898 -> :sswitch_a
        0xf899 -> :sswitch_a
        0xf900 -> :sswitch_a
        0xf901 -> :sswitch_a
        0xf902 -> :sswitch_a
        0xf903 -> :sswitch_a
        0xf904 -> :sswitch_a
        0xf905 -> :sswitch_a
        0xf906 -> :sswitch_a
        0xf907 -> :sswitch_a
        0xf908 -> :sswitch_a
        0xf909 -> :sswitch_a
        0xf910 -> :sswitch_a
        0xf911 -> :sswitch_a
        0xf912 -> :sswitch_a
        0xf913 -> :sswitch_a
        0xf914 -> :sswitch_a
        0xf915 -> :sswitch_a
        0xf916 -> :sswitch_a
        0xf917 -> :sswitch_a
        0xf918 -> :sswitch_a
        0xf919 -> :sswitch_a
        0xf921 -> :sswitch_a
        0xf922 -> :sswitch_a
        0xf923 -> :sswitch_a
        0xf924 -> :sswitch_a
        0xf925 -> :sswitch_a
        0xf926 -> :sswitch_a
        0xf927 -> :sswitch_a
        0xf928 -> :sswitch_a
        0xf929 -> :sswitch_a
        0xf930 -> :sswitch_a
        0xf931 -> :sswitch_a
        0xf932 -> :sswitch_a
        0xf933 -> :sswitch_a
        0xf934 -> :sswitch_a
        0xf935 -> :sswitch_c
        0xf936 -> :sswitch_c
        0xf937 -> :sswitch_c
        0xf938 -> :sswitch_c
        0xf939 -> :sswitch_c
        0xf940 -> :sswitch_c
        0xf941 -> :sswitch_c
        0xf942 -> :sswitch_c
        0xf943 -> :sswitch_c
        0xf944 -> :sswitch_c
        0xf945 -> :sswitch_c
        0xf946 -> :sswitch_c
        0xf947 -> :sswitch_c
        0xf948 -> :sswitch_c
        0xf949 -> :sswitch_c
        0xf950 -> :sswitch_c
        0xf951 -> :sswitch_c
        0xf952 -> :sswitch_c
        0xf953 -> :sswitch_c
        0xf954 -> :sswitch_c
        0xf955 -> :sswitch_c
        0xf956 -> :sswitch_c
        0xf957 -> :sswitch_c
        0xf958 -> :sswitch_c
        0xf959 -> :sswitch_c
        0xf960 -> :sswitch_c
        0xf961 -> :sswitch_c
        0xf962 -> :sswitch_c
        0xf963 -> :sswitch_e
        0xf964 -> :sswitch_e
        0xf965 -> :sswitch_e
        0xf966 -> :sswitch_e
        0xf967 -> :sswitch_e
        0xf968 -> :sswitch_e
        0xf969 -> :sswitch_e
        0xf970 -> :sswitch_e
        0xf971 -> :sswitch_e
        0xf972 -> :sswitch_e
        0xf973 -> :sswitch_e
        0xf974 -> :sswitch_e
        0xf975 -> :sswitch_e
        0xf976 -> :sswitch_e
        0xf977 -> :sswitch_e
        0xf978 -> :sswitch_e
        0xf979 -> :sswitch_e
        0xf980 -> :sswitch_e
        0xf981 -> :sswitch_e
        0xf982 -> :sswitch_e
        0xf983 -> :sswitch_e
        0xf984 -> :sswitch_e
        0xf985 -> :sswitch_e
        0xf986 -> :sswitch_e
        0xf987 -> :sswitch_e
        0xf988 -> :sswitch_e
        0xf989 -> :sswitch_e
        0xf990 -> :sswitch_e
        0x186a0 -> :sswitch_b
        0x186a1 -> :sswitch_b
        0x186a2 -> :sswitch_5
        0x186a3 -> :sswitch_1
        0x186aa -> :sswitch_1
        0x186ab -> :sswitch_b
        0x186b4 -> :sswitch_5
        0x186b5 -> :sswitch_7
        0x186b9 -> :sswitch_1
        0x186ba -> :sswitch_9
        0xf4256 -> :sswitch_1
    .end sparse-switch
.end method

.method public getVerticalGap()I
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard;->getVerticalGap()I

    move-result v0

    return v0
.end method

.method public isShiftLocked()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_1

    .line 150
    sget v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 150
    goto :goto_0

    :cond_1
    move v0, v2

    .line 152
    goto :goto_0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_1

    .line 142
    sget v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_1
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    goto :goto_0
.end method

.method public keyboard_icon_preview_drawable([IIILandroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "codes"
    .parameter "width"
    .parameter "height"
    .parameter "tv_preview"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 261
    invoke-static {p1, p3, p4}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->setText_Key([IILandroid/widget/TextView;)Landroid/widget/TextView;

    .line 263
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setWidth(I)V

    .line 264
    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setHeight(I)V

    .line 265
    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 268
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p4, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 269
    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p4, v4, v4, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 270
    invoke-virtual {p4, v5}, Landroid/widget/TextView;->buildDrawingCache(Z)V

    .line 271
    invoke-virtual {p4}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 272
    .local v1, returnedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 273
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 275
    .local v0, key_icon_preview:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public setShifted(Z)Z
    .locals 4
    .parameter "shifted"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, shiftChanged:Z
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v1, :cond_4

    .line 121
    if-nez p1, :cond_2

    .line 122
    sget v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    if-eqz v1, :cond_1

    move v0, v3

    .line 123
    :goto_0
    sput v2, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    .line 124
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v2, v1, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 125
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_1
    move v1, v0

    .line 136
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 122
    goto :goto_0

    .line 127
    :cond_2
    sget v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    if-nez v1, :cond_0

    .line 128
    sget v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    if-nez v1, :cond_3

    move v0, v3

    .line 129
    :goto_3
    sput v3, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    .line 130
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftOnIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    move v0, v2

    .line 128
    goto :goto_3

    .line 134
    :cond_4
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v1

    goto :goto_2
.end method

.method public shiftLongPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 106
    sget v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    if-eqz v0, :cond_0

    sget v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    if-ne v0, v1, :cond_1

    .line 107
    :cond_0
    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->setShifted(Z)Z

    .line 108
    const/4 v0, 0x2

    sput v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    .line 109
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v1, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->setShifted(Z)Z

    .line 112
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v2, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    goto :goto_0
.end method

.method public shiftPressed()V
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->setShifted(Z)Z

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->setShifted(Z)Z

    goto :goto_0
.end method
