.class public final Lcom/jaynux/app/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaynux/app/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final com_cauly_android_ad_AdView:[I = null

.field public static final com_cauly_android_ad_AdView_action:I = 0x0

.field public static final com_cauly_android_ad_AdView_adtype:I = 0x2

.field public static final com_cauly_android_ad_AdView_age:I = 0x4

.field public static final com_cauly_android_ad_AdView_allowcall:I = 0x8

.field public static final com_cauly_android_ad_AdView_appcode:I = 0x1

.field public static final com_cauly_android_ad_AdView_effect:I = 0x7

.field public static final com_cauly_android_ad_AdView_gender:I = 0x3

.field public static final com_cauly_android_ad_AdView_gps:I = 0x6

.field public static final com_cauly_android_ad_AdView_reloadInterval:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 418
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jaynux/app/R$styleable;->com_cauly_android_ad_AdView:[I

    .line 391
    return-void

    .line 418
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
