.class public abstract Lorg/connectbot/util/EastAsianWidth;
.super Ljava/lang/Object;
.source "EastAsianWidth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond;,
        Lorg/connectbot/util/EastAsianWidth$PreFroyo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/connectbot/util/EastAsianWidth;
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lorg/connectbot/util/PreferenceConstants;->PRE_FROYO:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lorg/connectbot/util/EastAsianWidth$PreFroyo$Holder;->access$0()Lorg/connectbot/util/EastAsianWidth$PreFroyo;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond$Holder;->access$0()Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abstract measure([CII[BLandroid/graphics/Paint;I)V
.end method
