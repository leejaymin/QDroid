.class public final Lcom/a/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B


# instance fields
.field private b:I

.field private c:Z

.field private d:Z

.field private e:Ljava/util/TreeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/a/a/b;->a:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x4dt
        0x54t
        0x72t
        0x6bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/a/a/b;->e:Ljava/util/TreeSet;

    iput v1, p0, Lcom/a/a/b;->b:I

    iput-boolean v1, p0, Lcom/a/a/b;->c:Z

    iput-boolean v1, p0, Lcom/a/a/b;->d:Z

    return-void
.end method


# virtual methods
.method public final a(IIJJ)V
    .locals 6

    new-instance v0, Lcom/a/a/a/c;

    const/16 v5, 0x64

    move-wide v1, p3

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/c;-><init>(JIII)V

    invoke-virtual {p0, v0}, Lcom/a/a/b;->a(Lcom/a/a/a/b;)V

    new-instance v0, Lcom/a/a/a/c;

    add-long v1, p3, p5

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/c;-><init>(JIII)V

    invoke-virtual {p0, v0}, Lcom/a/a/b;->a(Lcom/a/a/a/b;)V

    return-void
.end method

.method public final a(Lcom/a/a/a/b;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/a/a/b;->d:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: Cannot add an event to a closed track."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/a/a/b;->e:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v7

    move-object v2, v7

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/a/a/b;->e:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iput-boolean v8, p0, Lcom/a/a/b;->c:Z

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/a/a/a/b;->b()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/a/a/a/b;->b()J

    move-result-wide v1

    sub-long v1, v3, v1

    invoke-virtual {p1, v1, v2}, Lcom/a/a/a/b;->a(J)V

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/a/a/a/b;->b()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/a/a/a/b;->b()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/b;->a(J)V

    :cond_4
    iget v1, p0, Lcom/a/a/b;->b:I

    invoke-virtual {p1}, Lcom/a/a/a/b;->d()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/b;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/a/a/a/a/a;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to insert EndOfTrack before an existing event. Use closeTrack() when finished with MidiTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->b()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/a/a/a/b;->b()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    move-object v2, v0

    move-object v0, v7

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/a/a/a/b;->b()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/a/a/a/b;->a(J)V

    goto :goto_2

    :cond_7
    iput-boolean v8, p0, Lcom/a/a/b;->d:Z

    goto :goto_0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/a/a/b;->d:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/a/a/b;->e:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/a/a/b;->e:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_0
    new-instance v2, Lcom/a/a/a/a/a;

    invoke-direct {v2, v0, v1}, Lcom/a/a/a/a/a;-><init>(J)V

    invoke-virtual {p0, v2}, Lcom/a/a/b;->a(Lcom/a/a/a/b;)V

    :cond_1
    iget-boolean v0, p0, Lcom/a/a/b;->c:Z

    if-eqz v0, :cond_2

    iput v5, p0, Lcom/a/a/b;->b:I

    iget-object v0, p0, Lcom/a/a/b;->e:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v7

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v5, p0, Lcom/a/a/b;->c:Z

    :cond_2
    sget-object v0, Lcom/a/a/b;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lcom/a/a/b;->b:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/a/a/b/a;->a(II)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/b;->e:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v7

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/b;

    iget v3, p0, Lcom/a/a/b;->b:I

    invoke-virtual {v0}, Lcom/a/a/a/b;->d()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/a/a/b;->b:I

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Lcom/a/a/a/b;->a(Lcom/a/a/a/b;)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/a/a/b;->b:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/a/a/b;->b:I

    :cond_4
    move-object v2, v0

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/a/a/a/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, p1, v5}, Lcom/a/a/a/b;->a(Ljava/io/OutputStream;Z)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1, v6}, Lcom/a/a/a/b;->a(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1
.end method
