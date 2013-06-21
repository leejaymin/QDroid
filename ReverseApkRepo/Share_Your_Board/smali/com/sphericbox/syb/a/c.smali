.class public final Lcom/sphericbox/syb/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final height:I

.field private final o:Lcom/sphericbox/syb/a/n;

.field private final p:Lcom/sphericbox/syb/a/n;

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/sphericbox/syb/a/l;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget v0, p1, Lcom/sphericbox/syb/a/l;->width:I

    iput v0, p0, Lcom/sphericbox/syb/a/c;->width:I

    .line 19
    iget v0, p1, Lcom/sphericbox/syb/a/l;->height:I

    iput v0, p0, Lcom/sphericbox/syb/a/c;->height:I

    .line 21
    new-instance v0, Lcom/sphericbox/syb/a/n;

    invoke-direct {v0, v1, v1}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    iput-object v0, p0, Lcom/sphericbox/syb/a/c;->o:Lcom/sphericbox/syb/a/n;

    .line 22
    new-instance v0, Lcom/sphericbox/syb/a/n;

    iget v1, p0, Lcom/sphericbox/syb/a/c;->width:I

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/sphericbox/syb/a/c;->height:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    iput-object v0, p0, Lcom/sphericbox/syb/a/c;->p:Lcom/sphericbox/syb/a/n;

    .line 23
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 6
    .parameter

    .prologue
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 50
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 51
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    .line 52
    iget v4, v0, Lcom/sphericbox/syb/a/n;->x:I

    iget-object v5, p0, Lcom/sphericbox/syb/a/c;->p:Lcom/sphericbox/syb/a/n;

    iget v5, v5, Lcom/sphericbox/syb/a/n;->x:I

    if-gt v4, v5, :cond_0

    iget v4, v0, Lcom/sphericbox/syb/a/n;->y:I

    iget-object v5, p0, Lcom/sphericbox/syb/a/c;->p:Lcom/sphericbox/syb/a/n;

    iget v5, v5, Lcom/sphericbox/syb/a/n;->y:I

    if-gt v4, v5, :cond_0

    iget v4, v0, Lcom/sphericbox/syb/a/n;->x:I

    iget-object v5, p0, Lcom/sphericbox/syb/a/c;->o:Lcom/sphericbox/syb/a/n;

    iget v5, v5, Lcom/sphericbox/syb/a/n;->x:I

    if-lt v4, v5, :cond_0

    iget v4, v0, Lcom/sphericbox/syb/a/n;->y:I

    iget-object v5, p0, Lcom/sphericbox/syb/a/c;->o:Lcom/sphericbox/syb/a/n;

    iget v5, v5, Lcom/sphericbox/syb/a/n;->y:I

    if-lt v4, v5, :cond_0

    .line 53
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 57
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    invoke-static {p1, v5}, Lcom/sphericbox/syb/a/c;->a(Ljava/util/ArrayList;Z)V

    .line 63
    iget v0, p0, Lcom/sphericbox/syb/a/c;->height:I

    move v1, v4

    move v2, v0

    .line 64
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 65
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    .line 66
    iget v3, v0, Lcom/sphericbox/syb/a/n;->y:I

    if-ge v3, v2, :cond_5

    .line 67
    iget v0, v0, Lcom/sphericbox/syb/a/n;->y:I

    .line 64
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    .line 70
    :cond_0
    iget v0, p0, Lcom/sphericbox/syb/a/c;->height:I

    if-eq v2, v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/sphericbox/syb/a/c;->o:Lcom/sphericbox/syb/a/n;

    iput v2, v0, Lcom/sphericbox/syb/a/n;->y:I

    .line 75
    :cond_1
    invoke-static {p2, v5}, Lcom/sphericbox/syb/a/c;->a(Ljava/util/ArrayList;Z)V

    move v1, v4

    move v2, v4

    .line 76
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 77
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    .line 78
    iget v3, v0, Lcom/sphericbox/syb/a/n;->y:I

    if-le v3, v2, :cond_4

    .line 79
    iget v0, v0, Lcom/sphericbox/syb/a/n;->y:I

    .line 76
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 82
    :cond_2
    if-eqz v2, :cond_3

    .line 83
    iget-object v0, p0, Lcom/sphericbox/syb/a/c;->p:Lcom/sphericbox/syb/a/n;

    iput v2, v0, Lcom/sphericbox/syb/a/n;->y:I

    .line 85
    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public static final a(Ljava/util/ArrayList;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 115
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 144
    :cond_0
    return-void

    .line 119
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v4, v7

    .line 120
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 121
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    .line 122
    add-int/lit8 v1, v4, 0x1

    move v5, v1

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_3

    .line 123
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sphericbox/syb/a/n;

    .line 125
    new-instance v6, Lcom/sphericbox/syb/a/r;

    invoke-direct {v6, v0, v1, p1}, Lcom/sphericbox/syb/a/r;-><init>(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Z)V

    .line 126
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sphericbox/syb/a/r;

    .line 127
    if-nez v2, :cond_2

    .line 128
    invoke-virtual {v3, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 130
    :cond_2
    invoke-virtual {v2, v0, v1}, Lcom/sphericbox/syb/a/r;->a(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;)V

    goto :goto_2

    .line 120
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 135
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 136
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 137
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/r;

    .line 138
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sphericbox/syb/a/n;

    .line 140
    iget-object v2, v0, Lcom/sphericbox/syb/a/r;->bg:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-static {p1, v4}, Lcom/sphericbox/syb/a/c;->a(Ljava/util/ArrayList;Z)V

    .line 90
    iget v0, p0, Lcom/sphericbox/syb/a/c;->width:I

    move v1, v4

    move v2, v0

    .line 91
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 92
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    .line 93
    iget v3, v0, Lcom/sphericbox/syb/a/n;->x:I

    if-ge v3, v2, :cond_5

    .line 94
    iget v0, v0, Lcom/sphericbox/syb/a/n;->x:I

    .line 91
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    .line 97
    :cond_0
    iget v0, p0, Lcom/sphericbox/syb/a/c;->width:I

    if-eq v2, v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/sphericbox/syb/a/c;->o:Lcom/sphericbox/syb/a/n;

    iput v2, v0, Lcom/sphericbox/syb/a/n;->x:I

    .line 102
    :cond_1
    invoke-static {p2, v4}, Lcom/sphericbox/syb/a/c;->a(Ljava/util/ArrayList;Z)V

    move v1, v4

    move v2, v4

    .line 103
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 104
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    .line 105
    iget v3, v0, Lcom/sphericbox/syb/a/n;->x:I

    if-le v3, v2, :cond_4

    .line 106
    iget v0, v0, Lcom/sphericbox/syb/a/n;->x:I

    .line 103
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 109
    :cond_2
    if-eqz v2, :cond_3

    .line 110
    iget-object v0, p0, Lcom/sphericbox/syb/a/c;->p:Lcom/sphericbox/syb/a/n;

    iput v2, v0, Lcom/sphericbox/syb/a/n;->x:I

    .line 112
    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/sphericbox/syb/a/n;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sphericbox/syb/a/c;->o:Lcom/sphericbox/syb/a/n;

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sphericbox/syb/a/c;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 39
    invoke-direct {p0, p3, p4}, Lcom/sphericbox/syb/a/c;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/sphericbox/syb/a/c;->a(Ljava/util/ArrayList;)V

    .line 42
    invoke-direct {p0, p2}, Lcom/sphericbox/syb/a/c;->a(Ljava/util/ArrayList;)V

    .line 43
    invoke-direct {p0, p3}, Lcom/sphericbox/syb/a/c;->a(Ljava/util/ArrayList;)V

    .line 44
    invoke-direct {p0, p4}, Lcom/sphericbox/syb/a/c;->a(Ljava/util/ArrayList;)V

    .line 45
    return-void
.end method

.method public b()Lcom/sphericbox/syb/a/n;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sphericbox/syb/a/c;->p:Lcom/sphericbox/syb/a/n;

    return-object v0
.end method
