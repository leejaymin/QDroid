.class public Lccc71/utils/ccc71_multi_graph_view;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lccc71/utils/x;


# static fields
.field static a:I

.field static b:I

.field static c:I

.field private static x:Lccc71/utils/w;


# instance fields
.field private A:F

.field private B:Ljava/util/ArrayList;

.field private C:I

.field private D:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:Ljava/util/Date;

.field private u:Ljava/lang/String;

.field private v:Landroid/graphics/Paint;

.field private w:Ljava/util/HashMap;

.field private y:Lccc71/utils/v;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x28

    sput v0, Lccc71/utils/ccc71_multi_graph_view;->a:I

    .line 28
    const/16 v0, 0xd

    sput v0, Lccc71/utils/ccc71_multi_graph_view;->b:I

    .line 29
    const/16 v0, 0xc

    sput v0, Lccc71/utils/ccc71_multi_graph_view;->c:I

    .line 53
    new-instance v0, Lccc71/utils/w;

    invoke-direct {v0}, Lccc71/utils/w;-><init>()V

    sput-object v0, Lccc71/utils/ccc71_multi_graph_view;->x:Lccc71/utils/w;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 64
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    iput v3, p0, Lccc71/utils/ccc71_multi_graph_view;->l:F

    .line 42
    iput v3, p0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    .line 43
    iput v2, p0, Lccc71/utils/ccc71_multi_graph_view;->n:F

    .line 44
    iput-boolean v0, p0, Lccc71/utils/ccc71_multi_graph_view;->o:Z

    .line 45
    iput-boolean v0, p0, Lccc71/utils/ccc71_multi_graph_view;->p:Z

    .line 46
    iput-boolean v0, p0, Lccc71/utils/ccc71_multi_graph_view;->q:Z

    .line 49
    iput-object v1, p0, Lccc71/utils/ccc71_multi_graph_view;->t:Ljava/util/Date;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    .line 52
    iput-object v1, p0, Lccc71/utils/ccc71_multi_graph_view;->w:Ljava/util/HashMap;

    .line 54
    iput-object v1, p0, Lccc71/utils/ccc71_multi_graph_view;->y:Lccc71/utils/v;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lccc71/utils/ccc71_multi_graph_view;->z:I

    .line 56
    iput v2, p0, Lccc71/utils/ccc71_multi_graph_view;->A:F

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_multi_graph_view;->B:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 67
    sget v1, Lccc71/utils/ccc71_multi_graph_view;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lccc71/utils/ccc71_multi_graph_view;->j:I

    .line 68
    sget v1, Lccc71/utils/ccc71_multi_graph_view;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lccc71/utils/ccc71_multi_graph_view;->f:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput v3, p0, Lccc71/utils/ccc71_multi_graph_view;->l:F

    .line 42
    iput v3, p0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    .line 43
    iput v2, p0, Lccc71/utils/ccc71_multi_graph_view;->n:F

    .line 44
    iput-boolean v0, p0, Lccc71/utils/ccc71_multi_graph_view;->o:Z

    .line 45
    iput-boolean v0, p0, Lccc71/utils/ccc71_multi_graph_view;->p:Z

    .line 46
    iput-boolean v0, p0, Lccc71/utils/ccc71_multi_graph_view;->q:Z

    .line 49
    iput-object v1, p0, Lccc71/utils/ccc71_multi_graph_view;->t:Ljava/util/Date;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    .line 52
    iput-object v1, p0, Lccc71/utils/ccc71_multi_graph_view;->w:Ljava/util/HashMap;

    .line 54
    iput-object v1, p0, Lccc71/utils/ccc71_multi_graph_view;->y:Lccc71/utils/v;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lccc71/utils/ccc71_multi_graph_view;->z:I

    .line 56
    iput v2, p0, Lccc71/utils/ccc71_multi_graph_view;->A:F

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_multi_graph_view;->B:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 76
    sget v1, Lccc71/utils/ccc71_multi_graph_view;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lccc71/utils/ccc71_multi_graph_view;->j:I

    .line 77
    sget v1, Lccc71/utils/ccc71_multi_graph_view;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lccc71/utils/ccc71_multi_graph_view;->f:I

    .line 78
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_0
    div-int/lit8 v1, p0, 0x3c

    .line 106
    if-lez v1, :cond_3

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    rem-int/lit8 v3, v1, 0x3c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_1
    div-int/lit8 v1, v1, 0x3c

    .line 113
    if-lez v1, :cond_3

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    rem-int/lit8 v3, v1, 0x18

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_2
    div-int/lit8 v1, v1, 0x18

    .line 120
    if-lez v1, :cond_3

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    rem-int/lit8 v1, v1, 0x1e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "d "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_3
    return-object v0
