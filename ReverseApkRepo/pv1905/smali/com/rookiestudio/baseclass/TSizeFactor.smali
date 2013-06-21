.class public Lcom/rookiestudio/baseclass/TSizeFactor;
.super Ljava/lang/Object;
.source "TSizeFactor.java"


# instance fields
.field public HFactor:F

.field public WFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f80

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v0, p0, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 5
    iput v0, p0, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    .line 3
    return-void
.end method
