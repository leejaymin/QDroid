.class public Lorg/connectbot/util/PreferenceConstants;
.super Ljava/lang/Object;
.source "PreferenceConstants.java"


# static fields
.field public static final PRE_ECLAIR:Z

.field public static final PRE_FROYO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 27
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x4

    if-gt v0, v3, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/connectbot/util/PreferenceConstants;->PRE_ECLAIR:Z

    .line 28
    sget-boolean v0, Lorg/connectbot/util/PreferenceConstants;->PRE_ECLAIR:Z

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    sput-boolean v1, Lorg/connectbot/util/PreferenceConstants;->PRE_FROYO:Z

    .line 26
    return-void

    :cond_1
    move v0, v2

    .line 27
    goto :goto_0

    .line 29
    :cond_2
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x7

    if-le v0, v3, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
