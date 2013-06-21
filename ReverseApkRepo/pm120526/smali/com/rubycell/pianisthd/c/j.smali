.class public final Lcom/rubycell/pianisthd/c/j;
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
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/rubycell/pianisthd/c/h;

    check-cast p2, Lcom/rubycell/pianisthd/c/h;

    iget-object v0, p1, Lcom/rubycell/pianisthd/c/h;->c:Ljava/lang/String;

    iget-object v1, p2, Lcom/rubycell/pianisthd/c/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
