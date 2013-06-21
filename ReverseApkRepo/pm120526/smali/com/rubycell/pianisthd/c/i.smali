.class public final Lcom/rubycell/pianisthd/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/rubycell/pianisthd/c/h;

    check-cast p2, Lcom/rubycell/pianisthd/c/h;

    iget-wide v0, p1, Lcom/rubycell/pianisthd/c/h;->j:J

    iget-wide v2, p2, Lcom/rubycell/pianisthd/c/h;->j:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
