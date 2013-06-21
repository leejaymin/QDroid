.class public Lvn/esse/bodysymbol/HomeActivity;
.super Landroid/app/Activity;
.source "HomeActivity.java"

# interfaces
.implements Lnet/londatiga/android/QuickAction$OnActionItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask;
    }
.end annotation


# static fields
.field static BODY_SYMBOL:Ljava/lang/String; = null

.field public static BODY_SYMBOL_FROM_CHARACTER:Ljava/lang/String; = null

.field static CHARACTER_SYMBOL:Ljava/lang/String; = null

.field static CHARACTER_SYMBOL_SIZE:I = 0x0

.field public static final RES_4x4:I = 0x1

.field public static final RES_5x5:I = 0x2

.field public static final RES_6x6:I = 0x3

.field public static final SHOW_ABOUT_DIALOG:I = 0x3

.field public static final SHOW_CHOOSER_DIALOG:I = 0x1

.field public static final SHOW_CHOOSE_CHARACTER:I = 0x4

.field public static final SHOW_PREVIEW_DIALOG:I = 0x2

.field private static final WORKING_DIR:Ljava/lang/String;

.field public static current_resolution:I


# instance fields
.field adLayout:Landroid/widget/LinearLayout;

.field adView:Lcom/google/ads/AdView;

.field cameraPreview:Lvn/esse/bodysymbol/Preview;

.field changeResQuickAction:Lnet/londatiga/android/QuickAction;

.field clickItemQuickAction:Lnet/londatiga/android/QuickAction;

.field currentIndex:I

.field font:Landroid/graphics/Typeface;

.field grid:Landroid/widget/ScrollView;

.field handle:Landroid/os/Handler;

