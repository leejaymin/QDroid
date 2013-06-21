.class public final LeQ;
.super LeI;
.source "SourceFile"


# instance fields
.field public a:J

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f02008c

    .line 9
    const/4 v1, 0x2

    move-object v0, p0

    move v3, v2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, LeI;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-wide p7, p0, LeQ;->a:J

    .line 11
    iput-object p6, p0, LeQ;->g:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 16
    check-cast p1, LeQ;

    .line 17
    iget-object v0, p0, LeQ;->e:Ljava/lang/String;

    iget-object v1, p1, LeQ;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LeQ;->f:Ljava/lang/String;

    iget-object v1, p1, LeQ;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
