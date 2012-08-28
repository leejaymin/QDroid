.class Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond;
.super Lorg/connectbot/util/EastAsianWidth;
.source "EastAsianWidth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/util/EastAsianWidth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FroyoAndBeyond"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/connectbot/util/EastAsianWidth;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond;-><init>()V

    return-void
.end method


# virtual methods
.method public measure([CII[BLandroid/graphics/Paint;I)V
    .locals 1
    .parameter "charArray"
    .parameter "start"
    .parameter "end"
    .parameter "wideAttribute"
    .parameter "paint"
    .parameter "charWidth"

    .prologue
    .line 72
    sub-int v0, p3, p2

    invoke-static {p1, p2, v0, p4}, Landroid/text/AndroidCharacter;->getEastAsianWidths([CII[B)V

    .line 73
    return-void
.end method
