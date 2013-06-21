.class public Lorg/bpiette/app/Distance;
.super Ljava/lang/Object;
.source "Distance.java"


# instance fields
.field public distance:Ljava/lang/Double;

.field public duration:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Double;)V
    .locals 2
    .parameter "distance"

    .prologue
    .line 10
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bpiette/app/Distance;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/bpiette/app/Distance;->distance:Ljava/lang/Double;

    .line 16
    iput-object p2, p0, Lorg/bpiette/app/Distance;->duration:Ljava/lang/Double;

    .line 17
    return-void
.end method
