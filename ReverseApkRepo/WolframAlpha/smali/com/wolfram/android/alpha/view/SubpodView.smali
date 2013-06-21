.class public Lcom/wolfram/android/alpha/view/SubpodView;
.super Landroid/widget/RelativeLayout;
.source "SubpodView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field public bmp:Landroid/graphics/Bitmap;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private id:I

.field public image:Lcom/wolfram/alpha/WAImage;

.field public imageView:Landroid/widget/ImageView;

.field public imagemap:Lcom/wolfram/alpha/WAImageMap;

.field private imagemap_bottom_line:Landroid/widget/ImageView;

.field private imagemap_bottom_line_array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private imagemap_button:Landroid/widget/Button;

.field private imagemap_button_array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field final inflater:Lcom/wolfram/android/alpha/LayoutInflater_modified;

.field public isImageMapElementsVisible:Z

.field public isImageMapElementsVisible_OneClick:Z

.field public isWAImageMapFlag:Z

.field public mInput:Lcom/wolfram/alpha/WAMathematicaInput;

.field public original_configuration:I

.field public original_size:I

.field public podID:Ljava/lang/String;

.field public podTitle:Ljava/lang/String;

.field public position_in_pod:I

.field public scaleFactor:F

.field public subpod:Lcom/wolfram/alpha/WASubpod;

.field public subpodview:Lcom/wolfram/android/alpha/view/SubpodView;