.field imgView:[Landroid/widget/ImageButton;

.field jpegCallback:Landroid/hardware/Camera$PictureCallback;

.field mainGridTableFrame:Landroid/widget/TableLayout;

.field metrics:Landroid/util/DisplayMetrics;

.field prefs:Landroid/content/SharedPreferences;

.field progress:Landroid/app/ProgressDialog;

.field rawCallback:Landroid/hardware/Camera$PictureCallback;

.field rotateQuickAction:Lnet/londatiga/android/QuickAction;

.field selfTimerQuickAction:Lnet/londatiga/android/QuickAction;

.field shutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field public symbolBitmap:Landroid/graphics/Bitmap;

.field symbolItem:Landroid/widget/ImageView;

.field takePhotoLayout:Landroid/widget/RelativeLayout;

.field wakeLock:Landroid/os/PowerManager$WakeLock;

.field zoomQuickAction:Lnet/londatiga/android/QuickAction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    const-string v1, "/.bodysymbol/tmp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvn/esse/bodysymbol/HomeActivity;->WORKING_DIR:Ljava/lang/String;

    .line 130
    const-string v0, "character"

    sput-object v0, Lvn/esse/bodysymbol/HomeActivity;->BODY_SYMBOL_FROM_CHARACTER:Ljava/lang/String;

    .line 131
    const-string v0, "A"

    sput-object v0, Lvn/esse/bodysymbol/HomeActivity;->CHARACTER_SYMBOL:Ljava/lang/String;

    .line 132
    const/16 v0, 0x32

    sput v0, Lvn/esse/bodysymbol/HomeActivity;->CHARACTER_SYMBOL_SIZE:I

    .line 133
    const-string v0, "heart"

    sput-object v0, Lvn/esse/bodysymbol/HomeActivity;->BODY_SYMBOL:Ljava/lang/String;

    .line 141
    const/4 v0, 0x4

    sput v0, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lvn/esse/bodysymbol/HomeActivity;->currentIndex:I

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->handle:Landroid/os/Handler;

    .line 472
    new-instance v0, Lvn/esse/bodysymbol/HomeActivity$1;

    invoke-direct {v0, p0}, Lvn/esse/bodysymbol/HomeActivity$1;-><init>(Lvn/esse/bodysymbol/HomeActivity;)V

    iput-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 479
    new-instance v0, Lvn/esse/bodysymbol/HomeActivity$2;

    invoke-direct {v0, p0}, Lvn/esse/bodysymbol/HomeActivity$2;-><init>(Lvn/esse/bodysymbol/HomeActivity;)V

    iput-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->rawCallback:Landroid/hardware/Camera$PictureCallback;

    .line 486
    new-instance v0, Lvn/esse/bodysymbol/HomeActivity$3;

    invoke-direct {v0, p0}, Lvn/esse/bodysymbol/HomeActivity$3;-><init>(Lvn/esse/bodysymbol/HomeActivity;)V

    iput-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 85
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lvn/esse/bodysymbol/HomeActivity;->WORKING_DIR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lvn/esse/bodysymbol/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1002
    invoke-direct {p0}, Lvn/esse/bodysymbol/HomeActivity;->backFromTakePhoto()V

    return-void
.end method

.method static synthetic access$2(Lvn/esse/bodysymbol/HomeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lvn/esse/bodysymbol/HomeActivity;->performClick(I)V

    return-void
.end method

.method static synthetic access$3(Lvn/esse/bodysymbol/HomeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1231
    invoke-direct {p0, p1}, Lvn/esse/bodysymbol/HomeActivity;->updateSymbolBitmap(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lvn/esse/bodysymbol/HomeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lvn/esse/bodysymbol/HomeActivity;->onResetPerform(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lvn/esse/bodysymbol/HomeActivity;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 905
    invoke-direct {p0, p1, p2}, Lvn/esse/bodysymbol/HomeActivity;->saveImage(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$6(Lvn/esse/bodysymbol/HomeActivity;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1210
    invoke-direct {p0, p1, p2}, Lvn/esse/bodysymbol/HomeActivity;->createSymbolFromChar(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private backFromTakePhoto()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1004
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->takePhotoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1005
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->grid:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1006
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1007
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    invoke-virtual {v0}, Lvn/esse/bodysymbol/Preview;->stopCameraPreview()V

    .line 1010
    return-void
.end method

.method public static convertDPtoPX(ILandroid/content/Context;)I
    .locals 4
    .parameter "dp"
    .parameter "context"

    .prologue
    .line 1142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1144
    .local v1, scale:F
    int-to-float v2, p0

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f00

    add-float v0, v2, v3

    .line 1145
    .local v0, result:F
    float-to-int v2, v0

    return v2
.end method

.method public static convertPXtoDP(ILandroid/content/Context;)I
    .locals 4
    .parameter "px"
    .parameter "context"

    .prologue
    .line 1150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1151
    .local v1, scale:F
    int-to-float v2, p0

    const/high16 v3, 0x3f00

    sub-float/2addr v2, v3

    div-float v0, v2, v1

    .line 1152
    .local v0, result:F
    float-to-int v2, v0

    return v2
.end method

.method private createSymbolFromChar(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "ch"
    .parameter "size"

    .prologue
    .line 1211
    iget-object v5, p0, Lvn/esse/bodysymbol/HomeActivity;->metrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1212
    iget-object v6, p0, Lvn/esse/bodysymbol/HomeActivity;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 1211
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1213
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1214
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1215
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1216
    .local v3, paint:Landroid/graphics/Paint;
    const v5, -0xff0100

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1217
    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1218
    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1219
    mul-int/lit8 v5, p2, 0xa

    invoke-static {v5, p0}, Lvn/esse/bodysymbol/HomeActivity;->convertDPtoPX(ILandroid/content/Context;)I

    move-result v5

    int-to-float v2, v5

    .line 1220
    .local v2, charsize:F
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1221
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1222
    iget-object v5, p0, Lvn/esse/bodysymbol/HomeActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1223
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    .line 1224
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x1

    div-int/lit8 v6, v6, 0x6

    int-to-float v6, v6

    .line 1223
    sub-float v4, v5, v6

    .line 1226
    .local v4, y:F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, p1, v5, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1228
    return-object v0
.end method

.method private loadAdmob()V
    .locals 4

    .prologue
    .line 955
    new-instance v1, Lcom/google/ads/AdView;

    sget-object v2, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    const-string v3, "bd4cc162342a4f95"

    invoke-direct {v1, p0, v2, v3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v1, p0, Lvn/esse/bodysymbol/HomeActivity;->adView:Lcom/google/ads/AdView;

    .line 957
    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity;->adLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lvn/esse/bodysymbol/HomeActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 959
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 961
    .local v0, req:Lcom/google/ads/AdRequest;
    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 962
    return-void
.end method

.method private loadAllImgViews()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1158
    iget-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->mainGridTableFrame:Landroid/widget/TableLayout;

    invoke-virtual {v8}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 1159
    const/4 v2, 0x0

    .line 1160
    .local v2, row:Landroid/widget/TableRow;
    sget v8, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    sget v9, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    mul-int/2addr v8, v9

    new-array v8, v8, [Landroid/widget/ImageButton;

    iput-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->imgView:[Landroid/widget/ImageButton;

    .line 1161
    iget-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->metrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v9, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    div-int v6, v8, v9

    .line 1162
    .local v6, xItemSize:I
    int-to-float v8, v6

    iget-object v9, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    iget-object v9, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    .line 1163
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    .line 1162
    div-float/2addr v8, v9

    float-to-int v7, v8

    .line 1165
    .local v7, yItemSize:I
    invoke-virtual {p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1166
    const v9, 0x7f020005

    const/4 v10, 0x0

    .line 1165
    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1167
    .local v4, tmp_background:Landroid/graphics/Bitmap;
    invoke-static {v4, v6, v7, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1169
    .local v0, background:Landroid/graphics/Bitmap;
    const-class v8, Lvn/esse/bodysymbol/HomeActivity;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Load grid size:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1170
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x50

    div-int/2addr v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1169
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->imgView:[Landroid/widget/ImageButton;

    array-length v8, v8

    if-lt v1, v8, :cond_0

    .line 1204
    return-void

    .line 1172
    :cond_0
    move v5, v1

    .line 1173
    .local v5, tmp_index:I
    sget v8, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    rem-int v8, v1, v8

    if-nez v8, :cond_1

    .line 1174
    new-instance v2, Landroid/widget/TableRow;

    .end local v2           #row:Landroid/widget/TableRow;
    invoke-direct {v2, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 1175
    .restart local v2       #row:Landroid/widget/TableRow;
    invoke-virtual {v2, v11, v11, v11, v11}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 1176
    iget-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->mainGridTableFrame:Landroid/widget/TableLayout;

    invoke-virtual {v8, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1178
    :cond_1
    iget-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->imgView:[Landroid/widget/ImageButton;

    new-instance v9, Landroid/widget/ImageButton;

    invoke-direct {v9, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v1

    .line 1179
    iget-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->imgView:[Landroid/widget/ImageButton;

    aget-object v8, v8, v1

    invoke-virtual {v8, v6}, Landroid/widget/ImageButton;->setMaxWidth(I)V

    .line 1180
    iget-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->imgView:[Landroid/widget/ImageButton;

    aget-object v8, v8, v1

    invoke-virtual {v8, v7}, Landroid/widget/ImageButton;->setMaxHeight(I)V

    .line 1181
    iget-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->imgView:[Landroid/widget/ImageButton;

    aget-object v8, v8, v1

    invoke-virtual {v8, v11, v11, v11, v11}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 1182
    iget-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->imgView:[Landroid/widget/ImageButton;

    aget-object v8, v8, v1

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1183
    invoke-direct {v9, v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1182
    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1184
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lvn/esse/bodysymbol/HomeActivity;->WORKING_DIR:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1185
    .local v3, src:Landroid/graphics/Bitmap;
    if-nez v3, :cond_2

    .line 1186
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1188
    :cond_2
    iget-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->imgView:[Landroid/widget/ImageButton;

    aget-object v8, v8, v1

    invoke-static {v3, v6, v7, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1191
    iget-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->imgView:[Landroid/widget/ImageButton;

    aget-object v8, v8, v1

    invoke-virtual {v2, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 1192
    iget-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->imgView:[Landroid/widget/ImageButton;

    aget-object v8, v8, v1

    new-instance v9, Lvn/esse/bodysymbol/HomeActivity$21;

    invoke-direct {v9, p0, v5}, Lvn/esse/bodysymbol/HomeActivity$21;-><init>(Lvn/esse/bodysymbol/HomeActivity;I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1171
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private onResetPerform(Ljava/lang/String;)V
    .locals 11
    .parameter "sbm"

    .prologue
    .line 433
    sput-object p1, Lvn/esse/bodysymbol/HomeActivity;->BODY_SYMBOL:Ljava/lang/String;

    .line 434
    new-instance v5, Ljava/io/File;

    sget-object v8, Lvn/esse/bodysymbol/HomeActivity;->WORKING_DIR:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v5, root:Ljava/io/File;
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    array-length v8, v8

    if-gtz v8, :cond_0

    .line 439
    :try_start_0
    iget-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sget v9, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    div-int v6, v8, v9

    .line 440
    .local v6, xItemSize:I
    iget-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget v9, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    div-int v7, v8, v9

    .line 441
    .local v7, yItemSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget v8, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    if-lt v1, v8, :cond_1

    .line 456
    invoke-direct {p0}, Lvn/esse/bodysymbol/HomeActivity;->loadAllImgViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v1           #i:I
    .end local v6           #xItemSize:I
    .end local v7           #yItemSize:I
    :goto_2
    return-void

    .line 436
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 442
    .restart local v1       #i:I
    .restart local v6       #xItemSize:I
    .restart local v7       #yItemSize:I
    :cond_1
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    :try_start_1
    sget v8, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    if-lt v3, v8, :cond_2

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 443
    :cond_2
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lvn/esse/bodysymbol/HomeActivity;->WORKING_DIR:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    sget v9, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    mul-int/2addr v9, v1

    add-int/2addr v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 443
    invoke-direct {v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 446
    .local v4, out:Ljava/io/OutputStream;
    iget-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    .line 447
    mul-int v9, v6, v3

    mul-int v10, v7, v1

    .line 446
    invoke-static {v8, v9, v10, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 448
    .local v2, item:Landroid/graphics/Bitmap;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v2, v8, v9, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 449
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 450
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 442
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 458
    .end local v1           #i:I
    .end local v2           #item:Landroid/graphics/Bitmap;
    .end local v3           #j:I
    .end local v4           #out:Ljava/io/OutputStream;
    .end local v6           #xItemSize:I
    .end local v7           #yItemSize:I
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Ljava/lang/Exception;
    const-class v8, Lvn/esse/bodysymbol/HomeActivity;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private performClick(I)V
    .locals 9
    .parameter "index"

    .prologue
    .line 369
    :try_start_0
    iget-object v6, p0, Lvn/esse/bodysymbol/HomeActivity;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v7, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    div-int v3, v6, v7

    .line 370
    .local v3, xItemSize:I
    int-to-float v6, v3

    iget-object v7, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget-object v7, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    .line 371
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    .line 370
    div-float/2addr v6, v7

    float-to-int v5, v6

    .line 372
    .local v5, yItemSize:I
    iget v6, p0, Lvn/esse/bodysymbol/HomeActivity;->currentIndex:I

    sget v7, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    rem-int v2, v6, v7

    .line 373
    .local v2, x:I
    iget v6, p0, Lvn/esse/bodysymbol/HomeActivity;->currentIndex:I

    sub-int/2addr v6, v2

    sget v7, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    div-int v4, v6, v7

    .line 374
    .local v4, y:I
    iget-object v6, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    .line 375
    mul-int v7, v2, v3

    mul-int v8, v4, v5

    .line 374
    invoke-static {v6, v7, v8, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 378
    .local v1, mask:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolItem:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 379
    invoke-direct {p0}, Lvn/esse/bodysymbol/HomeActivity;->prepareToTakePhoto()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .end local v1           #mask:Landroid/graphics/Bitmap;
    .end local v2           #x:I
    .end local v3           #xItemSize:I
    .end local v4           #y:I
    .end local v5           #yItemSize:I
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 383
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private prepareToTakePhoto()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 977
    iget-object v4, p0, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    if-nez v4, :cond_0

    .line 978
    new-instance v4, Lvn/esse/bodysymbol/Preview;

    invoke-direct {v4, p0}, Lvn/esse/bodysymbol/Preview;-><init>(Lvn/esse/bodysymbol/HomeActivity;)V

    iput-object v4, p0, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    .line 979
    iget-object v4, p0, Lvn/esse/bodysymbol/HomeActivity;->metrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v2, v4, 0x3

    .line 980
    .local v2, x:I
    int-to-float v4, v2

    iget-object v5, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    .line 981
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 980
    div-float/2addr v4, v5

    float-to-int v3, v4

    .line 982
    .local v3, y:I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 984
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const v4, 0x7f09001a

    invoke-virtual {p0, v4}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 986
    .local v1, takePhotoPreview:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 988
    iget-object v4, p0, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 990
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #takePhotoPreview:Landroid/widget/RelativeLayout;
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_0
    iget-object v4, p0, Lvn/esse/bodysymbol/HomeActivity;->grid:Landroid/widget/ScrollView;

    invoke-virtual {v4, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 991
    iget-object v4, p0, Lvn/esse/bodysymbol/HomeActivity;->takePhotoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 993
    const v4, 0x7f09000d

    invoke-virtual {p0, v4}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 994
    const v4, 0x7f090013

    invoke-virtual {p0, v4}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 995
    iget-object v4, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolItem:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->bringToFront()V

    .line 996
    iget-object v4, p0, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    iget-object v4, v4, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    iget-boolean v4, v4, Lvn/esse/bodysymbol/Preview;->previewing:Z

    if-nez v4, :cond_1

    .line 997
    iget-object v4, p0, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    iget-object v4, v4, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    .line 1000
    :cond_1
    return-void
.end method

.method private resetAllImage(Ljava/lang/String;)V
    .locals 4
    .parameter "sbm"

    .prologue
    .line 406
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 408
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Yes"

    new-instance v3, Lvn/esse/bodysymbol/HomeActivity$8;

    invoke-direct {v3, p0, p1}, Lvn/esse/bodysymbol/HomeActivity$8;-><init>(Lvn/esse/bodysymbol/HomeActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 418
    const-string v2, "Cancel"

    new-instance v3, Lvn/esse/bodysymbol/HomeActivity$9;

    invoke-direct {v3, p0}, Lvn/esse/bodysymbol/HomeActivity$9;-><init>(Lvn/esse/bodysymbol/HomeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    const-string v2, "Are your sure to reset all image?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 428
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 429
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 430
    return-void
.end method

.method private saveImage(Landroid/graphics/Bitmap;Z)V
    .locals 9
    .parameter "out"
    .parameter "share"

    .prologue
    .line 908
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 909
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/bodysymbol/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 908
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 910
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 911
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 913
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 914
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 913
    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 915
    .local v2, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 916
    .local v4, output:Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p1, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 917
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 918
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 920
    invoke-virtual {p0}, Lvn/esse/bodysymbol/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 921
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Image saved at: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 922
    const/4 v8, 0x1

    .line 920
    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 922
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 923
    if-eqz p2, :cond_1

    .line 924
    new-instance v5, Landroid/content/Intent;

    .line 925
    const-string v6, "android.intent.action.SEND"

    .line 924
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 926
    .local v5, picMessageIntent:Landroid/content/Intent;
    const-string v6, "image/jpeg"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    const-string v6, "android.intent.extra.STREAM"

    .line 930
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 929
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 931
    const-string v6, "android.intent.extra.TITLE"

    const-string v7, "title"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    const-string v6, "android.intent.extra.SUBJECT"

    const-string v7, "subject"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 933
    const-string v6, "android.intent.extra.TEXT"

    const-string v7, "text"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    const-string v6, "Share image to"

    .line 934
    invoke-static {v5, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lvn/esse/bodysymbol/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 950
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #output:Ljava/io/FileOutputStream;
    .end local v5           #picMessageIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 938
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 939
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 942
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "image/jpg"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    invoke-virtual {p0, v3}, Lvn/esse/bodysymbol/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 946
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #output:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 948
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1354
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1355
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1357
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1358
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 1361
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1363
    .end local v0           #i:I
    :cond_1
    return-void

    .restart local v0       #i:I
    .restart local p1
    :cond_2
    move-object v1, p1

    .line 1359
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lvn/esse/bodysymbol/HomeActivity;->unbindDrawables(Landroid/view/View;)V

    .line 1358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateSymbolBitmap(Ljava/lang/String;)V
    .locals 10
    .parameter "sbm"

    .prologue
    const/4 v9, 0x0

    .line 1232
    sget-object v7, Lvn/esse/bodysymbol/HomeActivity;->BODY_SYMBOL_FROM_CHARACTER:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1233
    sget-object v7, Lvn/esse/bodysymbol/HomeActivity;->CHARACTER_SYMBOL:Ljava/lang/String;

    .line 1234
    sget v8, Lvn/esse/bodysymbol/HomeActivity;->CHARACTER_SYMBOL_SIZE:I

    .line 1233
    invoke-direct {p0, v7, v8}, Lvn/esse/bodysymbol/HomeActivity;->createSymbolFromChar(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    .line 1259
    :goto_0
    iget-object v7, p0, Lvn/esse/bodysymbol/HomeActivity;->metrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x1e0

    if-le v7, v8, :cond_0

    .line 1261
    iget-object v7, p0, Lvn/esse/bodysymbol/HomeActivity;->metrics:Landroid/util/DisplayMetrics;

    iget v5, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1262
    .local v5, x:I
    int-to-float v7, v5

    iget-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    .line 1263
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    .line 1262
    div-float/2addr v7, v8

    float-to-int v6, v7

    .line 1265
    .local v6, y:I
    iget-object v7, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-static {v7, v5, v6, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1266
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1267
    iput-object v9, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    .line 1268
    iput-object v1, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    .line 1271
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_0
    const-class v7, Lvn/esse/bodysymbol/HomeActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1272
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Updated bitmap:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1273
    iget-object v9, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1272
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1271
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    return-void

    .line 1237
    :cond_1
    invoke-virtual {p0}, Lvn/esse/bodysymbol/HomeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1238
    .local v0, am:Landroid/content/res/AssetManager;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "symbol/mdpi/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1239
    .local v3, filePath:Ljava/lang/String;
    iget-object v7, p0, Lvn/esse/bodysymbol/HomeActivity;->metrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x140

    if-le v7, v8, :cond_2

    .line 1240
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "symbol/hdpi/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1242
    :cond_2
    iget-object v7, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    .line 1243
    iget-object v7, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1244
    iput-object v9, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    .line 1250
    :cond_3
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 1251
    .local v4, in:Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1253
    .end local v4           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 1255
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public combineImages([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "piece"

    .prologue
    .line 570
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 571
    .local v2, config:Landroid/graphics/Bitmap$Config;
    iget-object v9, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    const/16 v10, 0x258

    if-le v9, v10, :cond_0

    .line 572
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 574
    :cond_0
    iget-object v9, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 575
    iget-object v10, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 574
    invoke-static {v9, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 576
    .local v3, cs:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 577
    .local v1, comboImage:Landroid/graphics/Canvas;
    iget-object v9, p0, Lvn/esse/bodysymbol/HomeActivity;->metrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v10, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    div-int v7, v9, v10

    .line 578
    .local v7, xItemSize:I
    int-to-float v9, v7

    iget-object v10, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget-object v10, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    .line 579
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    .line 578
    div-float/2addr v9, v10

    float-to-int v8, v9

    .line 581
    .local v8, yItemSize:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    sget v9, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    if-lt v4, v9, :cond_1

    .line 596
    return-object v3

    .line 582
    :cond_1
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    sget v9, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    if-lt v5, v9, :cond_2

    .line 581
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 583
    :cond_2
    sget v9, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    mul-int/2addr v9, v4

    add-int/2addr v9, v5

    aget-object v0, p1, v9

    .line 584
    .local v0, beforeScale:Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    .line 585
    invoke-virtual {p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 586
    const v10, 0x7f020005

    .line 585
    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 589
    :cond_3
    const/4 v9, 0x0

    .line 588
    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 590
    .local v6, tmp:Landroid/graphics/Bitmap;
    mul-int v9, v7, v5

    int-to-float v9, v9

    mul-int v10, v8, v4

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v1, v6, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 582
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method flipItem(IZ)V
    .locals 11
    .parameter "index"
    .parameter "vertical"

    .prologue
    .line 1310
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lvn/esse/bodysymbol/HomeActivity;->WORKING_DIR:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1313
    .local v0, src:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1314
    .local v5, matrix:Landroid/graphics/Matrix;
    if-eqz p2, :cond_0

    .line 1315
    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1319
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1320
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    .line 1319
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1323
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lvn/esse/bodysymbol/HomeActivity;->WORKING_DIR:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1324
    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1323
    invoke-direct {v8, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1325
    .local v8, output:Ljava/io/FileOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1326
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 1327
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1330
    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v2, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    div-int v9, v1, v2

    .line 1331
    .local v9, xItemSize:I
    int-to-float v1, v9

    iget-object v2, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    .line 1332
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 1331
    div-float/2addr v1, v2

    float-to-int v10, v1

    .line 1333
    .local v10, yItemSize:I
    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity;->imgView:[Landroid/widget/ImageButton;

    iget v2, p0, Lvn/esse/bodysymbol/HomeActivity;->currentIndex:I

    aget-object v1, v1, v2

    .line 1334
    const/4 v2, 0x0

    .line 1333
    invoke-static {v0, v9, v10, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1339
    .end local v0           #src:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v8           #output:Ljava/io/FileOutputStream;
    .end local v9           #xItemSize:I
    .end local v10           #yItemSize:I
    :goto_1
    return-void

    .line 1317
    .restart local v0       #src:Landroid/graphics/Bitmap;
    .restart local v5       #matrix:Landroid/graphics/Matrix;
    :cond_0
    const/high16 v1, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1335
    .end local v0           #src:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :catch_0
    move-exception v7

    .line 1337
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->takePhotoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 968
    const-class v0, Lvn/esse/bodysymbol/HomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Back from take photo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-direct {p0}, Lvn/esse/bodysymbol/HomeActivity;->backFromTakePhoto()V

    .line 974
    :goto_0
    return-void

    .line 971
    :cond_0
    const-class v0, Lvn/esse/bodysymbol/HomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Back to home"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onChangeResol(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1134
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->changeResQuickAction:Lnet/londatiga/android/QuickAction;

    invoke-virtual {v0, p1}, Lnet/londatiga/android/QuickAction;->show(Landroid/view/View;)V

    .line 1135
    return-void
.end method

.method public onCombinePhoto(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 469
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lvn/esse/bodysymbol/HomeActivity;->showDialog(I)V

    .line 470
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 28
    .parameter "savedInstanceState"

    .prologue
    .line 155
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const v24, 0x7f030006

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->setContentView(I)V

    .line 157
    const v24, 0x7f090018

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lvn/esse/bodysymbol/HomeActivity;->adLayout:Landroid/widget/LinearLayout;

    .line 158
    invoke-direct/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->loadAdmob()V

    .line 159
    const v24, 0x7f09001c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ScrollView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lvn/esse/bodysymbol/HomeActivity;->grid:Landroid/widget/ScrollView;

    .line 160
    const v24, 0x7f09001d

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TableLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lvn/esse/bodysymbol/HomeActivity;->mainGridTableFrame:Landroid/widget/TableLayout;

    .line 161
    const v24, 0x7f090019

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lvn/esse/bodysymbol/HomeActivity;->takePhotoLayout:Landroid/widget/RelativeLayout;

    .line 162
    const v24, 0x7f09001b

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lvn/esse/bodysymbol/HomeActivity;->symbolItem:Landroid/widget/ImageView;

    .line 164
    new-instance v24, Landroid/util/DisplayMetrics;

    invoke-direct/range {v24 .. v24}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lvn/esse/bodysymbol/HomeActivity;->metrics:Landroid/util/DisplayMetrics;

    .line 165
    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->metrics:Landroid/util/DisplayMetrics;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 166
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lvn/esse/bodysymbol/HomeActivity;->prefs:Landroid/content/SharedPreferences;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string v25, "BODY_SYMBOL"

    const-string v26, "heart"

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lvn/esse/bodysymbol/HomeActivity;->BODY_SYMBOL:Ljava/lang/String;

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string v25, "CHARACTER"

    const-string v26, "A"

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lvn/esse/bodysymbol/HomeActivity;->CHARACTER_SYMBOL:Ljava/lang/String;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string v25, "CHARACTER_SIZE"

    const/16 v26, 0x32

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    sput v24, Lvn/esse/bodysymbol/HomeActivity;->CHARACTER_SYMBOL_SIZE:I

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string v25, "RES"

    const/16 v26, 0x4

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    sput v24, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    .line 172
    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    const-string v25, "lanenar.ttf"

    invoke-static/range {v24 .. v25}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lvn/esse/bodysymbol/HomeActivity;->font:Landroid/graphics/Typeface;

    .line 173
    sget-object v24, Lvn/esse/bodysymbol/HomeActivity;->BODY_SYMBOL:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->updateSymbolBitmap(Ljava/lang/String;)V

    .line 175
    new-instance v14, Ljava/io/File;

    sget-object v24, Lvn/esse/bodysymbol/HomeActivity;->WORKING_DIR:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v14, rootDir:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x10

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 178
    :cond_0
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 181
    sget-object v24, Lvn/esse/bodysymbol/HomeActivity;->BODY_SYMBOL:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->onResetPerform(Ljava/lang/String;)V

    .line 188
    :cond_1
    :goto_0
    new-instance v11, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x1

    const-string v25, ""

    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 189
    const v27, 0x7f02000b

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 188
    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v11, v0, v1, v2}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 191
    .local v11, res4x4Item:Lnet/londatiga/android/ActionItem;
    new-instance v12, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x2

    const-string v25, ""

    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 192
    const v27, 0x7f02000c

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 191
    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v12, v0, v1, v2}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 193
    .local v12, res5x5Item:Lnet/londatiga/android/ActionItem;
    new-instance v13, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x3

    const-string v25, ""

    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 194
    const v27, 0x7f02000d

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 193
    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v13, v0, v1, v2}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 195
    .local v13, res6x6Item:Lnet/londatiga/android/ActionItem;
    sget v24, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    packed-switch v24, :pswitch_data_0

    .line 213
    :goto_1
    new-instance v24, Lnet/londatiga/android/QuickAction;

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lnet/londatiga/android/QuickAction;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lvn/esse/bodysymbol/HomeActivity;->changeResQuickAction:Lnet/londatiga/android/QuickAction;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->changeResQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->changeResQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->changeResQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->changeResQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/londatiga/android/QuickAction;->setOnActionItemClickListener(Lnet/londatiga/android/QuickAction$OnActionItemClickListener;)V

    .line 219
    new-instance v22, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x1

    const-string v25, ""

    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 220
    const v27, 0x7f02001a

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 219
    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 222
    .local v22, zoomInItem:Lnet/londatiga/android/ActionItem;
    new-instance v23, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x2

    const-string v25, ""

    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 223
    const v27, 0x7f02001b

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 222
    invoke-direct/range {v23 .. v26}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 225
    .local v23, zoomOutItem:Lnet/londatiga/android/ActionItem;
    new-instance v24, Lnet/londatiga/android/QuickAction;

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lnet/londatiga/android/QuickAction;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lvn/esse/bodysymbol/HomeActivity;->zoomQuickAction:Lnet/londatiga/android/QuickAction;

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->zoomQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->zoomQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->zoomQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    .line 229
    new-instance v25, Lvn/esse/bodysymbol/HomeActivity$4;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lvn/esse/bodysymbol/HomeActivity$4;-><init>(Lvn/esse/bodysymbol/HomeActivity;)V

    invoke-virtual/range {v24 .. v25}, Lnet/londatiga/android/QuickAction;->setOnActionItemClickListener(Lnet/londatiga/android/QuickAction$OnActionItemClickListener;)V

    .line 249
    new-instance v7, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x1

    const-string v25, ""

    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 250
    const v27, 0x7f020008

    .line 249
    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v7, v0, v1, v2}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 251
    .local v7, r0Item:Lnet/londatiga/android/ActionItem;
    new-instance v10, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x2

    const-string v25, ""

    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 252
    const v27, 0x7f02000e

    .line 251
    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v10, v0, v1, v2}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 253
    .local v10, r90Item:Lnet/londatiga/android/ActionItem;
    new-instance v8, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x3

    const-string v25, ""

    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 254
    const v27, 0x7f020009

    .line 253
    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v8, v0, v1, v2}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 255
    .local v8, r180Item:Lnet/londatiga/android/ActionItem;
    new-instance v9, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x4

    const-string v25, ""

    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 256
    const v27, 0x7f02000a

    .line 255
    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v9, v0, v1, v2}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 258
    .local v9, r270Item:Lnet/londatiga/android/ActionItem;
    new-instance v24, Lnet/londatiga/android/QuickAction;

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lnet/londatiga/android/QuickAction;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lvn/esse/bodysymbol/HomeActivity;->rotateQuickAction:Lnet/londatiga/android/QuickAction;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->rotateQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->rotateQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->rotateQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->rotateQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->rotateQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    .line 265
    new-instance v25, Lvn/esse/bodysymbol/HomeActivity$5;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lvn/esse/bodysymbol/HomeActivity$5;-><init>(Lvn/esse/bodysymbol/HomeActivity;)V

    invoke-virtual/range {v24 .. v25}, Lnet/londatiga/android/QuickAction;->setOnActionItemClickListener(Lnet/londatiga/android/QuickAction$OnActionItemClickListener;)V

    .line 283
    new-instance v24, Lnet/londatiga/android/QuickAction;

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lnet/londatiga/android/QuickAction;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lvn/esse/bodysymbol/HomeActivity;->clickItemQuickAction:Lnet/londatiga/android/QuickAction;

    .line 284
    new-instance v17, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x1

    const-string v25, "Take photo"

    .line 285
    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f020012

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 284
    move-object/from16 v0, v17

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 286
    .local v17, takePhotoItem:Lnet/londatiga/android/ActionItem;
    new-instance v15, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x2

    const-string v25, "Rotate right"

    .line 287
    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f020014

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 286
    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v15, v0, v1, v2}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 288
    .local v15, rotate90Item:Lnet/londatiga/android/ActionItem;
    new-instance v16, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x3

    const-string v25, "Rotate left"

    .line 289
    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f020015

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 288
    move-object/from16 v0, v16

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 290
    .local v16, rotateN90Item:Lnet/londatiga/android/ActionItem;
    new-instance v5, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x4

    const-string v25, "Mirror"

    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 291
    const v27, 0x7f02001d

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 290
    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v5, v0, v1, v2}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 292
    .local v5, mirrorItem:Lnet/londatiga/android/ActionItem;
    new-instance v4, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x5

    const-string v25, "Flip"

    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 293
    const v27, 0x7f020007

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 292
    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v4, v0, v1, v2}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 294
    .local v4, flipItem:Lnet/londatiga/android/ActionItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->clickItemQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->clickItemQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->clickItemQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->clickItemQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->clickItemQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->clickItemQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    .line 300
    new-instance v25, Lvn/esse/bodysymbol/HomeActivity$6;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lvn/esse/bodysymbol/HomeActivity$6;-><init>(Lvn/esse/bodysymbol/HomeActivity;)V

    invoke-virtual/range {v24 .. v25}, Lnet/londatiga/android/QuickAction;->setOnActionItemClickListener(Lnet/londatiga/android/QuickAction$OnActionItemClickListener;)V

    .line 328
    new-instance v24, Lnet/londatiga/android/QuickAction;

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lnet/londatiga/android/QuickAction;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lvn/esse/bodysymbol/HomeActivity;->selfTimerQuickAction:Lnet/londatiga/android/QuickAction;

    .line 329
    new-instance v21, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x1

    const-string v25, "5 seconds"

    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 330
    const v27, 0x7f02000f

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 329
    move-object/from16 v0, v21

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 331
    .local v21, w5second:Lnet/londatiga/android/ActionItem;
    new-instance v18, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x2

    const-string v25, "10 seconds"

    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 332
    const v27, 0x7f02000f

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 331
    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 333
    .local v18, w10second:Lnet/londatiga/android/ActionItem;
    new-instance v19, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x3

    const-string v25, "15 seconds"

    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 334
    const v27, 0x7f02000f

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 333
    move-object/from16 v0, v19

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 335
    .local v19, w15second:Lnet/londatiga/android/ActionItem;
    new-instance v20, Lnet/londatiga/android/ActionItem;

    const/16 v24, 0x4

    const-string v25, "20 seconds"

    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 336
    const v27, 0x7f02000f

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 335
    move-object/from16 v0, v20

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 337
    .local v20, w20second:Lnet/londatiga/android/ActionItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->selfTimerQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->selfTimerQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->selfTimerQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->selfTimerQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->selfTimerQuickAction:Lnet/londatiga/android/QuickAction;

    move-object/from16 v24, v0

    .line 342
    new-instance v25, Lvn/esse/bodysymbol/HomeActivity$7;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lvn/esse/bodysymbol/HomeActivity$7;-><init>(Lvn/esse/bodysymbol/HomeActivity;)V

    invoke-virtual/range {v24 .. v25}, Lnet/londatiga/android/QuickAction;->setOnActionItemClickListener(Lnet/londatiga/android/QuickAction$OnActionItemClickListener;)V

    .line 354
    invoke-direct/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->loadAllImgViews()V

    .line 355
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_2

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_3

    .line 356
    :cond_2
    const v24, 0x7f09000e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setEnabled(Z)V

    .line 359
    :cond_3
    const-string v24, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 360
    .local v6, powerManager:Landroid/os/PowerManager;
    const/16 v24, 0x1a

    .line 361
    const-string v25, "GLGame"

    .line 360
    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lvn/esse/bodysymbol/HomeActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 363
    return-void

    .line 183
    .end local v4           #flipItem:Lnet/londatiga/android/ActionItem;
    .end local v5           #mirrorItem:Lnet/londatiga/android/ActionItem;
    .end local v6           #powerManager:Landroid/os/PowerManager;
    .end local v7           #r0Item:Lnet/londatiga/android/ActionItem;
    .end local v8           #r180Item:Lnet/londatiga/android/ActionItem;
    .end local v9           #r270Item:Lnet/londatiga/android/ActionItem;
    .end local v10           #r90Item:Lnet/londatiga/android/ActionItem;
    .end local v11           #res4x4Item:Lnet/londatiga/android/ActionItem;
    .end local v12           #res5x5Item:Lnet/londatiga/android/ActionItem;
    .end local v13           #res6x6Item:Lnet/londatiga/android/ActionItem;
    .end local v15           #rotate90Item:Lnet/londatiga/android/ActionItem;
    .end local v16           #rotateN90Item:Lnet/londatiga/android/ActionItem;
    .end local v17           #takePhotoItem:Lnet/londatiga/android/ActionItem;
    .end local v18           #w10second:Lnet/londatiga/android/ActionItem;
    .end local v19           #w15second:Lnet/londatiga/android/ActionItem;
    .end local v20           #w20second:Lnet/londatiga/android/ActionItem;
    .end local v21           #w5second:Lnet/londatiga/android/ActionItem;
    .end local v22           #zoomInItem:Lnet/londatiga/android/ActionItem;
    .end local v23           #zoomOutItem:Lnet/londatiga/android/ActionItem;
    :cond_4
    const-string v24, "Error"

    const-string v25, "SD Card does not exists!"

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lvn/esse/bodysymbol/HomeActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 197
    .restart local v11       #res4x4Item:Lnet/londatiga/android/ActionItem;
    .restart local v12       #res5x5Item:Lnet/londatiga/android/ActionItem;
    .restart local v13       #res6x6Item:Lnet/londatiga/android/ActionItem;
    :pswitch_0
    const v24, 0x7f090015

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageButton;

    .line 198
    const v25, 0x7f02000b

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1

    .line 203
    :pswitch_1
    const v24, 0x7f090015

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageButton;

    .line 204
    const v25, 0x7f02000c

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1

    .line 208
    :pswitch_2
    const v24, 0x7f090015

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageButton;

    .line 209
    const v25, 0x7f02000d

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1

    .line 195
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 40
    .parameter "id"

    .prologue
    .line 602
    packed-switch p1, :pswitch_data_0

    .line 900
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    :goto_1
    return-object v5

    .line 605
    :pswitch_0
    const/4 v5, 0x0

    .line 607
    .local v5, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    .line 609
    .local v21, mContext:Landroid/content/Context;
    const-string v36, "layout_inflater"

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .line 608
    check-cast v19, Landroid/view/LayoutInflater;

    .line 610
    .local v19, inflater:Landroid/view/LayoutInflater;
    const v37, 0x7f030004

    .line 611
    const v36, 0x7f090009

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/view/ViewGroup;

    .line 610
    move-object/from16 v0, v19

    move/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 614
    .local v20, layout:Landroid/view/View;
    const v36, 0x7f09000a

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 613
    check-cast v22, Landroid/widget/TableLayout;

    .line 615
    .local v22, main:Landroid/widget/TableLayout;
    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    .line 616
    const/high16 v37, 0x7f06

    .line 615
    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v30

    .line 617
    .local v30, st_chooser_symbols:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 618
    .local v7, assetManager:Landroid/content/res/AssetManager;
    const/16 v28, 0x0

    .line 619
    .local v28, row:Landroid/widget/TableRow;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v17

    move/from16 v1, v36

    if-lt v0, v1, :cond_0

    .line 675
    new-instance v6, Landroid/widget/ImageButton;

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 676
    .local v6, alphabet:Landroid/widget/ImageButton;
    const/16 v36, 0x5

    const/16 v37, 0x5

    const/16 v38, 0x5

    const/16 v39, 0x5

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 677
    const v36, 0x7f020002

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 678
    new-instance v36, Lvn/esse/bodysymbol/HomeActivity$11;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lvn/esse/bodysymbol/HomeActivity$11;-><init>(Lvn/esse/bodysymbol/HomeActivity;)V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    new-instance v28, Landroid/widget/TableRow;

    .end local v28           #row:Landroid/widget/TableRow;
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 689
    .restart local v28       #row:Landroid/widget/TableRow;
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 690
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 692
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 693
    .local v9, builder:Landroid/app/AlertDialog$Builder;
    const-string v36, "Choose symbol"

    move-object/from16 v0, v36

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 694
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 695
    const-string v36, "From character"

    new-instance v37, Lvn/esse/bodysymbol/HomeActivity$12;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lvn/esse/bodysymbol/HomeActivity$12;-><init>(Lvn/esse/bodysymbol/HomeActivity;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 705
    const-string v36, "Cancel"

    new-instance v37, Lvn/esse/bodysymbol/HomeActivity$13;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lvn/esse/bodysymbol/HomeActivity$13;-><init>(Lvn/esse/bodysymbol/HomeActivity;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 714
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 715
    goto/16 :goto_1

    .line 620
    .end local v6           #alphabet:Landroid/widget/ImageButton;
    .end local v9           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    rem-int/lit8 v36, v17, 0x3

    if-nez v36, :cond_1

    .line 621
    new-instance v28, Landroid/widget/TableRow;

    .end local v28           #row:Landroid/widget/TableRow;
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 622
    .restart local v28       #row:Landroid/widget/TableRow;
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 624
    :cond_1
    aget-object v29, v30, v17

    .line 627
    .local v29, sbm:Ljava/lang/String;
    :try_start_0
    new-instance v24, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 628
    .local v24, opts:Landroid/graphics/BitmapFactory$Options;
    const/16 v36, 0x4

    move/from16 v0, v36

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 629
    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "symbol/mdpi/"

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ".png"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 630
    .local v16, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->metrics:Landroid/util/DisplayMetrics;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v36, v0

    const/16 v37, 0x140

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_2

    .line 631
    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "symbol/hdpi/"

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ".png"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 633
    :cond_2
    new-instance v8, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 634
    .local v8, buf:Ljava/io/BufferedInputStream;
    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-static {v8, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 636
    .local v31, tmp_preview:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->metrics:Landroid/util/DisplayMetrics;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    const/high16 v37, 0x4080

    div-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v23, v0

    .line 637
    .local v23, maxPreviewW:I
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    move/from16 v0, v36

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    .line 639
    move/from16 v34, v23

    .line 640
    .local v34, x:I
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v36, v36, v37

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v35, v0

    .line 641
    .local v35, y:I
    const/16 v36, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 643
    .end local v34           #x:I
    .end local v35           #y:I
    :cond_3
    new-instance v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 644
    .local v18, imgButon:Landroid/widget/ImageButton;
    const/16 v36, 0x5

    const/16 v37, 0x5

    const/16 v38, 0x5

    const/16 v39, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 645
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 646
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 647
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    .line 648
    new-instance v36, Lvn/esse/bodysymbol/HomeActivity$10;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lvn/esse/bodysymbol/HomeActivity$10;-><init>(Lvn/esse/bodysymbol/HomeActivity;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v8           #buf:Ljava/io/BufferedInputStream;
    .end local v16           #filename:Ljava/lang/String;
    .end local v18           #imgButon:Landroid/widget/ImageButton;
    .end local v23           #maxPreviewW:I
    .end local v24           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v31           #tmp_preview:Landroid/graphics/Bitmap;
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 668
    :catch_0
    move-exception v15

    .line 670
    .local v15, e:Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 720
    .end local v5           #alertDialog:Landroid/app/AlertDialog;
    .end local v7           #assetManager:Landroid/content/res/AssetManager;
    .end local v15           #e:Ljava/io/IOException;
    .end local v17           #i:I
    .end local v19           #inflater:Landroid/view/LayoutInflater;
    .end local v20           #layout:Landroid/view/View;
    .end local v21           #mContext:Landroid/content/Context;
    .end local v22           #main:Landroid/widget/TableLayout;
    .end local v28           #row:Landroid/widget/TableRow;
    .end local v29           #sbm:Ljava/lang/String;
    .end local v30           #st_chooser_symbols:[Ljava/lang/String;
    :pswitch_1
    sget v36, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    sget v37, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    mul-int v36, v36, v37

    move/from16 v0, v36

    new-array v14, v0, [Landroid/graphics/Bitmap;

    .line 721
    .local v14, cs:[Landroid/graphics/Bitmap;
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_4
    array-length v0, v14

    move/from16 v36, v0

    move/from16 v0, v17

    move/from16 v1, v36

    if-lt v0, v1, :cond_4

    .line 725
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lvn/esse/bodysymbol/HomeActivity;->combineImages([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 727
    .local v25, out:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 729
    .restart local v9       #builder:Landroid/app/AlertDialog$Builder;
    const-string v36, "Save"

    new-instance v37, Lvn/esse/bodysymbol/HomeActivity$14;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lvn/esse/bodysymbol/HomeActivity$14;-><init>(Lvn/esse/bodysymbol/HomeActivity;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 739
    const-string v36, "Cancel"

    new-instance v37, Lvn/esse/bodysymbol/HomeActivity$15;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lvn/esse/bodysymbol/HomeActivity$15;-><init>(Lvn/esse/bodysymbol/HomeActivity;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 747
    const-string v36, "Share"

    new-instance v37, Lvn/esse/bodysymbol/HomeActivity$16;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lvn/esse/bodysymbol/HomeActivity$16;-><init>(Lvn/esse/bodysymbol/HomeActivity;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 756
    new-instance v27, Landroid/widget/ImageView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 762
    .local v27, resultImageView:Landroid/widget/ImageView;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 764
    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 765
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 766
    .restart local v5       #alertDialog:Landroid/app/AlertDialog;
    goto/16 :goto_1

    .line 722
    .end local v5           #alertDialog:Landroid/app/AlertDialog;
    .end local v9           #builder:Landroid/app/AlertDialog$Builder;
    .end local v25           #out:Landroid/graphics/Bitmap;
    .end local v27           #resultImageView:Landroid/widget/ImageView;
    :cond_4
    new-instance v36, Ljava/lang/StringBuilder;

    sget-object v37, Lvn/esse/bodysymbol/HomeActivity;->WORKING_DIR:Ljava/lang/String;

    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ".png"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v36

    aput-object v36, v14, v17

    .line 721
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4

    .line 772
    .end local v14           #cs:[Landroid/graphics/Bitmap;
    .end local v17           #i:I
    :pswitch_2
    :try_start_1
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 773
    .restart local v9       #builder:Landroid/app/AlertDialog$Builder;
    const-string v36, "About"

    move-object/from16 v0, v36

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 774
    const-string v36, "OK"

    new-instance v37, Lvn/esse/bodysymbol/HomeActivity$17;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lvn/esse/bodysymbol/HomeActivity$17;-><init>(Lvn/esse/bodysymbol/HomeActivity;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 783
    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    .line 785
    .restart local v21       #mContext:Landroid/content/Context;
    const-string v36, "layout_inflater"

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .line 784
    check-cast v19, Landroid/view/LayoutInflater;

    .line 786
    .restart local v19       #inflater:Landroid/view/LayoutInflater;
    const/high16 v37, 0x7f03

    .line 787
    const/high16 v36, 0x7f09

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/view/ViewGroup;

    .line 786
    move-object/from16 v0, v19

    move/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 789
    .restart local v20       #layout:Landroid/view/View;
    const v36, 0x7f090001

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .line 788
    check-cast v32, Landroid/widget/TextView;

    .line 790
    .local v32, version:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    .line 791
    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    .line 790
    invoke-virtual/range {v36 .. v38}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v26

    .line 792
    .local v26, pinfo:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 793
    .local v33, versionNumber:Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "Version "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 795
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 797
    .restart local v5       #alertDialog:Landroid/app/AlertDialog;
    goto/16 :goto_1

    .line 798
    .end local v5           #alertDialog:Landroid/app/AlertDialog;
    .end local v9           #builder:Landroid/app/AlertDialog$Builder;
    .end local v19           #inflater:Landroid/view/LayoutInflater;
    .end local v20           #layout:Landroid/view/View;
    .end local v21           #mContext:Landroid/content/Context;
    .end local v26           #pinfo:Landroid/content/pm/PackageInfo;
    .end local v32           #version:Landroid/widget/TextView;
    .end local v33           #versionNumber:Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 800
    .local v15, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 805
    .end local v15           #e:Ljava/lang/Exception;
    :pswitch_3
    :try_start_2
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 806
    .restart local v9       #builder:Landroid/app/AlertDialog$Builder;
    const-string v36, "Chooser character symbol"

    move-object/from16 v0, v36

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 807
    invoke-virtual/range {p0 .. p0}, Lvn/esse/bodysymbol/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    .line 809
    .restart local v21       #mContext:Landroid/content/Context;
    const-string v36, "layout_inflater"

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .line 808
    check-cast v19, Landroid/view/LayoutInflater;

    .line 810
    .restart local v19       #inflater:Landroid/view/LayoutInflater;
    const v37, 0x7f030003

    .line 811
    const v36, 0x7f090004

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/view/ViewGroup;

    .line 810
    move-object/from16 v0, v19

    move/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 813
    .restart local v20       #layout:Landroid/view/View;
    const v36, 0x7f090008

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 812
    check-cast v10, Landroid/widget/ImageView;

    .line 815
    .local v10, charPreview:Landroid/widget/ImageView;
    const v36, 0x7f090005

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 814
    check-cast v12, Landroid/widget/EditText;

    .line 817
    .local v12, charac:Landroid/widget/EditText;
    const v36, 0x7f090006

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 816
    check-cast v13, Landroid/widget/EditText;

    .line 819
    .local v13, charsize:Landroid/widget/EditText;
    const v36, 0x7f090007

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 818
    check-cast v11, Landroid/widget/Button;

    .line 821
    .local v11, charPreviewButton:Landroid/widget/Button;
    new-instance v36, Lvn/esse/bodysymbol/HomeActivity$18;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v12, v10}, Lvn/esse/bodysymbol/HomeActivity$18;-><init>(Lvn/esse/bodysymbol/HomeActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;)V

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 847
    const-string v36, "Create"

    new-instance v37, Lvn/esse/bodysymbol/HomeActivity$19;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v12}, Lvn/esse/bodysymbol/HomeActivity$19;-><init>(Lvn/esse/bodysymbol/HomeActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 880
    const-string v36, "Cancel"

    new-instance v37, Lvn/esse/bodysymbol/HomeActivity$20;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lvn/esse/bodysymbol/HomeActivity$20;-><init>(Lvn/esse/bodysymbol/HomeActivity;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 889
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 890
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 892
    .restart local v5       #alertDialog:Landroid/app/AlertDialog;
    goto/16 :goto_1

    .line 893
    .end local v5           #alertDialog:Landroid/app/AlertDialog;
    .end local v9           #builder:Landroid/app/AlertDialog$Builder;
    .end local v10           #charPreview:Landroid/widget/ImageView;
    .end local v11           #charPreviewButton:Landroid/widget/Button;
    .end local v12           #charac:Landroid/widget/EditText;
    .end local v13           #charsize:Landroid/widget/EditText;
    .end local v19           #inflater:Landroid/view/LayoutInflater;
    .end local v20           #layout:Landroid/view/View;
    .end local v21           #mContext:Landroid/content/Context;
    :catch_2
    move-exception v15

    .line 895
    .restart local v15       #e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1064
    invoke-virtual {p0}, Lvn/esse/bodysymbol/HomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1065
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1066
    const/4 v1, 0x1

    return v1
.end method

.method public onDelete(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 402
    sget-object v0, Lvn/esse/bodysymbol/HomeActivity;->BODY_SYMBOL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lvn/esse/bodysymbol/HomeActivity;->resetAllImage(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1343
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1344
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lvn/esse/bodysymbol/HomeActivity;->unbindDrawables(Landroid/view/View;)V

    .line 1345
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1347
    const/4 v0, 0x0

    iput-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    .line 1349
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1350
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1351
    return-void
.end method

.method public onItemClick(Lnet/londatiga/android/QuickAction;II)V
    .locals 3
    .parameter "source"
    .parameter "pos"
    .parameter "actionId"

    .prologue
    const v1, 0x7f090015

    .line 1106
    packed-switch p3, :pswitch_data_0

    .line 1126
    :goto_0
    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1127
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "RES"

    sget v2, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1128
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1129
    sget-object v1, Lvn/esse/bodysymbol/HomeActivity;->BODY_SYMBOL:Ljava/lang/String;

    invoke-direct {p0, v1}, Lvn/esse/bodysymbol/HomeActivity;->onResetPerform(Ljava/lang/String;)V

    .line 1131
    return-void

    .line 1108
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :pswitch_0
    invoke-virtual {p0, v1}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1109
    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1110
    const/4 v1, 0x4

    sput v1, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    goto :goto_0

    .line 1114
    :pswitch_1
    invoke-virtual {p0, v1}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1115
    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1116
    const/4 v1, 0x5

    sput v1, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    goto :goto_0

    .line 1119
    :pswitch_2
    invoke-virtual {p0, v1}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1120
    const v2, 0x7f02000d

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1121
    const/4 v1, 0x6

    sput v1, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    goto :goto_0

    .line 1106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOpenChooser(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 465
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lvn/esse/bodysymbol/HomeActivity;->showDialog(I)V

    .line 466
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 1072
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1099
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 1075
    :pswitch_0
    :try_start_0
    const-string v1, "market://search?q=esse.vn"

    .line 1076
    .local v1, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v0, i:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1078
    invoke-virtual {p0, v0}, Lvn/esse/bodysymbol/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1079
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1085
    :pswitch_1
    :try_start_1
    const-string v1, "http://ad.leadboltads.net/show_app_wall?section_id=982081133"

    .line 1086
    .restart local v1       #url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1087
    .restart local v0       #i:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1088
    invoke-virtual {p0, v0}, Lvn/esse/bodysymbol/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1089
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #url:Ljava/lang/String;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 1094
    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lvn/esse/bodysymbol/HomeActivity;->showDialog(I)V

    goto :goto_0

    .line 1072
    :pswitch_data_0
    .packed-switch 0x7f090022
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1395
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1396
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1398
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 1388
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1389
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1391
    return-void
.end method

.method public onRotateButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1207
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->rotateQuickAction:Lnet/londatiga/android/QuickAction;

    invoke-virtual {v0, p1}, Lnet/londatiga/android/QuickAction;->show(Landroid/view/View;)V

    .line 1208
    return-void
.end method

.method public onSelfTimerClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1138
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->selfTimerQuickAction:Lnet/londatiga/android/QuickAction;

    invoke-virtual {v0, p1}, Lnet/londatiga/android/QuickAction;->show(Landroid/view/View;)V

    .line 1139
    return-void
.end method

.method public onSwitchCamera(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1052
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1058
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    invoke-virtual {v0}, Lvn/esse/bodysymbol/Preview;->switchCamera()V

    goto :goto_0
.end method

.method public onTakePhoto(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 390
    :try_start_0
    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    iget-object v1, v1, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lvn/esse/bodysymbol/HomeActivity;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v3, p0, Lvn/esse/bodysymbol/HomeActivity;->rawCallback:Landroid/hardware/Camera$PictureCallback;

    .line 391
    iget-object v4, p0, Lvn/esse/bodysymbol/HomeActivity;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 390
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 392
    const v1, 0x7f090012

    invoke-virtual {p0, v1}, Lvn/esse/bodysymbol/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 396
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onZoom(Z)V
    .locals 4
    .parameter "zoomIn"

    .prologue
    .line 1018
    iget-object v3, p0, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    if-nez v3, :cond_1

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    :try_start_0
    iget-object v3, p0, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    iget-object v3, v3, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1024
    .local v1, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    .line 1025
    .local v2, zoom:I
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    if-ne v2, v3, :cond_2

    if-nez p1, :cond_0

    .line 1028
    :cond_2
    if-nez v2, :cond_3

    if-eqz p1, :cond_0

    .line 1032
    :cond_3
    if-eqz p1, :cond_5

    .line 1033
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1034
    add-int/lit8 v2, v2, 0x1

    .line 1042
    :cond_4
    :goto_1
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1043
    iget-object v3, p0, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    iget-object v3, v3, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1045
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    .end local v2           #zoom:I
    :catch_0
    move-exception v0

    .line 1047
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1038
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #params:Landroid/hardware/Camera$Parameters;
    .restart local v2       #zoom:I
    :cond_5
    if-lez v2, :cond_4

    .line 1039
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onZoomButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1013
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity;->zoomQuickAction:Lnet/londatiga/android/QuickAction;

    invoke-virtual {v0, p1}, Lnet/londatiga/android/QuickAction;->show(Landroid/view/View;)V

    .line 1015
    return-void
.end method

.method rotateItem(II)V
    .locals 11
    .parameter "index"
    .parameter "degrees"

    .prologue
    .line 1280
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lvn/esse/bodysymbol/HomeActivity;->WORKING_DIR:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1283
    .local v0, src:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1284
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v1, p2

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1285
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1286
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    .line 1285
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1289
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lvn/esse/bodysymbol/HomeActivity;->WORKING_DIR:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1290
    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1289
    invoke-direct {v8, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1291
    .local v8, output:Ljava/io/FileOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1292
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 1293
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1296
    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v2, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    div-int v9, v1, v2

    .line 1297
    .local v9, xItemSize:I
    int-to-float v1, v9

    iget-object v2, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    .line 1298
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 1297
    div-float/2addr v1, v2

    float-to-int v10, v1

    .line 1299
    .local v10, yItemSize:I
    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity;->imgView:[Landroid/widget/ImageButton;

    iget v2, p0, Lvn/esse/bodysymbol/HomeActivity;->currentIndex:I

    aget-object v1, v1, v2

    .line 1300
    const/4 v2, 0x0

    .line 1299
    invoke-static {v0, v9, v10, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1305
    .end local v0           #src:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v8           #output:Ljava/io/FileOutputStream;
    .end local v9           #xItemSize:I
    .end local v10           #yItemSize:I
    :goto_0
    return-void

    .line 1301
    :catch_0
    move-exception v7

    .line 1303
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "title"
    .parameter "msg"
    .parameter "finish"

    .prologue
    .line 1366
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1367
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1368
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1369
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1371
    const-string v2, "OK"

    new-instance v3, Lvn/esse/bodysymbol/HomeActivity$22;

    invoke-direct {v3, p0, p3}, Lvn/esse/bodysymbol/HomeActivity$22;-><init>(Lvn/esse/bodysymbol/HomeActivity;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1381
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1382
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1383
    return-void
.end method