.end method

.method private m()I
    .locals 3

    .prologue
    const/16 v0, 0x12c

    .line 132
    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->r:I

    const/16 v2, 0x3c

    if-gt v1, v2, :cond_0

    .line 137
    :goto_0
    return v0

    .line 134
    :cond_0
    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->r:I

    if-gt v1, v0, :cond_1

    .line 135
    const/16 v0, 0x708

    goto :goto_0

    .line 137
    :cond_1
    const/16 v0, 0xe10

    goto :goto_0
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    return v0
.end method

.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 176
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 177
    return-void
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->n:F

    return v0
.end method

.method public final b(F)F
    .locals 3
    .parameter

    .prologue
    .line 186
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->n:F

    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->l:F

    iget v2, p0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    mul-float/2addr v1, v2

    div-float v1, p1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_multi_graph_view;->c(F)F

    move-result v0

    return v0
.end method

.method public final c(F)F
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 196
    iput p1, p0, Lccc71/utils/ccc71_multi_graph_view;->n:F

    .line 197
    const/4 v0, 0x0

    .line 198
    iget-object v1, p0, Lccc71/utils/ccc71_multi_graph_view;->w:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccc71/utils/ccc71_multi_graph_view;->w:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-boolean v0, p0, Lccc71/utils/ccc71_multi_graph_view;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccc71/utils/ccc71_multi_graph_view;->w:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    iget-object v0, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 201
    :cond_0
    :goto_0
    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->n:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 202
    iput v2, p0, Lccc71/utils/ccc71_multi_graph_view;->n:F

    .line 206
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lccc71/utils/ccc71_multi_graph_view;->invalidate()V

    .line 208
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->n:F

    return v0

    .line 199
    :cond_2
    iget-object v0, p0, Lccc71/utils/ccc71_multi_graph_view;->w:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    iget-object v0, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 203
    :cond_3
    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->n:F

    iget v2, p0, Lccc71/utils/ccc71_multi_graph_view;->k:I

    int-to-float v2, v2

    iget v3, p0, Lccc71/utils/ccc71_multi_graph_view;->l:F

    iget v4, p0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 204
    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->k:I

    int-to-float v1, v1

    iget v2, p0, Lccc71/utils/ccc71_multi_graph_view;->l:F

    iget v3, p0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lccc71/utils/ccc71_multi_graph_view;->n:F

    goto :goto_1
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lccc71/utils/ccc71_multi_graph_view;->w:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public final d()Lccc71/utils/v;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lccc71/utils/ccc71_multi_graph_view;->y:Lccc71/utils/v;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->r:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->C:I

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->D:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lccc71/utils/ccc71_multi_graph_view;->m()I

    move-result v0

    invoke-static {v0}, Lccc71/utils/ccc71_multi_graph_view;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->k:I

    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->r:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->l:F

    iget v2, p0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 149
    invoke-static {v0}, Lccc71/utils/ccc71_multi_graph_view;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lccc71/utils/ccc71_multi_graph_view;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lccc71/utils/ccc71_multi_graph_view;->o:Z

    .line 232
    invoke-virtual {p0}, Lccc71/utils/ccc71_multi_graph_view;->invalidate()V

    .line 234
    iget-boolean v0, p0, Lccc71/utils/ccc71_multi_graph_view;->o:Z

    return v0

    .line 231
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/ccc71_multi_graph_view;->w:Ljava/util/HashMap;

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lccc71/utils/ccc71_multi_graph_view;->n:F

    .line 250
    return-void
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 592
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->k:I

    int-to-float v0, v0

    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->r:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->s:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_multi_graph_view;->l:F

    .line 593
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->l:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 594
    const/high16 v0, 0x3f80

    iput v0, p0, Lccc71/utils/ccc71_multi_graph_view;->l:F

    .line 595
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter

    .prologue
    .line 270
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lccc71/utils/ccc71_multi_graph_view;->w:Ljava/util/HashMap;

    move-object/from16 v17, v0

    .line 274
    if-nez v17, :cond_0

    .line 559
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lccc71/utils/ccc71_multi_graph_view;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccc71/utils/android/y;->a(Landroid/content/Context;)Z

    move-result v18

    .line 282
    move-object/from16 v0, p0

    iget v0, v0, Lccc71/utils/ccc71_multi_graph_view;->f:I

    move/from16 v19, v0

    .line 283
    move-object/from16 v0, p0

    iget v0, v0, Lccc71/utils/ccc71_multi_graph_view;->h:I

    move/from16 v20, v0

    .line 284
    move-object/from16 v0, p0

    iget v0, v0, Lccc71/utils/ccc71_multi_graph_view;->g:I

    move/from16 v21, v0

    .line 285
    move-object/from16 v0, p0

    iget v14, v0, Lccc71/utils/ccc71_multi_graph_view;->i:I

    .line 286
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_multi_graph_view;->d:I

    .line 287
    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_multi_graph_view;->e:I

    .line 289
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_c

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/b/t;

    iget v1, v1, Lccc71/pmw/b/t;->a:I

    .line 290
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3e

    if-ltz v1, :cond_3e

    .line 291
    const/4 v1, 0x0

    move v8, v1

    .line 293
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lccc71/utils/ccc71_multi_graph_view;->getDrawingCacheBackgroundColor()I

    move-result v1

    .line 294
    if-eqz v1, :cond_1

    .line 295
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 297
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    const/high16 v4, 0x3fc0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 303
    new-instance v1, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 304
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    const v5, -0x7f7f80

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    const/high16 v4, 0x40a0

    const/high16 v5, 0x40a0

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    const v4, -0xbfbfc0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    add-int/lit8 v6, v2, -0x2

    int-to-float v6, v6

    add-int/lit8 v7, v3, -0x2

    int-to-float v7, v7

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 308
    const/high16 v4, 0x40a0

    const/high16 v5, 0x40a0

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    const v4, -0xefeff0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v4, 0x4000

    const/high16 v5, 0x4000

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 311
    const/high16 v2, 0x40a0

    const/high16 v3, 0x40a0

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    const v2, 0x60ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v4, v0

    int-to-float v5, v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 317
    move/from16 v0, v20

    int-to-float v2, v0

    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    int-to-float v5, v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 318
    move/from16 v0, v19

    int-to-float v2, v0

    int-to-float v3, v14

    move/from16 v0, v20

    int-to-float v4, v0

    int-to-float v5, v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 319
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v21

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 323
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    invoke-virtual/range {p0 .. p0}, Lccc71/utils/ccc71_multi_graph_view;->getContext()Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lccc71/utils/ccc71_multi_graph_view;->m()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-int v2, v20, v19

    int-to-float v2, v2

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_multi_graph_view;->s:I

    int-to-float v2, v2

    div-float v7, v1, v2

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    const v2, 0x40ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    const/4 v1, 0x0

    cmpl-float v1, v7, v1

    if-ltz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_multi_graph_view;->s:I

    if-eqz v1, :cond_2

    .line 327
    move/from16 v0, v20

    int-to-float v2, v0

    :goto_3
    move/from16 v0, v19

    int-to-float v1, v0

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_d

    .line 335
    :cond_2
    sub-int v1, v14, v21

    int-to-float v1, v1

    const/high16 v2, 0x4120

    div-float v7, v1, v2

    .line 336
    const/4 v1, 0x0

    cmpl-float v1, v7, v1

    if-lez v1, :cond_3

    .line 338
    move/from16 v0, v21

    int-to-float v3, v0

    :goto_4
    int-to-float v1, v14

    cmpg-float v1, v3, v1

    if-ltz v1, :cond_e

    .line 344
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->u:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 345
    const-string v1, ""

    move-object/from16 v0, p0

    iput-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->u:Ljava/lang/String;

    .line 349
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_multi_graph_view;->j:I

    int-to-float v1, v1

    :goto_5
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_multi_graph_view;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_multi_graph_view;->u:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_multi_graph_view;->u:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v5, v19, v20

    int-to-float v5, v5

    sub-float v1, v5, v1

    const/high16 v5, 0x4000

    div-float v5, v1, v5

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_multi_graph_view;->j:I

    add-int/2addr v1, v14

    add-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_multi_graph_view;->j:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 357
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_multi_graph_view;->k:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_multi_graph_view;->l:F

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v22, v0

    .line 358
    const/16 v1, -0x40

    if-ne v8, v1, :cond_10

    const/4 v1, 0x1

    move/from16 v16, v1

    .line 360
    :goto_6
    const/16 v1, -0x40

    if-eq v8, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lccc71/utils/ccc71_multi_graph_view;->q:Z

    if-nez v1, :cond_11

    :cond_5
    const v1, 0x7fffffff

    .line 361
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_multi_graph_view;->r:I

    mul-int/lit8 v2, v2, 0xa

    .line 362
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lccc71/utils/ccc71_multi_graph_view;->o:Z

    if-nez v3, :cond_6

    if-gez v8, :cond_3d

    .line 364
    :cond_6
    const/4 v2, 0x0

    .line 365
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v2

    move v5, v1

    :cond_7
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_12

    .line 396
    if-nez v16, :cond_3a

    .line 398
    add-int/lit8 v1, v4, 0x1

    div-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x1

    .line 399
    div-int/lit8 v2, v5, 0xa

    .line 402
    :goto_9
    const/16 v3, -0x10

    if-ne v8, v3, :cond_39

    .line 404
    div-int/lit8 v1, v1, 0xa

    .line 405
    mul-int/lit8 v1, v1, 0xa

    move v9, v1

    move v10, v2

    .line 413
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lccc71/utils/ccc71_multi_graph_view;->q:Z

    if-eqz v1, :cond_1c

    .line 415
    int-to-float v1, v9

    const/high16 v2, 0x4120

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 416
    const/4 v1, 0x0

    move v11, v1

    .line 434
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lccc71/utils/ccc71_multi_graph_view;->q:Z

    if-eqz v1, :cond_1e

    .line 436
    const/4 v1, 0x0

    .line 437
    int-to-float v3, v10

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    move v12, v1

    move-object v13, v3

    .line 453
    :goto_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 455
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v19

    int-to-float v5, v0

    sub-float v1, v5, v1

    const/high16 v5, 0x4000

    sub-float v5, v1, v5

    add-int/lit8 v1, v21, 0x5

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 456
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lccc71/utils/ccc71_multi_graph_view;->q:Z

    if-nez v1, :cond_8

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    if-eqz v11, :cond_20

    const-string v1, "MB"

    :goto_d
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 459
    if-eqz v11, :cond_21

    const-string v2, "MB"

    :goto_e
    const/4 v3, 0x0

    const/4 v4, 0x2

    move/from16 v0, v19

    int-to-float v5, v0

    sub-float v1, v5, v1

    const/high16 v5, 0x4000

    sub-float v5, v1, v5

    add-int/lit8 v1, v21, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/utils/ccc71_multi_graph_view;->j:I

    add-int/2addr v1, v6

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 461
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 462
    const/4 v3, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v19

    int-to-float v2, v0

    sub-float v1, v2, v1

    const/high16 v2, 0x4000

    sub-float v5, v1, v2

    add-int/lit8 v1, v14, 0x5

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 463
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lccc71/utils/ccc71_multi_graph_view;->q:Z

    if-nez v1, :cond_9

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    if-eqz v12, :cond_22

    const-string v1, "MB"

    :goto_f
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 466
    if-eqz v12, :cond_23

    const-string v2, "MB"

    :goto_10
    const/4 v3, 0x0

    const/4 v4, 0x2

    move/from16 v0, v19

    int-to-float v5, v0

    sub-float v1, v5, v1

    const/high16 v5, 0x4000

    sub-float v5, v1, v5

    add-int/lit8 v1, v14, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/utils/ccc71_multi_graph_view;->j:I

    add-int/2addr v1, v6

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 469
    :cond_9
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_24

    .line 533
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd|HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 534
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 536
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 537
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_multi_graph_view;->t:Ljava/util/Date;

    if-eqz v2, :cond_b

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_multi_graph_view;->t:Ljava/util/Date;

    .line 541
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 542
    const/16 v2, 0xd

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_multi_graph_view;->s:I

    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 544
    :cond_b
    const/16 v2, 0xd

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_multi_graph_view;->n:F

    neg-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_multi_graph_view;->r:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 545
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 546
    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 548
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 549
    const/16 v4, 0xd

    move/from16 v0, v22

    neg-int v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/utils/ccc71_multi_graph_view;->r:I

    mul-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 550
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 552
    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 554
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 555
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    if-eqz v18, :cond_37

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_multi_graph_view;->j:I

    int-to-float v1, v1

    :goto_11
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 556
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 557
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v20

    int-to-float v5, v0

    sub-float/2addr v5, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_multi_graph_view;->j:I

    add-int/2addr v1, v14

    add-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 558
    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v19

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_multi_graph_view;->j:I

    add-int/2addr v1, v14

    add-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 289
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 329
    :cond_d
    move/from16 v0, v21

    int-to-float v3, v0

    int-to-float v5, v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 327
    sub-float/2addr v2, v7

    goto/16 :goto_3

    .line 340
    :cond_e
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 338
    add-float/2addr v3, v7

    goto/16 :goto_4

    .line 349
    :cond_f
    const/high16 v1, 0x3f40

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_multi_graph_view;->j:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    goto/16 :goto_5

    .line 358
    :cond_10
    const/4 v1, 0x0

    move/from16 v16, v1

    goto/16 :goto_6

    .line 360
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 367
    :cond_12
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lccc71/pmw/b/t;

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->B:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->B:Ljava/util/ArrayList;

    iget v3, v2, Lccc71/pmw/b/t;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 369
    :cond_13
    iget v1, v2, Lccc71/pmw/b/t;->d:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_multi_graph_view;->s:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/utils/ccc71_multi_graph_view;->A:F

    mul-float/2addr v3, v6

    cmpg-float v1, v1, v3

    if-gez v1, :cond_14

    if-gtz v8, :cond_7

    .line 371
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lccc71/utils/ccc71_multi_graph_view;->p:Z

    if-nez v1, :cond_15

    iget v1, v2, Lccc71/pmw/b/t;->a:I

    if-eqz v1, :cond_7

    .line 373
    :cond_15
    iget v1, v2, Lccc71/pmw/b/t;->a:I

    if-gez v1, :cond_16

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_16

    if-gez v8, :cond_7

    .line 375
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lccc71/utils/ccc71_multi_graph_view;->q:Z

    if-eqz v1, :cond_18

    iget-object v1, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 379
    :goto_12
    sub-int v3, v1, v22

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/utils/ccc71_multi_graph_view;->n:F

    sub-float/2addr v3, v6

    const/high16 v6, 0x3f80

    sub-float/2addr v3, v6

    float-to-int v3, v3

    .line 380
    if-gez v3, :cond_3b

    .line 381
    const/4 v3, 0x0

    move v6, v3

    .line 382
    :goto_13
    add-int v3, v6, v22

    add-int/lit8 v3, v3, 0x1

    .line 383
    if-le v3, v1, :cond_17

    move v3, v1

    :cond_17
    move/from16 v25, v4

    move v4, v5

    move/from16 v5, v25

    .line 386
    :goto_14
    if-lt v6, v3, :cond_19

    move/from16 v25, v5

    move v5, v4

    move/from16 v4, v25

    goto/16 :goto_8

    .line 375
    :cond_18
    iget-object v1, v2, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_12

    .line 388
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lccc71/utils/ccc71_multi_graph_view;->q:Z

    if-eqz v1, :cond_1b

    iget-object v1, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 389
    if-le v1, v5, :cond_1a

    move v5, v1

    .line 391
    :cond_1a
    if-le v4, v1, :cond_3c

    .line 386
    :goto_16
    add-int/lit8 v6, v6, 0x1

    move v4, v1

    goto :goto_14

    .line 388
    :cond_1b
    iget-object v1, v2, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_15

    .line 420
    :cond_1c
    const/16 v1, 0x64

    if-le v9, v1, :cond_1d

    .line 422
    const/4 v1, 0x1

    .line 423
    div-int/lit8 v2, v9, 0xa

    int-to-float v2, v2

    const/high16 v3, 0x4120

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    move v11, v1

    goto/16 :goto_b

    .line 427
    :cond_1d
    const/4 v1, 0x0

    .line 428
    int-to-float v2, v9

    const/high16 v3, 0x4120

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    move v11, v1

    goto/16 :goto_b

    .line 441
    :cond_1e
    const/16 v1, 0x64

    if-le v10, v1, :cond_1f

    .line 443
    const/4 v1, 0x1

    .line 444
    div-int/lit8 v3, v10, 0xa

    int-to-float v3, v3

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    move v12, v1

    move-object v13, v3

    goto/16 :goto_c

    .line 448
    :cond_1f
    const/4 v1, 0x0

    .line 449
    int-to-float v3, v10

    const/high16 v4, 0x4120

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    move v12, v1

    move-object v13, v3

    goto/16 :goto_c

    .line 458
    :cond_20
    const-string v1, "KB"

    goto/16 :goto_d

    .line 459
    :cond_21
    const-string v2, "KB"

    goto/16 :goto_e

    .line 465
    :cond_22
    const-string v1, "KB"

    goto/16 :goto_f

    .line 466
    :cond_23
    const-string v2, "KB"

    goto/16 :goto_10

    .line 471
    :cond_24
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lccc71/pmw/b/t;

    .line 472
    iget v1, v7, Lccc71/pmw/b/t;->d:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_multi_graph_view;->s:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_multi_graph_view;->A:F

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_25

    if-gtz v8, :cond_a

    .line 473
    :cond_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->B:Ljava/util/ArrayList;

    iget v2, v7, Lccc71/pmw/b/t;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 475
    iget v1, v7, Lccc71/pmw/b/t;->a:I

    if-gez v1, :cond_26

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_26

    if-gez v8, :cond_a

    .line 477
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lccc71/utils/ccc71_multi_graph_view;->p:Z

    if-nez v1, :cond_27

    iget v1, v7, Lccc71/pmw/b/t;->a:I

    if-eqz v1, :cond_a

    .line 479
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lccc71/utils/ccc71_multi_graph_view;->q:Z

    if-eqz v1, :cond_2a

    iget-object v1, v7, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 482
    :goto_17
    const/4 v2, 0x2

    if-lt v1, v2, :cond_a

    .line 484
    sub-int v2, v1, v22

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_multi_graph_view;->n:F

    sub-float/2addr v2, v3

    float-to-int v13, v2

    .line 485
    if-gtz v13, :cond_28

    .line 486
    const/4 v13, 0x1

    .line 487
    :cond_28
    add-int v2, v13, v22

    .line 488
    if-le v2, v1, :cond_38

    move v11, v1

    .line 490
    :goto_18
    add-int/lit8 v1, v13, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lccc71/utils/ccc71_multi_graph_view;->C:I

    .line 491
    move-object/from16 v0, p0

    iput v11, v0, Lccc71/utils/ccc71_multi_graph_view;->D:I

    .line 492
    sub-int v1, v11, v13

    sub-int v24, v22, v1

    .line 494
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lccc71/utils/ccc71_multi_graph_view;->q:Z

    if-eqz v1, :cond_2b

    iget-object v1, v7, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    add-int/lit8 v2, v13, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v16, :cond_2c

    move v1, v10

    :goto_1a
    sub-int v1, v2, v1

    int-to-float v1, v1

    sub-int v2, v14, v21

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-int v2, v9, v10

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v2, v1

    if-eqz v16, :cond_2d

    const/4 v1, 0x1

    :goto_1b
    div-int v1, v2, v1

    .line 495
    if-le v1, v14, :cond_2e

    move v1, v14

    :cond_29
    :goto_1c
    move v12, v13

    move v3, v1

    .line 500
    :goto_1d
    if-ge v12, v11, :cond_a

    .line 502
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lccc71/utils/ccc71_multi_graph_view;->q:Z

    if-eqz v1, :cond_2f

    iget-object v1, v7, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_1e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v16, :cond_30

    move v1, v10

    :goto_1f
    sub-int v1, v2, v1

    int-to-float v1, v1

    sub-int v2, v14, v21

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-int v2, v9, v10

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v2, v1

    if-eqz v16, :cond_31

    const/4 v1, 0x1

    :goto_20
    div-int v15, v2, v1

    .line 503
    if-gt v15, v14, :cond_35

    if-ltz v15, :cond_35

    .line 505
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_multi_graph_view;->z:I

    iget v2, v7, Lccc71/pmw/b/t;->a:I

    if-ne v1, v2, :cond_32

    .line 507
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 520
    :goto_21
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_multi_graph_view;->l:F

    add-int v2, v24, v12

    sub-int/2addr v2, v13

    int-to-float v2, v2

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    mul-float/2addr v1, v2

    move/from16 v0, v19

    int-to-float v2, v0

    add-float/2addr v2, v1

    sub-int v1, v14, v3

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_multi_graph_view;->l:F

    add-int v4, v24, v12

    sub-int/2addr v4, v13

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    mul-float/2addr v1, v4

    move/from16 v0, v19

    int-to-float v4, v0

    add-float/2addr v4, v1

    sub-int v1, v14, v15

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 500
    :goto_22
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    move v3, v15

    goto :goto_1d

    .line 479
    :cond_2a
    iget-object v1, v7, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto/16 :goto_17

    .line 494
    :cond_2b
    iget-object v1, v7, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    add-int/lit8 v2, v13, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto/16 :goto_19

    :cond_2c
    mul-int/lit8 v1, v10, 0xa

    goto/16 :goto_1a

    :cond_2d
    const/16 v1, 0xa

    goto/16 :goto_1b

    .line 497
    :cond_2e
    if-gez v1, :cond_29

    .line 498
    const/4 v1, 0x0

    goto/16 :goto_1c

    .line 502
    :cond_2f
    iget-object v1, v7, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto/16 :goto_1e

    :cond_30
    mul-int/lit8 v1, v10, 0xa

    goto/16 :goto_1f

    :cond_31
    const/16 v1, 0xa

    goto/16 :goto_20

    .line 512
    :cond_32
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    const/high16 v2, 0x3fc0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 513
    if-ge v15, v3, :cond_33

    .line 514
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    iget v2, v7, Lccc71/pmw/b/t;->b:I

    add-int/lit16 v2, v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_21

    .line 515
    :cond_33
    if-le v15, v3, :cond_34

    .line 516
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    iget v2, v7, Lccc71/pmw/b/t;->b:I

    add-int/lit16 v2, v2, -0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_21

    .line 518
    :cond_34
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_multi_graph_view;->v:Landroid/graphics/Paint;

    iget v2, v7, Lccc71/pmw/b/t;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_21

    .line 524
    :cond_35
    const-string v2, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Data error for id "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v7, Lccc71/pmw/b/t;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pos "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lccc71/utils/ccc71_multi_graph_view;->q:Z

    if-eqz v1, :cond_36

    iget-object v1, v7, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " /  / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    :cond_36
    iget-object v1, v7, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_23

    .line 555
    :cond_37
    const/high16 v1, 0x3f40

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_multi_graph_view;->j:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    goto/16 :goto_11

    :cond_38
    move v11, v2

    goto/16 :goto_18

    :cond_39
    move v9, v1

    move v10, v2

    goto/16 :goto_a

    :cond_3a
    move v1, v4

    move v2, v5

    goto/16 :goto_9

    :cond_3b
    move v6, v3

    goto/16 :goto_13

    :cond_3c
    move v1, v4

    goto/16 :goto_16

    :cond_3d
    move v9, v2

    move v10, v1

    goto/16 :goto_a

    :cond_3e
    move v8, v1

    goto/16 :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 575
    iput p1, p0, Lccc71/utils/ccc71_multi_graph_view;->d:I

    .line 576
    iput p2, p0, Lccc71/utils/ccc71_multi_graph_view;->e:I

    .line 577
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->j:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccc71/utils/ccc71_multi_graph_view;->g:I

    .line 578
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->d:I

    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->j:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_multi_graph_view;->h:I

    .line 579
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->e:I

    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->j:I

    sub-int/2addr v0, v1

    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->j:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_multi_graph_view;->i:I

    .line 581
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->h:I

    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->f:I

    sub-int/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_multi_graph_view;->k:I

    .line 583
    invoke-virtual {p0}, Lccc71/utils/ccc71_multi_graph_view;->l()V

    .line 584
    iget-object v0, p0, Lccc71/utils/ccc71_multi_graph_view;->y:Lccc71/utils/v;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lccc71/utils/ccc71_multi_graph_view;->y:Lccc71/utils/v;

    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    invoke-interface {v0, p0, v1}, Lccc71/utils/v;->a(Landroid/view/View;F)V

    .line 587
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 588
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 564
    sget-object v0, Lccc71/utils/ccc71_multi_graph_view;->x:Lccc71/utils/w;

    invoke-virtual {v0, p0, p1, p0}, Lccc71/utils/w;->a(Landroid/view/View;Landroid/view/MotionEvent;Lccc71/utils/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    const/4 v0, 0x1

    .line 569
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAutoMax(Z)V
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-boolean v0, p0, Lccc71/utils/ccc71_multi_graph_view;->o:Z

    if-eq v0, p1, :cond_0

    .line 215
    iput-boolean p1, p0, Lccc71/utils/ccc71_multi_graph_view;->o:Z

    .line 216
    invoke-virtual {p0}, Lccc71/utils/ccc71_multi_graph_view;->invalidate()V

    .line 218
    :cond_0
    return-void
.end method

.method public setData(Lccc71/pmw/b/t;ZIILjava/lang/String;Ljava/util/Date;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_multi_graph_view;->w:Ljava/util/HashMap;

    .line 240
    if-eqz p1, :cond_0

    .line 241
    iget-object v0, p0, Lccc71/utils/ccc71_multi_graph_view;->w:Ljava/util/HashMap;

    iget v1, p1, Lccc71/pmw/b/t;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_0
    iget-object v1, p0, Lccc71/utils/ccc71_multi_graph_view;->w:Ljava/util/HashMap;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lccc71/utils/ccc71_multi_graph_view;->setData(Ljava/util/HashMap;ZIILjava/lang/String;Ljava/util/Date;)V

    .line 244
    return-void
.end method

.method public setData(Ljava/util/HashMap;ZIILjava/lang/String;Ljava/util/Date;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lccc71/utils/ccc71_multi_graph_view;->w:Ljava/util/HashMap;

    .line 256
    iput p3, p0, Lccc71/utils/ccc71_multi_graph_view;->r:I

    .line 257
    iput p4, p0, Lccc71/utils/ccc71_multi_graph_view;->s:I

    .line 258
    iput-object p5, p0, Lccc71/utils/ccc71_multi_graph_view;->u:Ljava/lang/String;

    .line 259
    iput-object p6, p0, Lccc71/utils/ccc71_multi_graph_view;->t:Ljava/util/Date;

    .line 260
    iput-boolean p2, p0, Lccc71/utils/ccc71_multi_graph_view;->p:Z

    .line 262
    invoke-virtual {p0}, Lccc71/utils/ccc71_multi_graph_view;->l()V

    .line 264
    invoke-virtual {p0}, Lccc71/utils/ccc71_multi_graph_view;->invalidate()V

    .line 265
    return-void
.end method

.method public setHiddenProcesses(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lccc71/utils/ccc71_multi_graph_view;->B:Ljava/util/ArrayList;

    .line 627
    invoke-virtual {p0}, Lccc71/utils/ccc71_multi_graph_view;->invalidate()V

    .line 628
    return-void
.end method

.method public setHideLevel(F)V
    .locals 1
    .parameter

    .prologue
    .line 222
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->A:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 224
    iput p1, p0, Lccc71/utils/ccc71_multi_graph_view;->A:F

    .line 225
    invoke-virtual {p0}, Lccc71/utils/ccc71_multi_graph_view;->invalidate()V

    .line 227
    :cond_0
    return-void
.end method

.method public setOnEvent(Lccc71/utils/v;)V
    .locals 0
    .parameter

    .prologue
    .line 599
    iput-object p1, p0, Lccc71/utils/ccc71_multi_graph_view;->y:Lccc71/utils/v;

    .line 600
    return-void
.end method

.method public setSelectedProcess(I)V
    .locals 1
    .parameter

    .prologue
    .line 617
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->z:I

    if-eq v0, p1, :cond_0

    .line 619
    iput p1, p0, Lccc71/utils/ccc71_multi_graph_view;->z:I

    .line 620
    invoke-virtual {p0}, Lccc71/utils/ccc71_multi_graph_view;->invalidate()V

    .line 622
    :cond_0
    return-void
.end method

.method public setShowTime(Z)V
    .locals 0
    .parameter

    .prologue
    .line 610
    iput-boolean p1, p0, Lccc71/utils/ccc71_multi_graph_view;->q:Z

    .line 612
    invoke-virtual {p0}, Lccc71/utils/ccc71_multi_graph_view;->invalidate()V

    .line 613
    return-void
.end method

.method public setZoomFactor(F)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x4120

    const/high16 v2, 0x3f80

    .line 154
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 156
    iget v0, p0, Lccc71/utils/ccc71_multi_graph_view;->k:I

    int-to-float v0, v0

    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 157
    iput p1, p0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    .line 158
    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 160
    iput v2, p0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    .line 167
    :cond_0
    :goto_0
    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->k:I

    int-to-float v1, v1

    iget v2, p0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 168
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_multi_graph_view;->b(F)F

    .line 170
    invoke-virtual {p0}, Lccc71/utils/ccc71_multi_graph_view;->invalidate()V

    .line 172
    :cond_1
    return-void

    .line 162
    :cond_2
    iget v1, p0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 164
    iput v3, p0, Lccc71/utils/ccc71_multi_graph_view;->m:F

    goto :goto_0
.end method
