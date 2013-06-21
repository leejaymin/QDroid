.class public final enum Lui/utils/ImageUtils$EFFECTS;
.super Ljava/lang/Enum;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/utils/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EFFECTS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lui/utils/ImageUtils$EFFECTS;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLACK_WHITE:Lui/utils/ImageUtils$EFFECTS;

.field private static final synthetic ENUM$VALUES:[Lui/utils/ImageUtils$EFFECTS;

.field public static final enum INVERT_COLOURS:Lui/utils/ImageUtils$EFFECTS;

.field public static final enum NO_EFFECT:Lui/utils/ImageUtils$EFFECTS;

.field public static final enum SEPHIA:Lui/utils/ImageUtils$EFFECTS;

.field public static final enum VINTAGE:Lui/utils/ImageUtils$EFFECTS;

.field public static final enum VIVID_COLOURS:Lui/utils/ImageUtils$EFFECTS;


# instance fields
.field private effectFilter:Landroid/graphics/ColorFilter;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 257
    new-instance v0, Lui/utils/ImageUtils$EFFECTS;

    const-string v1, "NO_EFFECT"

    const-string v2, "No effect"

    invoke-static {}, Lui/utils/ImageUtils$EFFECTS;->getNoEffect()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lui/utils/ImageUtils$EFFECTS;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/graphics/ColorFilter;)V

    sput-object v0, Lui/utils/ImageUtils$EFFECTS;->NO_EFFECT:Lui/utils/ImageUtils$EFFECTS;

    .line 258
    new-instance v0, Lui/utils/ImageUtils$EFFECTS;

    const-string v1, "BLACK_WHITE"

    const-string v2, "Black & White"

    invoke-static {}, Lui/utils/ImageUtils$EFFECTS;->getBlackWhiteEffect()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v3

    invoke-direct {v0, v1, v6, v2, v3}, Lui/utils/ImageUtils$EFFECTS;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/graphics/ColorFilter;)V

    sput-object v0, Lui/utils/ImageUtils$EFFECTS;->BLACK_WHITE:Lui/utils/ImageUtils$EFFECTS;

    .line 259
    new-instance v0, Lui/utils/ImageUtils$EFFECTS;

    const-string v1, "VIVID_COLOURS"

    const-string v2, "Vivid Colours"

    invoke-static {}, Lui/utils/ImageUtils$EFFECTS;->getVividColoursEffect()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v3

    invoke-direct {v0, v1, v7, v2, v3}, Lui/utils/ImageUtils$EFFECTS;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/graphics/ColorFilter;)V

    sput-object v0, Lui/utils/ImageUtils$EFFECTS;->VIVID_COLOURS:Lui/utils/ImageUtils$EFFECTS;

    .line 260
    new-instance v0, Lui/utils/ImageUtils$EFFECTS;

    const-string v1, "INVERT_COLOURS"

    const-string v2, "Invert Colours"

    invoke-static {}, Lui/utils/ImageUtils$EFFECTS;->getInvertColoursEffect()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v3

    invoke-direct {v0, v1, v8, v2, v3}, Lui/utils/ImageUtils$EFFECTS;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/graphics/ColorFilter;)V

    sput-object v0, Lui/utils/ImageUtils$EFFECTS;->INVERT_COLOURS:Lui/utils/ImageUtils$EFFECTS;

    .line 261
    new-instance v0, Lui/utils/ImageUtils$EFFECTS;

    const-string v1, "VINTAGE"

    const-string v2, "Vintage"

    invoke-static {}, Lui/utils/ImageUtils$EFFECTS;->getVintageEffect()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v3

    invoke-direct {v0, v1, v9, v2, v3}, Lui/utils/ImageUtils$EFFECTS;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/graphics/ColorFilter;)V

    sput-object v0, Lui/utils/ImageUtils$EFFECTS;->VINTAGE:Lui/utils/ImageUtils$EFFECTS;

    .line 262
    new-instance v0, Lui/utils/ImageUtils$EFFECTS;

    const-string v1, "SEPHIA"

    const/4 v2, 0x5

    const-string v3, "Old Film"

    invoke-static {}, Lui/utils/ImageUtils$EFFECTS;->getSephiaEffect()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lui/utils/ImageUtils$EFFECTS;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/graphics/ColorFilter;)V

    sput-object v0, Lui/utils/ImageUtils$EFFECTS;->SEPHIA:Lui/utils/ImageUtils$EFFECTS;

    .line 256
    const/4 v0, 0x6

    new-array v0, v0, [Lui/utils/ImageUtils$EFFECTS;

    sget-object v1, Lui/utils/ImageUtils$EFFECTS;->NO_EFFECT:Lui/utils/ImageUtils$EFFECTS;

    aput-object v1, v0, v5

    sget-object v1, Lui/utils/ImageUtils$EFFECTS;->BLACK_WHITE:Lui/utils/ImageUtils$EFFECTS;

    aput-object v1, v0, v6

    sget-object v1, Lui/utils/ImageUtils$EFFECTS;->VIVID_COLOURS:Lui/utils/ImageUtils$EFFECTS;

    aput-object v1, v0, v7

    sget-object v1, Lui/utils/ImageUtils$EFFECTS;->INVERT_COLOURS:Lui/utils/ImageUtils$EFFECTS;

    aput-object v1, v0, v8

    sget-object v1, Lui/utils/ImageUtils$EFFECTS;->VINTAGE:Lui/utils/ImageUtils$EFFECTS;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lui/utils/ImageUtils$EFFECTS;->SEPHIA:Lui/utils/ImageUtils$EFFECTS;

    aput-object v2, v0, v1

    sput-object v0, Lui/utils/ImageUtils$EFFECTS;->ENUM$VALUES:[Lui/utils/ImageUtils$EFFECTS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .parameter "filter"

    .prologue
    .line 267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 268
    iput-object p3, p0, Lui/utils/ImageUtils$EFFECTS;->name:Ljava/lang/String;

    .line 269
    iput-object p4, p0, Lui/utils/ImageUtils$EFFECTS;->effectFilter:Landroid/graphics/ColorFilter;

    .line 270
    return-void
.end method

.method private static getBlackWhiteEffect()Landroid/graphics/ColorMatrixColorFilter;
    .locals 2

    .prologue
    .line 286
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {}, Lui/utils/ColorMatrixTransform;->desature()[F

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 287
    .local v0, effectFilter:Landroid/graphics/ColorMatrixColorFilter;
    return-object v0
.end method

.method private static getInvertColoursEffect()Landroid/graphics/ColorMatrixColorFilter;
    .locals 2

    .prologue
    .line 296
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {}, Lui/utils/ColorMatrixTransform;->invertColours()[F

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 297
    .local v0, effectFilter:Landroid/graphics/ColorMatrixColorFilter;
    return-object v0
.end method

.method private static getNoEffect()Landroid/graphics/ColorMatrixColorFilter;
    .locals 2

    .prologue
    .line 281
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {}, Lui/utils/ColorMatrixTransform;->reset()[F

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 282
    .local v0, effectFilter:Landroid/graphics/ColorMatrixColorFilter;
    return-object v0
.end method

.method private static getSephiaEffect()Landroid/graphics/ColorMatrixColorFilter;
    .locals 2

    .prologue
    .line 306
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {}, Lui/utils/ColorMatrixTransform;->sephia()[F

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 307
    .local v0, effectFilter:Landroid/graphics/ColorMatrixColorFilter;
    return-object v0
.end method

.method private static getVintageEffect()Landroid/graphics/ColorMatrixColorFilter;
    .locals 2

    .prologue
    .line 301
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {}, Lui/utils/ColorMatrixTransform;->vintage()[F

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 302
    .local v0, effectFilter:Landroid/graphics/ColorMatrixColorFilter;
    return-object v0
.end method

.method private static getVividColoursEffect()Landroid/graphics/ColorMatrixColorFilter;
    .locals 3

    .prologue
    .line 291
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    const-wide/high16 v1, 0x4049

    invoke-static {v1, v2}, Lui/utils/ColorMatrixTransform;->adjustSaturation(D)[F

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 292
    .local v0, effectFilter:Landroid/graphics/ColorMatrixColorFilter;
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lui/utils/ImageUtils$EFFECTS;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lui/utils/ImageUtils$EFFECTS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lui/utils/ImageUtils$EFFECTS;

    return-object v0
.end method

.method public static values()[Lui/utils/ImageUtils$EFFECTS;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lui/utils/ImageUtils$EFFECTS;->ENUM$VALUES:[Lui/utils/ImageUtils$EFFECTS;

    array-length v1, v0

    new-array v2, v1, [Lui/utils/ImageUtils$EFFECTS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lui/utils/ImageUtils$EFFECTS;->effectFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lui/utils/ImageUtils$EFFECTS;->name:Ljava/lang/String;

    return-object v0
.end method
