.class Lorg/connectbot/util/EastAsianWidth$PreFroyo;
.super Lorg/connectbot/util/EastAsianWidth;
.source "EastAsianWidth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/util/EastAsianWidth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreFroyo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/util/EastAsianWidth$PreFroyo$Holder;
    }
.end annotation


# instance fields
.field private mWidths:[F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/connectbot/util/EastAsianWidth;-><init>()V

    .line 46
    const/16 v0, 0x1000

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/connectbot/util/EastAsianWidth$PreFroyo;->mWidths:[F

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lorg/connectbot/util/EastAsianWidth$PreFroyo;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/connectbot/util/EastAsianWidth$PreFroyo;-><init>()V

    return-void
.end method


# virtual methods
.method public measure([CII[BLandroid/graphics/Paint;I)V
    .locals 3
    .parameter "charArray"
    .parameter "start"
    .parameter "end"
    .parameter "wideAttribute"
    .parameter "paint"
    .parameter "charWidth"

    .prologue
    .line 55
    iget-object v2, p0, Lorg/connectbot/util/EastAsianWidth$PreFroyo;->mWidths:[F

    invoke-virtual {p5, p1, p2, p3, v2}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 56
    sub-int v0, p3, p2

    .line 57
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 61
    return-void

    .line 58
    :cond_0
    iget-object v2, p0, Lorg/connectbot/util/EastAsianWidth$PreFroyo;->mWidths:[F

    aget v2, v2, v1

    float-to-int v2, v2

    if-eq v2, p6, :cond_1

    .line 59
    const/4 v2, 0x5

    .line 60
    :goto_1
    int-to-byte v2, v2

    .line 58
    aput-byte v2, p4, v1

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_1
    const/4 v2, 0x4

    goto :goto_1
.end method
