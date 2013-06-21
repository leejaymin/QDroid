.class Lcom/sphericbox/syb/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field B:I

.field C:I

.field D:I

.field E:I

.field F:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iput p1, p0, Lcom/sphericbox/syb/a/e;->B:I

    .line 195
    iput p2, p0, Lcom/sphericbox/syb/a/e;->C:I

    .line 196
    sub-int v0, p3, p1

    iput v0, p0, Lcom/sphericbox/syb/a/e;->D:I

    .line 197
    sub-int v0, p3, p2

    iput v0, p0, Lcom/sphericbox/syb/a/e;->E:I

    .line 198
    iput p3, p0, Lcom/sphericbox/syb/a/e;->F:I

    .line 199
    return-void
.end method