.field public text:Lcom/wolfram/alpha/WAPlainText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "com.wolfram.android.alpha.view.SubpodView"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/view/SubpodView;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput v1, p0, Lcom/wolfram/android/alpha/view/SubpodView;->original_size:I

    .line 54
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/view/SubpodView;->isWAImageMapFlag:Z

    .line 55
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/view/SubpodView;->isImageMapElementsVisible:Z

    .line 56
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/view/SubpodView;->isImageMapElementsVisible_OneClick:Z

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap_button_array:Ljava/util/ArrayList;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap_bottom_line_array:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/SubpodView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->from(Landroid/content/Context;)Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v1

    iput-object v1, p0, Lcom/wolfram/android/alpha/view/SubpodView;->inflater:Lcom/wolfram/android/alpha/LayoutInflater_modified;

    .line 73
    iput-object p0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->subpodview:Lcom/wolfram/android/alpha/view/SubpodView;

    .line 76
    new-instance v2, Landroid/view/GestureDetector;

    move-object v0, p1

    check-cast v0, Landroid/view/GestureDetector$OnGestureListener;

    move-object v1, v0

    invoke-direct {v2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/wolfram/android/alpha/view/SubpodView;->gestureDetector:Landroid/view/GestureDetector;

    .line 77
    iget-object v1, p0, Lcom/wolfram/android/alpha/view/SubpodView;->gestureDetector:Landroid/view/GestureDetector;

    check-cast p1, Landroid/view/GestureDetector$OnDoubleTapListener;

    .end local p1
    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/wolfram/android/alpha/view/SubpodView;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->gestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private gettingElements()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 257
    iput v6, p0, Lcom/wolfram/android/alpha/view/SubpodView;->id:I

    .line 258
    iget-object v5, p0, Lcom/wolfram/android/alpha/view/SubpodView;->subpod:Lcom/wolfram/alpha/WASubpod;

    invoke-interface {v5}, Lcom/wolfram/alpha/WASubpod;->getContents()[Lcom/wolfram/alpha/visitor/Visitable;

    move-result-object v1

    .line 260
    .local v1, contents:[Ljava/lang/Object;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 261
    .local v4, obj:Ljava/lang/Object;
    instance-of v5, v4, Lcom/wolfram/alpha/WAImage;

    if-eqz v5, :cond_1

    .line 262
    check-cast v4, Lcom/wolfram/alpha/WAImage;

    .end local v4           #obj:Ljava/lang/Object;
    iput-object v4, p0, Lcom/wolfram/android/alpha/view/SubpodView;->image:Lcom/wolfram/alpha/WAImage;

    .line 260
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Lcom/wolfram/alpha/WAPlainText;

    if-eqz v5, :cond_2

    .line 267
    check-cast v4, Lcom/wolfram/alpha/WAPlainText;

    .end local v4           #obj:Ljava/lang/Object;
    iput-object v4, p0, Lcom/wolfram/android/alpha/view/SubpodView;->text:Lcom/wolfram/alpha/WAPlainText;

    goto :goto_1

    .line 270
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Lcom/wolfram/alpha/WAImageMap;

    if-eqz v5, :cond_3

    .line 272
    check-cast v4, Lcom/wolfram/alpha/WAImageMap;

    .end local v4           #obj:Ljava/lang/Object;
    iput-object v4, p0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    .line 274
    iget-object v5, p0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    invoke-interface {v5}, Lcom/wolfram/alpha/WAImageMap;->NumberImagMapElemsFound()I

    move-result v5

    if-eqz v5, :cond_0

    .line 275
    iput-boolean v6, p0, Lcom/wolfram/android/alpha/view/SubpodView;->isWAImageMapFlag:Z

    goto :goto_1

    .line 287
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Lcom/wolfram/alpha/WAMathematicaInput;

    if-eqz v5, :cond_0

    .line 288
    check-cast v4, Lcom/wolfram/alpha/WAMathematicaInput;

    .end local v4           #obj:Ljava/lang/Object;
    iput-object v4, p0, Lcom/wolfram/android/alpha/view/SubpodView;->mInput:Lcom/wolfram/alpha/WAMathematicaInput;

    goto :goto_1

    .line 291
    :cond_4
    return-void
.end method


# virtual methods
.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 0

    .prologue
    .line 303
    return-object p0
.end method

.method public isWAImageMap()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->isWAImageMapFlag:Z

    return v0
.end method

.method public populate(Lcom/wolfram/alpha/WASubpod;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .parameter "subpod"
    .parameter "podTitle"
    .parameter "podID"
    .parameter "position_in_pod"

    .prologue
    const/4 v10, 0x5

    const/4 v9, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 83
    iput-object p1, p0, Lcom/wolfram/android/alpha/view/SubpodView;->subpod:Lcom/wolfram/alpha/WASubpod;

    .line 84
    iput-object p3, p0, Lcom/wolfram/android/alpha/view/SubpodView;->podID:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/wolfram/android/alpha/view/SubpodView;->podTitle:Ljava/lang/String;

    .line 86
    iput p4, p0, Lcom/wolfram/android/alpha/view/SubpodView;->position_in_pod:I

    .line 91
    invoke-direct {p0}, Lcom/wolfram/android/alpha/view/SubpodView;->gettingElements()V

    .line 93
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->image:Lcom/wolfram/alpha/WAImage;

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->image:Lcom/wolfram/alpha/WAImage;

    invoke-interface {v0}, Lcom/wolfram/alpha/WAImage;->getFile()Ljava/io/File;

    move-result-object v6

    .line 96
    .local v6, imageFile:Ljava/io/File;
    if-eqz v6, :cond_2

    .line 97
    invoke-static {v6}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->createBitmapFromFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->bmp:Landroid/graphics/Bitmap;

    .line 98
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 99
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/SubpodView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->imageView:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->imageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/wolfram/android/alpha/view/SubpodView;->id:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 105
    const/4 v7, 0x0

    .line 106
    .local v7, image_Bitmap_resized:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isPodStateChange()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p4, :cond_0

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/wolfram/android/alpha/view/SubpodView;->bmp:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x7

    sub-int v2, v0, v2

    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v3, v0

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 112
    :cond_0
    if-nez v7, :cond_4

    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wolfram/android/alpha/view/SubpodView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    :goto_0
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    .local v8, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->id:I

    if-ne v0, v4, :cond_5

    .line 120
    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 123
    :goto_1
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5, v10, v5, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 124
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v8}, Lcom/wolfram/android/alpha/view/SubpodView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLongClickable(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/SubpodView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 127
    iget v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->id:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->id:I

    .line 129
    new-instance v0, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/SubpodView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/SubpodView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/SubpodView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/Resources_modified;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->original_configuration:I

    .line 131
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDimensions()[I

    move-result-object v1

    aget v1, v1, v5

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->original_size:I

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/wolfram/android/alpha/view/SubpodView$1;

    invoke-direct {v1, p0}, Lcom/wolfram/android/alpha/view/SubpodView$1;-><init>(Lcom/wolfram/android/alpha/view/SubpodView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    .end local v7           #image_Bitmap_resized:Landroid/graphics/Bitmap;
    .end local v8           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isPodStateChange()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->isWAImageMapFlag:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p4, :cond_3

    .line 148
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/wolfram/android/alpha/view/SubpodView;->populateImageMapButtons(Lcom/wolfram/alpha/WASubpod;Ljava/lang/String;Ljava/lang/String;ZF)V

    .line 151
    .end local v6           #imageFile:Ljava/io/File;
    :cond_3
    return-void

    .line 114
    .restart local v6       #imageFile:Ljava/io/File;
    .restart local v7       #image_Bitmap_resized:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 122
    .restart local v8       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    const/4 v0, 0x3

    iget v1, p0, Lcom/wolfram/android/alpha/view/SubpodView;->id:I

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1
.end method

.method public populateImageMapButtons(Lcom/wolfram/alpha/WASubpod;Ljava/lang/String;Ljava/lang/String;ZF)V
    .locals 27
    .parameter "subpod"
    .parameter "podTitle"
    .parameter "podID"
    .parameter "loadOneClick"
    .parameter "scaleFactor"

    .prologue
    .line 157
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/view/SubpodView;->subpod:Lcom/wolfram/alpha/WASubpod;

    .line 158
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/view/SubpodView;->podID:Ljava/lang/String;

    .line 159
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/view/SubpodView;->podTitle:Ljava/lang/String;

    .line 160
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wolfram/android/alpha/view/SubpodView;->scaleFactor:F

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/wolfram/android/alpha/view/SubpodView;->gettingElements()V

    .line 165
    const/4 v12, 0x0

    .line 166
    .end local p1
    .local v12, counter:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAImageMap;->getQueryURLs()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v12, v5, :cond_9

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAImageMap;->getRectClickables()[[I

    move-result-object v5

    aget-object v23, v5, v12

    .line 169
    .local v23, rectclick:[I
    const/4 v5, 0x1

    aget v5, v23, v5

    int-to-float v5, v5

    mul-float v5, v5, p5

    move v0, v5

    float-to-int v0, v0

    move/from16 v19, v0

    .line 170
    .local v19, lower_Ylimit:I
    const/4 v5, 0x3

    aget v5, v23, v5

    int-to-float v5, v5

    mul-float v5, v5, p5

    move v0, v5

    float-to-int v0, v0

    move/from16 v26, v0

    .line 171
    .local v26, upper_Ylimit:I
    const/4 v5, 0x0

    aget v5, v23, v5

    int-to-float v5, v5

    mul-float v5, v5, p5

    move v0, v5

    float-to-int v0, v0

    move/from16 v18, v0

    .line 172
    .local v18, lower_Xlimit:I
    const/4 v5, 0x2

    aget v5, v23, v5

    int-to-float v5, v5

    mul-float v5, v5, p5

    move v0, v5

    float-to-int v0, v0

    move/from16 v25, v0

    .line 174
    .local v25, upper_Xlimit:I
    const/high16 v5, 0x3f80

    cmpl-float v5, p5, v5

    if-eqz v5, :cond_1

    .line 175
    const/4 v5, 0x7

    sub-int v18, v18, v5

    .line 176
    const/4 v5, 0x7

    sub-int v25, v25, v5

    .line 179
    :cond_1
    move/from16 v17, v12

    .line 181
    .local v17, innercounter:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAImageMap;->getQueryURLs()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAImageMap;->getQueryURLs()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v6, v0

    invoke-interface {v6}, Lcom/wolfram/alpha/WAImageMap;->getQueryURLs()[Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v17, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAImageMap;->getRectClickables()[[I

    move-result-object v5

    add-int/lit8 v6, v17, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_2

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAImageMap;->getRectClickables()[[I

    move-result-object v5

    add-int/lit8 v6, v17, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget v25, v5, v6

    .line 183
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 186
    :cond_2
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/view/SubpodView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap_bottom_line:Landroid/widget/ImageView;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap_bottom_line:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f0a0038

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 190
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int v5, v25, v18

    sub-int v6, v26, v19

    move-object/from16 v0, v22

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 191
    .local v22, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v19

    move v3, v5

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->inflater:Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-object v5, v0

    const v6, 0x7f030048

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap_button:Landroid/widget/Button;

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAImageMap;->oneclicks()[Z

    move-result-object v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap_button:Landroid/widget/Button;

    move-object v13, v0

    new-instance v5, Lcom/wolfram/android/alpha/ImageMap_ButtonData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v6, v0

    invoke-interface {v6}, Lcom/wolfram/alpha/WAImageMap;->getQueryURLs()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v7, v0

    invoke-interface {v7}, Lcom/wolfram/alpha/WAImageMap;->getWebURLs()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v8, v0

    invoke-interface {v8}, Lcom/wolfram/alpha/WAImageMap;->getAssumptions()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v9, v0

    invoke-interface {v9}, Lcom/wolfram/alpha/WAImageMap;->getTitles()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v10, v0

    invoke-interface {v10}, Lcom/wolfram/alpha/WAImageMap;->oneclicks()[Z

    move-result-object v10

    aget-boolean v10, v10, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap_bottom_line:Landroid/widget/ImageView;

    move-object v11, v0

    invoke-direct/range {v5 .. v11}, Lcom/wolfram/android/alpha/ImageMap_ButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/ImageView;)V

    invoke-virtual {v13, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 194
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap_button_array:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap_button:Landroid/widget/Button;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    move/from16 v21, v12

    .line 196
    .local v21, oldCounter:I
    add-int/lit8 v12, v17, 0x1

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAImageMap;->oneclicks()[Z

    move-result-object v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAImageMap;->oneclicks()[Z

    move-result-object v5

    aget-boolean v5, v5, v21

    if-eqz v5, :cond_4

    if-eqz p4, :cond_4

    .line 198
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/android/alpha/view/SubpodView;->isImageMapElementsVisible_OneClick:Z

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap_button:Landroid/widget/Button;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/view/SubpodView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAImageMap;->oneclicks()[Z

    move-result-object v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAImageMap;->oneclicks()[Z

    move-result-object v5

    aget-boolean v5, v5, v21

    if-nez v5, :cond_5

    if-nez p4, :cond_5

    .line 202
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/android/alpha/view/SubpodView;->isImageMapElementsVisible:Z

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap_button:Landroid/widget/Button;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/view/SubpodView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    :cond_5
    const/16 v24, 0x2

    .local v24, thickness:I
    const/16 v20, 0x4

    .line 209
    .local v20, offset_Y:I
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v22           #params:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v5, v25, v18

    move-object/from16 v0, v22

    move v1, v5

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 210
    .restart local v22       #params:Landroid/widget/RelativeLayout$LayoutParams;
    add-int v5, v26, v20

    const/4 v6, 0x0

    add-int v7, v26, v20

    add-int v7, v7, v24

    move-object/from16 v0, v22

    move/from16 v1, v18

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAImageMap;->oneclicks()[Z

    move-result-object v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAImageMap;->oneclicks()[Z

    move-result-object v5

    aget-boolean v5, v5, v21

    if-eqz v5, :cond_6

    if-nez p4, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap:Lcom/wolfram/alpha/WAImageMap;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAImageMap;->oneclicks()[Z

    move-result-object v5

    aget-boolean v5, v5, v21

    if-nez v5, :cond_8

    if-nez p4, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap_bottom_line:Landroid/widget/ImageView;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/view/SubpodView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap_bottom_line_array:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap_bottom_line:Landroid/widget/ImageView;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isDrawRectImagemap()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    const/16 v24, 0x1

    .line 218
    new-instance v14, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/view/SubpodView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v14, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 219
    .local v14, imagemap_bottom_line_left:Landroid/widget/ImageView;
    const v5, 0x7f0a0038

    invoke-virtual {v14, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 220
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v22           #params:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v5, v26, v19

    move-object/from16 v0, v22

    move/from16 v1, v24

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 221
    .restart local v22       #params:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v5, v18, v24

    move-object/from16 v0, v22

    move v1, v5

    move/from16 v2, v19

    move/from16 v3, v18

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 222
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/view/SubpodView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    new-instance v15, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/view/SubpodView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v15, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 225
    .local v15, imagemap_bottom_line_right:Landroid/widget/ImageView;
    const v5, 0x7f0a0038

    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 226
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v22           #params:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v5, v26, v19

    move-object/from16 v0, v22

    move/from16 v1, v24

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 227
    .restart local v22       #params:Landroid/widget/RelativeLayout$LayoutParams;
    add-int v5, v25, v24

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v19

    move v3, v5

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 228
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/view/SubpodView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    new-instance v16, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/view/SubpodView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 231
    .local v16, imagemap_bottom_line_top:Landroid/widget/ImageView;
    const v5, 0x7f0a0038

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 232
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v22           #params:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v5, v25, v18

    move-object/from16 v0, v22

    move v1, v5

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 233
    .restart local v22       #params:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v5, v19, v24

    const/4 v6, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v18

    move v2, v5

    move v3, v6

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/view/SubpodView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    new-instance v13, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/view/SubpodView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v13, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 237
    .local v13, imagemap_bottom_line_bottom:Landroid/widget/ImageView;
    const v5, 0x7f0a0038

    invoke-virtual {v13, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 238
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v22           #params:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v5, v25, v18

    move-object/from16 v0, v22

    move v1, v5

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 239
    .restart local v22       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x0

    add-int v6, v26, v24

    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v26

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 240
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/view/SubpodView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 247
    .end local v13           #imagemap_bottom_line_bottom:Landroid/widget/ImageView;
    .end local v14           #imagemap_bottom_line_left:Landroid/widget/ImageView;
    .end local v15           #imagemap_bottom_line_right:Landroid/widget/ImageView;
    .end local v16           #imagemap_bottom_line_top:Landroid/widget/ImageView;
    .end local v17           #innercounter:I
    .end local v18           #lower_Xlimit:I
    .end local v19           #lower_Ylimit:I
    .end local v20           #offset_Y:I
    .end local v21           #oldCounter:I
    .end local v22           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v23           #rectclick:[I
    .end local v24           #thickness:I
    .end local v25           #upper_Xlimit:I
    .end local v26           #upper_Ylimit:I
    :cond_9
    return-void
.end method

.method public removeImageMapElements()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 250
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap_button_array:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .local v2, imagemap_button:Landroid/widget/Button;
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 251
    .end local v2           #imagemap_button:Landroid/widget/Button;
    :cond_0
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/SubpodView;->imagemap_bottom_line_array:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .local v1, imagemap_bottom_line:Landroid/widget/ImageView;
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 252
    .end local v1           #imagemap_bottom_line:Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method public removeSubpodView()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/SubpodView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/SubpodView;->removeView(Landroid/view/View;)V

    .line 295
    return-void
.end method
