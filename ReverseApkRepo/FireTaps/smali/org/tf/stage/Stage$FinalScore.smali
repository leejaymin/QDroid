.class public Lorg/tf/stage/Stage$FinalScore;
.super Ljava/lang/Object;
.source "Stage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/stage/Stage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FinalScore"
.end annotation


# instance fields
.field public accuracy:F

.field public error:Ljava/lang/Exception;

.field public longestStreak:I

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
