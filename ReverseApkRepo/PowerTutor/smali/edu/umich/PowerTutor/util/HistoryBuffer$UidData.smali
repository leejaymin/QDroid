.class Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;
.super Ljava/lang/Object;
.source "HistoryBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/util/HistoryBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidData"
.end annotation


# instance fields
.field public count:Ledu/umich/PowerTutor/util/Counter;

.field public queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;",
            ">;"
        }
    .end annotation
.end field

.field public sum:Ledu/umich/PowerTutor/util/Counter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;->queue:Ljava/util/LinkedList;

    .line 35
    new-instance v0, Ledu/umich/PowerTutor/util/Counter;

    invoke-direct {v0}, Ledu/umich/PowerTutor/util/Counter;-><init>()V

    iput-object v0, p0, Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;->sum:Ledu/umich/PowerTutor/util/Counter;

    .line 36
    new-instance v0, Ledu/umich/PowerTutor/util/Counter;

    invoke-direct {v0}, Ledu/umich/PowerTutor/util/Counter;-><init>()V

    iput-object v0, p0, Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;->count:Ledu/umich/PowerTutor/util/Counter;

    .line 37
    return-void
.end method
