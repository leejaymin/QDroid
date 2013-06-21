.class public final LeD;
.super LeI;
.source "SourceFile"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct/range {p0 .. p5}, LeI;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 9
    iput-wide p6, p0, LeD;->a:J

    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 13
    check-cast p1, LeD;

    .line 14
    iget v0, p0, LeD;->b:I

    iget v1, p1, LeD;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LeD;->e:Ljava/lang/String;

    iget-object v1, p1, LeD;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LeD;->f:Ljava/lang/String;

    iget-object v1, p1, LeD;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LeD;->c:I

    iget v1, p1, LeD;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, LeD;->d:I

    iget v1, p1, LeD;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
