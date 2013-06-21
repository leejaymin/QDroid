.class public final Lcom/rookiestudio/perfectviewer/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CustomSeekBar:[I = null

.field public static final CustomSeekBar_min:I = 0x0

.field public static final CustomSeekBar_step:I = 0x1

.field public static final IconPreferenceScreen:[I

.field public static final IconPreferenceScreen_icon:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 956
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/rookiestudio/perfectviewer/R$styleable;->CustomSeekBar:[I

    .line 997
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 998
    const/high16 v2, 0x7f01

    aput v2, v0, v1

    .line 997
    sput-object v0, Lcom/rookiestudio/perfectviewer/R$styleable;->IconPreferenceScreen:[I

    .line 943
    return-void

    .line 956
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
