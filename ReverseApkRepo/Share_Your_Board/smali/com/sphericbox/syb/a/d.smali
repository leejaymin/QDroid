.class public final Lcom/sphericbox/syb/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method private static a(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iget v0, p0, Lcom/sphericbox/syb/a/n;->x:I

    .line 154
    iget v1, p1, Lcom/sphericbox/syb/a/n;->x:I

    .line 155
    iget v2, p2, Lcom/sphericbox/syb/a/n;->x:I

    .line 156
    iget v3, p3, Lcom/sphericbox/syb/a/n;->x:I

    .line 158
    iget v4, p0, Lcom/sphericbox/syb/a/n;->y:I

    .line 159
    iget v5, p1, Lcom/sphericbox/syb/a/n;->y:I

    .line 160
    iget v6, p2, Lcom/sphericbox/syb/a/n;->y:I

    .line 161
    iget v7, p3, Lcom/sphericbox/syb/a/n;->y:I

    .line 163
    sub-int v8, v7, v6

    sub-int v9, v1, v0

    mul-int/2addr v8, v9

    sub-int v9, v3, v2

    sub-int v10, v5, v4

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 164
    sub-int/2addr v3, v2

    sub-int v9, v4, v6

    mul-int/2addr v3, v9

    sub-int v6, v7, v6

    sub-int v2, v0, v2

    mul-int/2addr v2, v6

    sub-int v2, v3, v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    .line 166
    int-to-float v3, v0

    sub-int v0, v1, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    invoke-static {v0}, Lcom/sphericbox/syb/a/m;->round(F)I

    move-result v0

    .line 167
    int-to-float v1, v4

    sub-int v3, v5, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Lcom/sphericbox/syb/a/m;->round(F)I

    move-result v1

    .line 169
    iput v0, p4, Lcom/sphericbox/syb/a/n;->x:I

    .line 170
    iput v1, p4, Lcom/sphericbox/syb/a/n;->y:I

    .line 171
    return-void
.end method

.method static final a(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sphericbox/syb/a/n;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_0

    .line 38
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    .line 39
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sphericbox/syb/a/n;

    move-object v2, v0

    .line 47
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_1

    .line 48
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sphericbox/syb/a/n;

    .line 49
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    move-object v3, p0

    .line 55
    :goto_1
    invoke-static {v2, v1, v3, v0, p6}, Lcom/sphericbox/syb/a/d;->a(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;)V

    .line 56
    return-void

    .line 41
    :cond_0
    new-instance v0, Lcom/sphericbox/syb/a/n;

    iget v1, p0, Lcom/sphericbox/syb/a/n;->x:I

    iget v2, p0, Lcom/sphericbox/syb/a/n;->y:I

    invoke-direct {v0, v1, v2}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    .line 42
    new-instance v1, Lcom/sphericbox/syb/a/n;

    iget v2, p1, Lcom/sphericbox/syb/a/n;->x:I

    iget v3, p0, Lcom/sphericbox/syb/a/n;->y:I

    invoke-direct {v1, v2, v3}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    move-object v2, v0

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Lcom/sphericbox/syb/a/n;

    iget v3, p0, Lcom/sphericbox/syb/a/n;->x:I

    iget v4, p0, Lcom/sphericbox/syb/a/n;->y:I

    invoke-direct {v0, v3, v4}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    .line 52
    new-instance v3, Lcom/sphericbox/syb/a/n;

    iget v4, p0, Lcom/sphericbox/syb/a/n;->x:I

    iget v5, p1, Lcom/sphericbox/syb/a/n;->y:I

    invoke-direct {v3, v4, v5}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_1
.end method

.method static final a(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sphericbox/syb/a/o;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    iget-object v6, p6, Lcom/sphericbox/syb/a/o;->aE:Lcom/sphericbox/syb/a/n;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/sphericbox/syb/a/d;->a(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sphericbox/syb/a/n;)V

    .line 23
    iget-object v6, p6, Lcom/sphericbox/syb/a/o;->aF:Lcom/sphericbox/syb/a/n;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/sphericbox/syb/a/d;->b(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sphericbox/syb/a/n;)V

    .line 24
    iget-object v6, p6, Lcom/sphericbox/syb/a/o;->aG:Lcom/sphericbox/syb/a/n;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/sphericbox/syb/a/d;->c(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sphericbox/syb/a/n;)V

    .line 25
    iget-object v6, p6, Lcom/sphericbox/syb/a/o;->aH:Lcom/sphericbox/syb/a/n;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/sphericbox/syb/a/d;->d(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sphericbox/syb/a/n;)V

    .line 26
    return-void
.end method

.method private static b(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sphericbox/syb/a/n;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_0

    .line 68
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    .line 69
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sphericbox/syb/a/n;

    move-object v2, v0

    .line 77
    :goto_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_1

    .line 78
    invoke-virtual {p5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sphericbox/syb/a/n;

    .line 79
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    move-object v3, p0

    .line 85
    :goto_1
    invoke-static {v2, v1, v3, v0, p6}, Lcom/sphericbox/syb/a/d;->a(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;)V

    .line 86
    return-void

    .line 71
    :cond_0
    new-instance v0, Lcom/sphericbox/syb/a/n;

    iget v1, p0, Lcom/sphericbox/syb/a/n;->x:I

    iget v2, p0, Lcom/sphericbox/syb/a/n;->y:I

    invoke-direct {v0, v1, v2}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    .line 72
    new-instance v1, Lcom/sphericbox/syb/a/n;

    iget v2, p1, Lcom/sphericbox/syb/a/n;->x:I

    iget v3, p0, Lcom/sphericbox/syb/a/n;->y:I

    invoke-direct {v1, v2, v3}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    move-object v2, v0

    goto :goto_0

    .line 81
    :cond_1
    new-instance v0, Lcom/sphericbox/syb/a/n;

    iget v3, p1, Lcom/sphericbox/syb/a/n;->x:I

    iget v4, p0, Lcom/sphericbox/syb/a/n;->y:I

    invoke-direct {v0, v3, v4}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    .line 82
    new-instance v3, Lcom/sphericbox/syb/a/n;

    iget v4, p1, Lcom/sphericbox/syb/a/n;->x:I

    iget v5, p1, Lcom/sphericbox/syb/a/n;->y:I

    invoke-direct {v3, v4, v5}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_1
.end method

.method private static c(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sphericbox/syb/a/n;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_0

    .line 98
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    .line 99
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sphericbox/syb/a/n;

    move-object v2, v0

    .line 107
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_1

    .line 108
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sphericbox/syb/a/n;

    .line 109
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    move-object v3, p0

    .line 115
    :goto_1
    invoke-static {v2, v1, v3, v0, p6}, Lcom/sphericbox/syb/a/d;->a(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;)V

    .line 116
    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/sphericbox/syb/a/n;

    iget v1, p0, Lcom/sphericbox/syb/a/n;->x:I

    iget v2, p1, Lcom/sphericbox/syb/a/n;->y:I

    invoke-direct {v0, v1, v2}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    .line 102
    new-instance v1, Lcom/sphericbox/syb/a/n;

    iget v2, p1, Lcom/sphericbox/syb/a/n;->x:I

    iget v3, p1, Lcom/sphericbox/syb/a/n;->y:I

    invoke-direct {v1, v2, v3}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    move-object v2, v0

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Lcom/sphericbox/syb/a/n;

    iget v3, p0, Lcom/sphericbox/syb/a/n;->x:I

    iget v4, p0, Lcom/sphericbox/syb/a/n;->y:I

    invoke-direct {v0, v3, v4}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    .line 112
    new-instance v3, Lcom/sphericbox/syb/a/n;

    iget v4, p0, Lcom/sphericbox/syb/a/n;->x:I

    iget v5, p1, Lcom/sphericbox/syb/a/n;->y:I

    invoke-direct {v3, v4, v5}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_1
.end method

.method private static d(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sphericbox/syb/a/n;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_0

    .line 128
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    .line 129
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sphericbox/syb/a/n;

    move-object v2, v0

    .line 137
    :goto_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_1

    .line 138
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sphericbox/syb/a/n;

    .line 139
    invoke-virtual {p5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    move-object v3, p0

    .line 145
    :goto_1
    invoke-static {v2, v1, v3, v0, p6}, Lcom/sphericbox/syb/a/d;->a(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;)V

    .line 146
    return-void

    .line 131
    :cond_0
    new-instance v0, Lcom/sphericbox/syb/a/n;

    iget v1, p0, Lcom/sphericbox/syb/a/n;->x:I

    iget v2, p1, Lcom/sphericbox/syb/a/n;->y:I

    invoke-direct {v0, v1, v2}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    .line 132
    new-instance v1, Lcom/sphericbox/syb/a/n;

    iget v2, p1, Lcom/sphericbox/syb/a/n;->x:I

    iget v3, p1, Lcom/sphericbox/syb/a/n;->y:I

    invoke-direct {v1, v2, v3}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    move-object v2, v0

    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Lcom/sphericbox/syb/a/n;

    iget v3, p1, Lcom/sphericbox/syb/a/n;->x:I

    iget v4, p0, Lcom/sphericbox/syb/a/n;->y:I

    invoke-direct {v0, v3, v4}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    .line 142
    new-instance v3, Lcom/sphericbox/syb/a/n;

    iget v4, p1, Lcom/sphericbox/syb/a/n;->x:I

    iget v5, p1, Lcom/sphericbox/syb/a/n;->y:I

    invoke-direct {v3, v4, v5}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_1
.end method
