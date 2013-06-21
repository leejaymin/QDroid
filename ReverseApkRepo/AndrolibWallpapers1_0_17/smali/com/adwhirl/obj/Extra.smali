.class public Lcom/adwhirl/obj/Extra;
.super Ljava/lang/Object;
.source "Extra.java"


# instance fields
.field public bgAlpha:I

.field public bgBlue:I

.field public bgGreen:I

.field public bgRed:I

.field public cycleTime:I

.field public fgAlpha:I

.field public fgBlue:I

.field public fgGreen:I

.field public fgRed:I

.field public locationOn:I

.field public transition:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v2, p0, Lcom/adwhirl/obj/Extra;->fgRed:I

    .line 21
    iput v2, p0, Lcom/adwhirl/obj/Extra;->fgGreen:I

    .line 22
    iput v2, p0, Lcom/adwhirl/obj/Extra;->fgBlue:I

    .line 23
    iput v1, p0, Lcom/adwhirl/obj/Extra;->fgAlpha:I

    .line 25
    iput v0, p0, Lcom/adwhirl/obj/Extra;->bgRed:I

    .line 26
    iput v0, p0, Lcom/adwhirl/obj/Extra;->bgGreen:I

    .line 27
    iput v0, p0, Lcom/adwhirl/obj/Extra;->bgBlue:I

    .line 28
    iput v1, p0, Lcom/adwhirl/obj/Extra;->bgAlpha:I

    .line 30
    const/16 v0, 0x1e

    iput v0, p0, Lcom/adwhirl/obj/Extra;->cycleTime:I

    .line 31
    iput v1, p0, Lcom/adwhirl/obj/Extra;->locationOn:I

    .line 32
    iput v1, p0, Lcom/adwhirl/obj/Extra;->transition:I

    .line 34
    return-void
.end method
