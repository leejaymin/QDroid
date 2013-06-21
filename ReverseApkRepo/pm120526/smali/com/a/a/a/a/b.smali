.class public abstract Lcom/a/a/a/a/b;
.super Lcom/a/a/a/b;


# instance fields
.field protected a:I

.field protected b:Lcom/a/a/b/b;


# direct methods
.method protected constructor <init>(JILcom/a/a/b/b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/a/a/a/b;-><init>(J)V

    and-int/lit16 v0, p3, 0xff

    iput v0, p0, Lcom/a/a/a/a/b;->a:I

    iput-object p4, p0, Lcom/a/a/a/a/b;->b:Lcom/a/a/b/b;

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Lcom/a/a/a/b;->a(Ljava/io/OutputStream;Z)V

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/a/a/a/a/b;->a:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final a(Ljava/io/OutputStream;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/a/a/a/a/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method
