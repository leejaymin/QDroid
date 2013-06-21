.class public Lorg/appcelerator/titanium/util/TiUIHelper;
.super Ljava/lang/Object;
.source "TiUIHelper.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final FACE_DOWN:I = 0x6

.field public static final FACE_UP:I = 0x5

.field public static final LANDSCAPE_LEFT:I = 0x3

.field public static final LANDSCAPE_RIGHT:I = 0x4

.field private static final LCAT:Ljava/lang/String; = "TiUIHelper"

.field public static final PORTRAIT:I = 0x1

.field public static final SIZED_VALUE:Ljava/util/regex/Pattern; = null

.field public static final UNKNOWN:I = 0x7

.field public static final UPSIDE_PORTRAIT:I = 0x2

.field private static overridePendingTransition:Ljava/lang/reflect/Method;

.field private static resourceImageKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiUIHelper;->DBG:Z

    .line 75
    const-string v0, "([0-9]*\\.?[0-9]+)\\W*(px|dp|dip|sp|sip|mm|pt|in)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiUIHelper;->SIZED_VALUE:Ljava/util/regex/Pattern;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiUIHelper;->resourceImageKeys:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildBackgroundDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 7
    .parameter "tiContext"
    .parameter "image"
    .parameter "color"
    .parameter "selectedImage"
    .parameter "selectedColor"
    .parameter "disabledImage"
    .parameter "disabledColor"
    .parameter "focusedImage"
    .parameter "focusedColor"

    .prologue
    .line 345
    const/4 v5, 0x0

    .line 347
    .local v5, sld:Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x0

    .line 348
    .local v2, bgDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 349
    .local v4, bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 350
    .local v3, bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 352
    .local v1, bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 354
    .local v0, appContext:Landroid/content/Context;
    new-instance v6, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-direct {v6, v0}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 356
    .local v6, tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    if-eqz p1, :cond_5

    .line 357
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {v6, p0, p1, v0, v2}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    .end local v0           #appContext:Landroid/content/Context;
    .end local v2           #bgDrawable:Landroid/graphics/drawable/Drawable;
    move-result-object v0

    .line 362
    .local v0, bgDrawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz p3, :cond_6

    .line 363
    const/4 p4, 0x0

    const/4 v2, 0x1

    invoke-virtual {v6, p0, p3, p4, v2}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    .end local p4
    move-result-object p3

    .end local v4           #bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    .local p3, bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    move-object p4, p3

    .line 374
    .end local p3           #bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    .local p4, bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz p7, :cond_9

    .line 375
    const/4 p3, 0x0

    const/4 p8, 0x1

    invoke-virtual {v6, p0, p7, p3, p8}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    .end local p8
    move-result-object p3

    .line 386
    .end local v3           #bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    .end local p7
    .local p3, bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    :goto_2
    if-eqz p5, :cond_c

    .line 387
    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {v6, p0, p5, p1, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    .end local p1
    .end local p2
    move-result-object p0

    .line 398
    .end local v1           #bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    .end local p5
    .local p0, bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    :goto_3
    if-nez v0, :cond_0

    if-nez p4, :cond_0

    if-nez p3, :cond_0

    if-eqz p0, :cond_f

    .line 399
    :cond_0
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 401
    .end local v5           #sld:Landroid/graphics/drawable/StateListDrawable;
    .local p1, sld:Landroid/graphics/drawable/StateListDrawable;
    if-eqz p0, :cond_1

    .line 402
    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 p5, 0x0

    const p6, -0x101009e

    aput p6, p2, p5

    .line 405
    .end local p6
    .local p2, stateSet:[I
    invoke-virtual {p1, p2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 408
    .end local p2           #stateSet:[I
    :cond_1
    if-eqz p3, :cond_2

    .line 409
    const/4 p0, 0x3

    new-array p0, p0, [I

    .end local p0           #bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    fill-array-data p0, :array_0

    .line 414
    .local p0, ss:[I
    invoke-virtual {p1, p0, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 417
    .end local p0           #ss:[I
    :cond_2
    if-eqz p4, :cond_3

    .line 418
    const/4 p0, 0x3

    new-array p0, p0, [I

    fill-array-data p0, :array_1

    .line 423
    .restart local p0       #ss:[I
    invoke-virtual {p1, p0, p4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 426
    const/4 p0, 0x4

    new-array p0, p0, [I

    .end local p0           #ss:[I
    fill-array-data p0, :array_2

    .line 432
    .local p0, ss1:[I
    invoke-virtual {p1, p0, p4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 438
    .end local p0           #ss1:[I
    :cond_3
    if-eqz v0, :cond_4

    .line 439
    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_3

    .line 443
    .restart local p0       #ss1:[I
    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 444
    const/4 p0, 0x1

    new-array p0, p0, [I

    .end local p0           #ss1:[I
    const/4 p2, 0x0

    const p3, 0x101009e

    aput p3, p0, p2

    .line 445
    .end local p3           #bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    .local p0, ss2:[I
    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .end local p0           #ss2:[I
    :cond_4
    move-object p0, p1

    .line 449
    .end local p1           #sld:Landroid/graphics/drawable/StateListDrawable;
    .local p0, sld:Landroid/graphics/drawable/StateListDrawable;
    :goto_4
    return-object p0

    .line 358
    .local v0, appContext:Landroid/content/Context;
    .restart local v1       #bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #bgDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v5       #sld:Landroid/graphics/drawable/StateListDrawable;
    .local p0, tiContext:Lorg/appcelerator/titanium/TiContext;
    .local p1, image:Ljava/lang/String;
    .local p2, color:Ljava/lang/String;
    .local p3, selectedImage:Ljava/lang/String;
    .local p4, selectedColor:Ljava/lang/String;
    .restart local p5
    .restart local p6
    .restart local p7
    .restart local p8
    :cond_5
    if-eqz p2, :cond_13

    .line 359
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0           #appContext:Landroid/content/Context;
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v2

    .end local v2           #bgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .local v0, bgDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 364
    :cond_6
    if-eqz p4, :cond_7

    .line 365
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    .end local p3           #selectedImage:Ljava/lang/String;
    invoke-static {p4}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result p4

    .end local p4           #selectedColor:Ljava/lang/String;
    invoke-direct {p3, p4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .end local v4           #bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    .local p3, bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    move-object p4, p3

    .end local p3           #bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    .local p4, bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 367
    .restart local v4       #bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    .local p3, selectedImage:Ljava/lang/String;
    .local p4, selectedColor:Ljava/lang/String;
    :cond_7
    if-eqz p1, :cond_8

    .line 368
    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-virtual {v6, p0, p1, p3, p4}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    .end local p3           #selectedImage:Ljava/lang/String;
    .end local p4           #selectedColor:Ljava/lang/String;
    move-result-object p3

    .end local v4           #bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    .local p3, bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    move-object p4, p3

    .end local p3           #bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    .local p4, bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 369
    .restart local v4       #bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    .local p3, selectedImage:Ljava/lang/String;
    .local p4, selectedColor:Ljava/lang/String;
    :cond_8
    if-eqz p2, :cond_12

    .line 370
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    .end local p3           #selectedImage:Ljava/lang/String;
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result p4

    .end local p4           #selectedColor:Ljava/lang/String;
    invoke-direct {p3, p4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .end local v4           #bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    .local p3, bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    move-object p4, p3

    .end local p3           #bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    .local p4, bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 376
    :cond_9
    if-eqz p8, :cond_a

    .line 377
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p8}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result p7

    .end local p7
    invoke-direct {p3, p7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .end local v3           #bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    .local p3, bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 379
    .end local p3           #bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    .restart local p7
    :cond_a
    if-eqz p1, :cond_b

    .line 380
    const/4 p3, 0x0

    const/4 p7, 0x1

    invoke-virtual {v6, p0, p1, p3, p7}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    .end local p7
    move-result-object p3

    .end local v3           #bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    .restart local p3       #bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 381
    .end local p3           #bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    .restart local p7
    :cond_b
    if-eqz p2, :cond_11

    .line 382
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result p7

    .end local p7
    invoke-direct {p3, p7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .end local v3           #bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    .restart local p3       #bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 388
    .end local p8
    :cond_c
    if-eqz p6, :cond_d

    .line 389
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    .end local p0           #tiContext:Lorg/appcelerator/titanium/TiContext;
    invoke-static {p6}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result p1

    .end local p1           #image:Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .end local v1           #bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    .local p0, bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 391
    .restart local v1       #bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    .local p0, tiContext:Lorg/appcelerator/titanium/TiContext;
    .restart local p1       #image:Ljava/lang/String;
    :cond_d
    if-eqz p1, :cond_e

    .line 392
    const/4 p2, 0x0

    const/4 p5, 0x1

    invoke-virtual {v6, p0, p1, p2, p5}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    .end local p2           #color:Ljava/lang/String;
    .end local p5
    move-result-object p0

    .end local v1           #bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    .local p0, bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 393
    .restart local v1       #bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    .local p0, tiContext:Lorg/appcelerator/titanium/TiContext;
    .restart local p2       #color:Ljava/lang/String;
    .restart local p5
    :cond_e
    if-eqz p2, :cond_10

    .line 394
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    .end local p0           #tiContext:Lorg/appcelerator/titanium/TiContext;
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result p1

    .end local p1           #image:Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .end local v1           #bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    .local p0, bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .end local p2           #color:Ljava/lang/String;
    .end local p5
    :cond_f
    move-object p0, v5

    .end local v5           #sld:Landroid/graphics/drawable/StateListDrawable;
    .local p0, sld:Landroid/graphics/drawable/StateListDrawable;
    goto :goto_4

    .restart local v1       #bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v5       #sld:Landroid/graphics/drawable/StateListDrawable;
    .local p0, tiContext:Lorg/appcelerator/titanium/TiContext;
    .restart local p1       #image:Ljava/lang/String;
    .restart local p2       #color:Ljava/lang/String;
    .restart local p5
    :cond_10
    move-object p0, v1

    .end local v1           #bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    .local p0, bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .end local p3           #bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    .local p0, tiContext:Lorg/appcelerator/titanium/TiContext;
    .restart local p7
    .restart local p8
    :cond_11
    move-object p3, v3

    .end local v3           #bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    .restart local p3       #bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .restart local v3       #bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    .local p3, selectedImage:Ljava/lang/String;
    .local p4, selectedColor:Ljava/lang/String;
    :cond_12
    move-object p4, v4

    .end local v4           #bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    .local p4, bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .local v0, appContext:Landroid/content/Context;
    .restart local v2       #bgDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    .local p4, selectedColor:Ljava/lang/String;
    :cond_13
    move-object v0, v2

    .end local v2           #bgDrawable:Landroid/graphics/drawable/Drawable;
    .local v0, bgDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 409
    :array_0
    .array-data 0x4
        0x9ct 0x0t 0x1t 0x1t
        0x9dt 0x0t 0x1t 0x1t
        0x9et 0x0t 0x1t 0x1t
    .end array-data

    .line 418
    :array_1
    .array-data 0x4
        0x9dt 0x0t 0x1t 0x1t
        0x9et 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 426
    :array_2
    .array-data 0x4
        0x9ct 0x0t 0x1t 0x1t
        0x9dt 0x0t 0x1t 0x1t
        0x9et 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 439
    :array_3
    .array-data 0x4
        0x9dt 0x0t 0x1t 0x1t
        0x9et 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public static convertToAndroidOrientation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 752
    packed-switch p0, :pswitch_data_0

    .line 760
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 755
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 758
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToTiOrientation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 764
    packed-switch p0, :pswitch_data_0

    .line 773
    const/4 v0, 0x7

    :goto_0
    return v0

    .line 768
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 771
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 764
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToTiOrientation(II)I
    .locals 1
    .parameter "orientation"
    .parameter "degrees"

    .prologue
    .line 777
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 778
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->convertToTiOrientation(I)I

    move-result v0

    .line 791
    :goto_0
    return v0

    .line 780
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 791
    const/4 v0, 0x7

    goto :goto_0

    .line 783
    :pswitch_0
    const/16 v0, 0x10e

    if-lt p1, v0, :cond_1

    const/16 v0, 0x168

    if-gt p1, v0, :cond_1

    .line 784
    const/4 v0, 0x3

    goto :goto_0

    .line 786
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 789
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 780
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "stream"

    .prologue
    const/4 v4, 0x1

    .line 548
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 549
    .local v3, pad:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 550
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 551
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 553
    const/4 v0, 0x0

    .line 555
    .local v0, b:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v4, v5, p0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 559
    :goto_0
    return-object v0

    .line 556
    :catch_0
    move-exception v1

    .line 557
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "TiUIHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load bitmap. Not enough memory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createColorFilterForOpacity(F)Landroid/graphics/ColorFilter;
    .locals 4
    .parameter "opacity"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 691
    const/16 v1, 0x14

    new-array v0, v1, [F

    const/4 v1, 0x0

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v2, v0, v1

    const/16 v1, 0x12

    aput p0, v0, v1

    const/16 v1, 0x13

    aput v2, v0, v1

    .line 698
    .local v0, matrix:[F
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1
.end method

.method public static createDictForImage(Lorg/appcelerator/titanium/TiContext;II[B)Lorg/appcelerator/kroll/KrollDict;
    .locals 8
    .parameter "context"
    .parameter "width"
    .parameter "height"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const-string v7, "y"

    const-string v6, "x"

    const-string v5, "width"

    const-string v4, "height"

    .line 454
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 455
    .local v1, d:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "x"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string v2, "y"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v2, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v2, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 461
    .local v0, cropRect:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "x"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string v2, "y"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string v2, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v2, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string v2, "cropRect"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string v2, "media"

    const-string v3, "image/png"

    invoke-static {p0, p3, v3}, Lorg/appcelerator/titanium/TiBlob;->blobFromData(Lorg/appcelerator/titanium/TiContext;[BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    return-object v1
.end method

.method public static createDoNothingListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lorg/appcelerator/titanium/util/TiUIHelper$1;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiUIHelper$1;-><init>()V

    return-object v0
.end method

.method public static createFinishListener(Landroid/app/Activity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "me"

    .prologue
    .line 97
    new-instance v0, Lorg/appcelerator/titanium/util/TiUIHelper$3;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/util/TiUIHelper$3;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static createKillListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lorg/appcelerator/titanium/util/TiUIHelper$2;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiUIHelper$2;-><init>()V

    return-object v0
.end method

.method public static doKillOrContinueDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "positiveListener"
    .parameter "negativeListener"

    .prologue
    .line 105
    if-nez p3, :cond_0

    .line 106
    invoke-static {}, Lorg/appcelerator/titanium/util/TiUIHelper;->createDoNothingListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p3

    .line 108
    :cond_0
    if-nez p4, :cond_1

    .line 109
    invoke-static {}, Lorg/appcelerator/titanium/util/TiUIHelper;->createKillListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p4

    .line 112
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Continue"

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Kill"

    invoke-virtual {v0, v1, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 116
    return-void
.end method

.method public static doOkDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "listener"

    .prologue
    .line 119
    if-nez p3, :cond_0

    .line 120
    new-instance p3, Lorg/appcelerator/titanium/util/TiUIHelper$4;

    .end local p3
    invoke-direct {p3}, Lorg/appcelerator/titanium/util/TiUIHelper$4;-><init>()V

    .line 127
    .restart local p3
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 130
    return-void
.end method

.method public static getDefaultFontSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 254
    const-string v0, "15.0px"

    .line 255
    .local v0, size:Ljava/lang/String;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 256
    .local v1, tv:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "px"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    const/4 v1, 0x0

    .line 261
    :cond_0
    return-object v0
.end method

.method public static getDefaultFontWeight(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 265
    const-string v0, "normal"

    .line 266
    .local v0, style:Ljava/lang/String;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 267
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 269
    .local v1, tf:Landroid/graphics/Typeface;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Typeface;->isBold()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    const-string v0, "bold"

    .line 274
    .end local v1           #tf:Landroid/graphics/Typeface;
    :cond_0
    return-object v0
.end method

.method public static getImageFromDict(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/TiBlob;
    .locals 3
    .parameter "dict"

    .prologue
    const-string v2, "media"

    .line 473
    if-eqz p0, :cond_0

    .line 474
    const-string v1, "media"

    invoke-virtual {p0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    const-string v1, "media"

    invoke-virtual {p0, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 476
    .local v0, media:Ljava/lang/Object;
    instance-of v1, v0, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v1, :cond_0

    .line 477
    check-cast v0, Lorg/appcelerator/titanium/TiBlob;

    .end local v0           #media:Ljava/lang/Object;
    move-object v1, v0

    .line 481
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRawDIPSize(FLandroid/content/Context;)F
    .locals 1
    .parameter "size"
    .parameter "context"

    .prologue
    .line 203
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawSize(IFLandroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static getRawSize(IFLandroid/content/Context;)F
    .locals 2
    .parameter "unit"
    .parameter "size"
    .parameter "context"

    .prologue
    .line 194
    if-eqz p2, :cond_0

    .line 195
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 199
    .local v0, r:Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1

    .line 197
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .restart local v0       #r:Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public static getRawSize(Ljava/lang/String;Landroid/content/Context;)F
    .locals 2
    .parameter "size"
    .parameter "context"

    .prologue
    .line 207
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSizeUnits(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSize(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0, v1, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawSize(IFLandroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static getResourceBitmap(Lorg/appcelerator/titanium/TiContext;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "res_id"

    .prologue
    const/4 v3, 0x1

    .line 634
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 635
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 636
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 638
    const/4 v0, 0x0

    .line 640
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 644
    :goto_0
    return-object v0

    .line 641
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 642
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "TiUIHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load bitmap. Not enough memory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getResourceBitmap(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "url"

    .prologue
    .line 624
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 625
    .local v0, id:I
    if-nez v0, :cond_0

    .line 626
    const/4 v1, 0x0

    .line 628
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceBitmap(Lorg/appcelerator/titanium/TiContext;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getResourceDrawable(Lorg/appcelerator/titanium/TiContext;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "res_id"

    .prologue
    .line 659
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getResourceDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "url"

    .prologue
    .line 649
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 650
    .local v0, id:I
    if-nez v0, :cond_0

    .line 651
    const/4 v1, 0x0

    .line 654
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(Lorg/appcelerator/titanium/TiContext;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getResourceId(Ljava/lang/String;)I
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 606
    const-string v2, "Resources/images/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 618
    :goto_0
    return v2

    .line 610
    :cond_0
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceKeyForImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, key:Ljava/lang/String;
    if-nez v1, :cond_1

    move v2, v4

    .line 612
    goto :goto_0

    .line 616
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 617
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    move v2, v4

    .line 618
    goto :goto_0
.end method

.method private static getResourceKeyForImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "url"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const-string v12, "_"

    const-string v9, ".9.png"

    .line 564
    sget-object v8, Lorg/appcelerator/titanium/util/TiUIHelper;->resourceImageKeys:Ljava/util/Map;

    invoke-interface {v8, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 565
    sget-object v8, Lorg/appcelerator/titanium/util/TiUIHelper;->resourceImageKeys:Ljava/util/Map;

    invoke-interface {v8, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v8, p0

    .line 601
    :goto_0
    return-object v8

    .line 568
    .restart local p0
    :cond_0
    const-string v8, "^.*/Resources/images/(.*$)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 569
    .local v4, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 570
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v11

    .line 571
    goto :goto_0

    .line 574
    :cond_1
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, chopped:Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v8, v11

    .line 576
    goto :goto_0

    .line 579
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 580
    move-object v2, v0

    .line 581
    .local v2, forHash:Ljava/lang/String;
    const-string v8, ".9.png"

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 582
    const-string v8, ".9.png"

    const-string v8, ".png"

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 584
    :cond_3
    move-object v7, v0

    .line 586
    .local v7, withoutExtension:Ljava/lang/String;
    const-string v8, "^.*\\..*$"

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 587
    const-string v8, ".9.png"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 588
    const-string v8, ".9.png"

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 594
    :cond_4
    :goto_1
    const-string v8, "[^a-z0-9_]"

    const-string v9, "_"

    invoke-virtual {v7, v8, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, cleanedWithoutExtension:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x64

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 596
    .local v5, result:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x50

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    const-string v8, "_"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-static {v2}, Lorg/apache/commons/codec/digest/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 600
    .local v6, sResult:Ljava/lang/String;
    sget-object v8, Lorg/appcelerator/titanium/util/TiUIHelper;->resourceImageKeys:Ljava/util/Map;

    invoke-interface {v8, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v6

    .line 601
    goto/16 :goto_0

    .line 590
    .end local v1           #cleanedWithoutExtension:Ljava/lang/String;
    .end local v5           #result:Ljava/lang/StringBuilder;
    .end local v6           #sResult:Ljava/lang/String;
    :cond_5
    const/16 v8, 0x2e

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static getSize(Ljava/lang/String;)F
    .locals 4
    .parameter "size"

    .prologue
    .line 181
    const/high16 v1, 0x4170

    .line 182
    .local v1, value:F
    if-eqz p0, :cond_0

    .line 183
    sget-object v2, Lorg/appcelerator/titanium/util/TiUIHelper;->SIZED_VALUE:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 184
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 189
    .end local v0           #m:Ljava/util/regex/Matcher;
    :cond_0
    return v1
.end method

.method public static getSizeUnits(Ljava/lang/String;)I
    .locals 7
    .parameter "size"

    .prologue
    const/4 v5, 0x2

    const-string v6, "pt"

    .line 144
    const/4 v2, 0x0

    .line 146
    .local v2, units:I
    if-eqz p0, :cond_0

    .line 147
    sget-object v3, Lorg/appcelerator/titanium/util/TiUIHelper;->SIZED_VALUE:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 148
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 150
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, unit:Ljava/lang/String;
    const-string v3, "px"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    const/4 v2, 0x0

    .line 177
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #unit:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 153
    .restart local v0       #m:Ljava/util/regex/Matcher;
    .restart local v1       #unit:Ljava/lang/String;
    :cond_1
    const-string v3, "pt"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    const/4 v2, 0x3

    goto :goto_0

    .line 155
    :cond_2
    const-string v3, "dp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "dip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 156
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 157
    :cond_4
    const-string v3, "sp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "sip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 158
    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    .line 159
    :cond_6
    const-string v3, "pt"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 160
    const/4 v2, 0x3

    goto :goto_0

    .line 161
    :cond_7
    const-string v3, "mm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 162
    const/4 v2, 0x5

    goto :goto_0

    .line 163
    :cond_8
    const-string v3, "in"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 164
    const/4 v2, 0x4

    goto :goto_0

    .line 166
    :cond_9
    sget-boolean v3, Lorg/appcelerator/titanium/util/TiUIHelper;->DBG:Z

    if-eqz v3, :cond_0

    .line 167
    if-eqz v1, :cond_0

    .line 168
    const-string v3, "TiUIHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static overridePendingTransition(Landroid/app/Activity;)V
    .locals 7
    .parameter "activity"

    .prologue
    const-string v6, "TiUIHelper"

    .line 665
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    sget-object v1, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 671
    :try_start_0
    const-class v1, Landroid/app/Activity;

    const-string v2, "overridePendingTransition"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 678
    :cond_2
    :goto_1
    sget-object v1, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 680
    :try_start_1
    sget-object v1, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 681
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 682
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "TiUIHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called incorrectly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 672
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 673
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v1, "TiUIHelper"

    const-string v1, "Activity.overridePendingTransition() not found"

    invoke-static {v6, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 683
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 684
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "TiUIHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static requestSoftInputChange(Lorg/appcelerator/kroll/KrollProxy;Landroid/view/View;)V
    .locals 4
    .parameter "proxy"
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const-string v3, "softKeyboardOnFocus"

    .line 715
    const/4 v0, 0x0

    .line 717
    .local v0, focusState:I
    const-string v1, "softKeyboardOnFocus"

    invoke-virtual {p0, v3}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    const-string v1, "softKeyboardOnFocus"

    invoke-virtual {p0, v3}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 721
    :cond_0
    if-lez v0, :cond_1

    .line 722
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 723
    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    .line 730
    :cond_1
    :goto_0
    return-void

    .line 724
    :cond_2
    if-ne v0, v2, :cond_3

    .line 725
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    goto :goto_0

    .line 727
    :cond_3
    const-string v1, "TiUIHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown onFocus state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tv"
    .parameter "textAlign"
    .parameter "verticalAlign"

    .prologue
    const-string v3, "TiUIHelper"

    .line 279
    const/4 v0, 0x0

    .line 281
    .local v0, gravity:I
    if-eqz p1, :cond_5

    .line 282
    const-string v1, "left"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    or-int/lit8 v0, v0, 0x3

    .line 304
    :cond_0
    :goto_0
    if-eqz p2, :cond_a

    .line 305
    const-string v1, "top"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 306
    or-int/lit8 v0, v0, 0x30

    .line 326
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 327
    return-void

    .line 284
    :cond_2
    const-string v1, "center"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_3
    const-string v1, "right"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 287
    or-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 289
    :cond_4
    const-string v1, "TiUIHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported horizontal alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    :cond_5
    sget-boolean v1, Lorg/appcelerator/titanium/util/TiUIHelper;->DBG:Z

    if-eqz v1, :cond_6

    .line 295
    const-string v1, "TiUIHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No alignment set - old horiz align was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    .line 307
    :cond_7
    const-string v1, "middle"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 308
    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    .line 309
    :cond_8
    const-string v1, "bottom"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 310
    or-int/lit8 v0, v0, 0x50

    goto :goto_1

    .line 312
    :cond_9
    const-string v1, "TiUIHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported vertical alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 317
    :cond_a
    sget-boolean v1, Lorg/appcelerator/titanium/util/TiUIHelper;->DBG:Z

    if-eqz v1, :cond_b

    .line 318
    const-string v1, "TiUIHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No alignment set - old vert align was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    if-eqz v1, :cond_1

    .line 322
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    goto/16 :goto_1
.end method

.method public static setDrawableOpacity(Landroid/graphics/drawable/Drawable;F)V
    .locals 1
    .parameter "drawable"
    .parameter "opacity"

    .prologue
    .line 702
    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v0, :cond_2

    .line 703
    :cond_0
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 707
    :cond_1
    :goto_0
    return-void

    .line 704
    :cond_2
    if-eqz p0, :cond_1

    .line 705
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->createColorFilterForOpacity(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public static setPaintOpacity(Landroid/graphics/Paint;F)V
    .locals 1
    .parameter "paint"
    .parameter "opacity"

    .prologue
    .line 710
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->createColorFilterForOpacity(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 711
    return-void
.end method

.method public static setTextViewDIPPadding(Landroid/widget/TextView;II)V
    .locals 4
    .parameter "textView"
    .parameter "horizontalPadding"
    .parameter "verticalPadding"

    .prologue
    .line 330
    int-to-float v2, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawDIPSize(FLandroid/content/Context;)F

    move-result v2

    float-to-int v0, v2

    .line 331
    .local v0, rawHPadding:I
    int-to-float v2, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawDIPSize(FLandroid/content/Context;)F

    move-result v2

    float-to-int v1, v2

    .line 332
    .local v1, rawVPadding:I
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 333
    return-void
.end method

.method public static showSoftKeyboard(Landroid/view/View;Z)V
    .locals 7
    .parameter "view"
    .parameter "show"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 734
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 736
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    .line 737
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_3

    :cond_0
    move v2, v5

    .line 738
    .local v2, useForce:Z
    :goto_0
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getModel()Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, model:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "droid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 740
    const/4 v2, 0x1

    .line 743
    :cond_1
    if-eqz p1, :cond_5

    .line 744
    if-eqz v2, :cond_4

    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 749
    .end local v1           #model:Ljava/lang/String;
    .end local v2           #useForce:Z
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v2, v6

    .line 737
    goto :goto_0

    .restart local v1       #model:Ljava/lang/String;
    .restart local v2       #useForce:Z
    :cond_4
    move v3, v5

    .line 744
    goto :goto_1

    .line 746
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v2, :cond_6

    move v4, v6

    :goto_3
    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_2

    :cond_6
    move v4, v5

    goto :goto_3
.end method

.method public static styleText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tv"
    .parameter "fontFamily"
    .parameter "fontSize"
    .parameter "fontWeight"

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 229
    .local v0, tf:Landroid/graphics/Typeface;
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 230
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypefaceStyle(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 231
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSizeUnits(Ljava/lang/String;)I

    move-result v1

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSize(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 232
    return-void
.end method

.method public static styleText(Landroid/widget/TextView;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 7
    .parameter "tv"
    .parameter "d"

    .prologue
    const-string v6, "fontWeight"

    const-string v5, "fontSize"

    const-string v4, "fontFamily"

    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, fontSize:Ljava/lang/String;
    const/4 v2, 0x0

    .line 213
    .local v2, fontWeight:Ljava/lang/String;
    const/4 v0, 0x0

    .line 215
    .local v0, fontFamily:Ljava/lang/String;
    const-string v3, "fontSize"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    const-string v3, "fontSize"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    :cond_0
    const-string v3, "fontWeight"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    const-string v3, "fontWeight"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    :cond_1
    const-string v3, "fontFamily"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    const-string v3, "fontFamily"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_2
    invoke-static {p0, v0, v1, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static toTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .parameter "fontFamily"

    .prologue
    .line 235
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 237
    .local v0, tf:Landroid/graphics/Typeface;
    if-eqz p0, :cond_0

    .line 238
    const-string v1, "monospace"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 250
    :cond_0
    :goto_0
    return-object v0

    .line 240
    :cond_1
    const-string v1, "serif"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 242
    :cond_2
    const-string v1, "sans-serif"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 245
    :cond_3
    sget-boolean v1, Lorg/appcelerator/titanium/util/TiUIHelper;->DBG:Z

    if-eqz v1, :cond_0

    .line 246
    const-string v1, "TiUIHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported font: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' supported fonts are \'monospace\', \'serif\', \'sans-serif\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static toTypefaceStyle(Ljava/lang/String;)I
    .locals 2
    .parameter "fontWeight"

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, style:I
    if-eqz p0, :cond_0

    .line 135
    const-string v1, "bold"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 139
    :cond_0
    return v0
.end method

.method public static viewToImage(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;
    .locals 5
    .parameter "context"
    .parameter "proxyDict"
    .parameter "view"

    .prologue
    .line 486
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 488
    .local v2, image:Lorg/appcelerator/kroll/KrollDict;
    if-eqz p2, :cond_6

    .line 489
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 490
    .local v1, width:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 493
    .local v0, height:I
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-nez v3, :cond_0

    .line 494
    if-eqz p1, :cond_0

    .line 495
    const-string v3, "width"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    new-instance v1, Lorg/appcelerator/titanium/TiDimension;

    .end local v1           #width:I
    const-string v3, "width"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-direct {v1, v3, v4}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 497
    .local v1, widthDimension:Lorg/appcelerator/titanium/TiDimension;
    invoke-virtual {v1, p2}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v1

    .line 501
    .local v1, width:I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-nez v3, :cond_5

    .line 502
    if-eqz p1, :cond_5

    .line 503
    const-string v3, "height"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 504
    new-instance v0, Lorg/appcelerator/titanium/TiDimension;

    .end local v0           #height:I
    const-string v3, "height"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1
    const/4 v3, 0x7

    invoke-direct {v0, p1, v3}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 505
    .local v0, heightDimension:Lorg/appcelerator/titanium/TiDimension;
    invoke-virtual {v0, p2}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result p1

    .line 509
    .end local v0           #heightDimension:Lorg/appcelerator/titanium/TiDimension;
    .local p1, height:I
    :goto_0
    const/high16 v0, 0x4000

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v3, 0x4000

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/view/View;->measure(II)V

    .line 510
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 511
    const-string v0, "TiUIHelper"

    const-string v3, "view does not have parent, calling layout"

    invoke-static {v0, v3}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v1, p1}, Landroid/view/View;->layout(IIII)V

    .line 516
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 517
    .end local v1           #width:I
    .local v0, width:I
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 520
    if-nez v0, :cond_2

    .line 521
    const/16 v0, 0x64

    .line 522
    const-string v1, "TiUIHelper"

    const-string v3, "width property is 0 for view, display view before calling toImage()"

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v3, v0

    .line 524
    .end local v0           #width:I
    .local v3, width:I
    if-nez p1, :cond_3

    .line 525
    const/16 p1, 0x64

    .line 526
    const-string v0, "TiUIHelper"

    const-string v1, "height property is 0 for view, display view before calling toImage()"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v1, p1

    .line 529
    .end local p1           #height:I
    .local v1, height:I
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 530
    .local p1, bitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 532
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 534
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .end local p2
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 535
    .local p2, bos:Ljava/io/ByteArrayOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .end local v0           #canvas:Landroid/graphics/Canvas;
    const/16 v4, 0x64

    invoke-virtual {p1, v0, v4, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 536
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .end local p2           #bos:Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v3, v1, p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->createDictForImage(Lorg/appcelerator/titanium/TiContext;II[B)Lorg/appcelerator/kroll/KrollDict;

    move-result-object p0

    .end local v2           #image:Lorg/appcelerator/kroll/KrollDict;
    .local p0, image:Lorg/appcelerator/kroll/KrollDict;
    move-object p2, p0

    .line 539
    .end local p0           #image:Lorg/appcelerator/kroll/KrollDict;
    .local p2, image:Lorg/appcelerator/kroll/KrollDict;
    :goto_1
    const/4 p0, 0x0

    .line 540
    .local p0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, p2

    .line 543
    .end local v1           #height:I
    .end local v3           #width:I
    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .end local p2           #image:Lorg/appcelerator/kroll/KrollDict;
    .local p0, image:Lorg/appcelerator/kroll/KrollDict;
    :goto_2
    return-object p0

    .restart local v1       #height:I
    .restart local v2       #image:Lorg/appcelerator/kroll/KrollDict;
    .restart local v3       #width:I
    .local p0, context:Lorg/appcelerator/titanium/TiContext;
    .restart local p1       #bitmap:Landroid/graphics/Bitmap;
    .local p2, bos:Ljava/io/ByteArrayOutputStream;
    :cond_4
    move-object p2, v2

    .end local v2           #image:Lorg/appcelerator/kroll/KrollDict;
    .local p2, image:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1

    .end local v3           #width:I
    .local v0, height:I
    .local v1, width:I
    .restart local v2       #image:Lorg/appcelerator/kroll/KrollDict;
    .local p1, proxyDict:Lorg/appcelerator/kroll/KrollDict;
    .local p2, view:Landroid/view/View;
    :cond_5
    move p1, v0

    .end local v0           #height:I
    .local p1, height:I
    goto :goto_0

    .end local v1           #width:I
    .local p1, proxyDict:Lorg/appcelerator/kroll/KrollDict;
    :cond_6
    move-object p0, v2

    .end local v2           #image:Lorg/appcelerator/kroll/KrollDict;
    .local p0, image:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_2
.end method
