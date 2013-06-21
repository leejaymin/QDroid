.class public Lcom/stickycoding/rokon/DrawPriority;
.super Ljava/lang/Object;
.source "DrawPriority.java"


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final NORMAL:I = 0x2

.field public static final PRIORITY_NORMAL:I = 0x1

.field public static final PRIORITY_VBO:I = 0x0

.field public static final VBO:I = 0x1

.field protected static drawPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/stickycoding/rokon/DrawPriority;->drawPriority:I

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
