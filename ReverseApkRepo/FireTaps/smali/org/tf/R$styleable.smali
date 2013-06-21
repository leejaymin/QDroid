.class public final Lorg/tf/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FTextView:[I = null

.field public static final FTextView_fireTypeface:I = 0x0

.field public static final com_admob_android_ads_AdView:[I = null

.field public static final com_admob_android_ads_AdView_backgroundColor:I = 0x0

.field public static final com_admob_android_ads_AdView_keywords:I = 0x3

.field public static final com_admob_android_ads_AdView_primaryTextColor:I = 0x1

.field public static final com_admob_android_ads_AdView_refreshInterval:I = 0x4

.field public static final com_admob_android_ads_AdView_secondaryTextColor:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 401
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 402
    const v2, 0x7f010005

    aput v2, v0, v1

    .line 401
    sput-object v0, Lorg/tf/R$styleable;->FTextView:[I

    .line 436
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/tf/R$styleable;->com_admob_android_ads_AdView:[I

    .line 390
    return-void

    .line 436
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
