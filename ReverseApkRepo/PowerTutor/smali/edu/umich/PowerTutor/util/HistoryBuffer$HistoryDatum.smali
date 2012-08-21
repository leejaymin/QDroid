.class Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;
.super Ljava/lang/Object;
.source "HistoryBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/util/HistoryBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryDatum"
.end annotation


# instance fields
.field public iteration:J

.field public power:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public init(JI)V
    .locals 0
    .parameter "iteration"
    .parameter "power"

    .prologue
    .line 45
    iput-wide p1, p0, Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;->iteration:J

    .line 46
    iput p3, p0, Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;->power:I

    .line 47
    return-void
.end method
