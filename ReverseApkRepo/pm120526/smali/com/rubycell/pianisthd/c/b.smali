.class public final Lcom/rubycell/pianisthd/c/b;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/c/b;->c:Z

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rubycell/pianisthd/c/b;->a:I

    iput p2, p0, Lcom/rubycell/pianisthd/c/b;->b:I

    iput-boolean p3, p0, Lcom/rubycell/pianisthd/c/b;->c:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/rubycell/pianisthd/c/b;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/rubycell/pianisthd/c/b;->b:I

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/c/b;->c:Z

    return v0
.end method
