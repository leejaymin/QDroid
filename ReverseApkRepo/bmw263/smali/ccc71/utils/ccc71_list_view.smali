.class public Lccc71/utils/ccc71_list_view;
.super Landroid/widget/ListView;
.source "SourceFile"


# instance fields
.field public a:Z

.field private b:[Ljava/lang/String;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private n:Z

.field private o:Landroid/widget/ListAdapter;

.field private p:Lccc71/utils/ak;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccc71/utils/ccc71_list_view;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/utils/ccc71_list_view;->a:Z

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "R."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lccc71/bmw/lib/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/utils/ccc71_list_view;->h:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "R."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lccc71/bmw/lib/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/utils/ccc71_list_view;->i:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "R."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lccc71/bmw/lib/c;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/utils/ccc71_list_view;->j:Ljava/lang/String;

    .line 367
    new-instance v0, Lccc71/utils/y;

    invoke-direct {v0, p0}, Lccc71/utils/y;-><init>(Lccc71/utils/ccc71_list_view;)V

    iput-object v0, p0, Lccc71/utils/ccc71_list_view;->o:Landroid/widget/ListAdapter;

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/ccc71_list_view;->p:Lccc71/utils/ak;

    .line 62
    iput-object p1, p0, Lccc71/utils/ccc71_list_view;->e:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lccc71/utils/ccc71_list_view;->o:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_list_view;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/g;->cI:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/utils/ccc71_list_view;->f:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/g;->cr:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/utils/ccc71_list_view;->g:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/g;->bK:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/utils/ccc71_list_view;->k:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/g;->bR:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/utils/ccc71_list_view;->l:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/g;->cq:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/utils/ccc71_list_view;->m:Ljava/lang/String;

    .line 77
    return-void
.end method

.method static synthetic a(Lccc71/utils/ccc71_list_view;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lccc71/utils/ccc71_list_view;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lccc71/utils/ccc71_list_view;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lccc71/utils/ccc71_list_view;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lccc71/utils/ccc71_list_view;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lccc71/utils/ccc71_list_view;)Lccc71/utils/ak;
    .locals 1
    .parameter

    .prologue
    .line 603
    iget-object v0, p0, Lccc71/utils/ccc71_list_view;->p:Lccc71/utils/ak;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 360
    invoke-virtual {p0}, Lccc71/utils/ccc71_list_view;->getFirstVisiblePosition()I

    move-result v0

    .line 362
    iget-object v1, p0, Lccc71/utils/ccc71_list_view;->d:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lccc71/utils/ccc71_list_view;->n:Z

    invoke-virtual {p0, v1, v2}, Lccc71/utils/ccc71_list_view;->setHistoryData(Ljava/util/ArrayList;Z)V

    .line 364
    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_list_view;->setSelection(I)V

    .line 365
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 84
    iput-object v0, p0, Lccc71/utils/ccc71_list_view;->d:Ljava/util/ArrayList;

    .line 85
    iput-object v0, p0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method public setHistoryData(Ljava/util/ArrayList;Z)V
    .locals 32
    .parameter
    .parameter

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_list_view;->e:Landroid/content/Context;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v17

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_list_view;->e:Landroid/content/Context;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_settings;->K(Landroid/content/Context;)Z

    move-result v3

    .line 104
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lccc71/utils/ccc71_list_view;->n:Z

    .line 106
    const/4 v2, 0x0

    .line 107
    if-eqz v3, :cond_27

    .line 109
    new-instance v3, Lccc71/bmw/data/a/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_list_view;->e:Landroid/content/Context;

    invoke-direct {v3, v2}, Lccc71/bmw/data/a/e;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {v3}, Lccc71/bmw/data/a/e;->a()V

    .line 111
    invoke-virtual {v3}, Lccc71/bmw/data/a/e;->c()[Lccc71/bmw/data/a/d;

    move-result-object v2

    .line 112
    invoke-virtual {v3}, Lccc71/bmw/data/a/e;->b()V

    move-object v10, v2

    .line 115
    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lccc71/utils/ccc71_list_view;->d:Ljava/util/ArrayList;

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    .line 117
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lccc71/utils/ccc71_list_view;->b:[Ljava/lang/String;

    .line 121
    new-instance v18, Lccc71/utils/aj;

    invoke-direct/range {v18 .. v18}, Lccc71/utils/aj;-><init>()V

    .line 122
    new-instance v19, Lccc71/utils/aj;

    invoke-direct/range {v19 .. v19}, Lccc71/utils/aj;-><init>()V

    .line 123
    new-instance v20, Lccc71/utils/aj;

    invoke-direct/range {v20 .. v20}, Lccc71/utils/aj;-><init>()V

    .line 124
    new-instance v21, Lccc71/utils/aj;

    invoke-direct/range {v21 .. v21}, Lccc71/utils/aj;-><init>()V

    .line 125
    new-instance v22, Lccc71/utils/aj;

    invoke-direct/range {v22 .. v22}, Lccc71/utils/aj;-><init>()V

    .line 126
    new-instance v23, Lccc71/utils/aj;

    invoke-direct/range {v23 .. v23}, Lccc71/utils/aj;-><init>()V

    .line 127
    new-instance v24, Lccc71/utils/aj;

    invoke-direct/range {v24 .. v24}, Lccc71/utils/aj;-><init>()V

    .line 128
    new-instance v25, Lccc71/utils/af;

    invoke-direct/range {v25 .. v25}, Lccc71/utils/af;-><init>()V

    .line 130
    new-instance v26, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm"

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 135
    const-wide/16 v11, 0x0

    .line 136
    new-instance v2, Ljava/util/Date;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Ljava/util/Date;-><init>(IIIIII)V

    .line 137
    const/4 v14, 0x0

    move-object v15, v2

    :goto_1
    move/from16 v0, v27

    if-lt v14, v0, :cond_2

    .line 300
    if-nez p2, :cond_1

    .line 302
    invoke-virtual/range {v18 .. v18}, Lccc71/utils/aj;->finalize()V

    .line 303
    invoke-virtual/range {v22 .. v22}, Lccc71/utils/aj;->finalize()V

    .line 304
    invoke-virtual/range {v23 .. v23}, Lccc71/utils/aj;->finalize()V

    .line 305
    invoke-virtual/range {v20 .. v20}, Lccc71/utils/aj;->finalize()V

    .line 306
    invoke-virtual/range {v19 .. v19}, Lccc71/utils/aj;->finalize()V

    .line 307
    invoke-virtual/range {v24 .. v24}, Lccc71/utils/aj;->finalize()V

    .line 308
    invoke-virtual/range {v21 .. v21}, Lccc71/utils/aj;->finalize()V

    .line 311
    move-object/from16 v0, v25

    iget-wide v2, v0, Lccc71/utils/af;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@-3355648@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget-wide v3, v0, Lccc71/utils/af;->d:J

    invoke-static {v3, v4}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x64

    move-object/from16 v0, v25

    iget-wide v5, v0, Lccc71/utils/af;->d:J

    mul-long/2addr v3, v5

    move-object/from16 v0, v25

    iget-wide v5, v0, Lccc71/utils/af;->b:J

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Lccc71/utils/al;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    iget-wide v3, v0, Lccc71/utils/af;->b:J

    invoke-static {v3, v4}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 317
    :goto_2
    new-instance v2, Lccc71/bmw/data/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 318
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lccc71/utils/ccc71_list_view;->a:Z

    if-eqz v3, :cond_20

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->i:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget v4, v0, Lccc71/utils/aj;->a:I

    int-to-float v4, v4

    const/high16 v5, 0x4120

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget v4, v0, Lccc71/utils/aj;->c:I

    int-to-float v4, v4

    const/high16 v5, 0x4120

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget v4, v0, Lccc71/utils/aj;->b:I

    int-to-float v4, v4

    const/high16 v5, 0x4120

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " %/h|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, -0xbf8f12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    .line 322
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    move-object/from16 v0, v25

    iget-wide v2, v0, Lccc71/utils/af;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@-3355648@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget-wide v3, v0, Lccc71/utils/af;->c:J

    invoke-static {v3, v4}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x64

    move-object/from16 v0, v25

    iget-wide v5, v0, Lccc71/utils/af;->c:J

    mul-long/2addr v3, v5

    move-object/from16 v0, v25

    iget-wide v5, v0, Lccc71/utils/af;->a:J

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Lccc71/utils/al;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    iget-wide v3, v0, Lccc71/utils/af;->a:J

    invoke-static {v3, v4}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_list_view;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 329
    :goto_4
    new-instance v2, Lccc71/bmw/data/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 330
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lccc71/utils/ccc71_list_view;->a:Z

    if-eqz v3, :cond_22

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->h:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget v4, v0, Lccc71/utils/aj;->b:I

    neg-int v4, v4

    int-to-float v4, v4

    const/high16 v5, 0x4120

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget v4, v0, Lccc71/utils/aj;->c:I

    neg-int v4, v4

    int-to-float v4, v4

    const/high16 v5, 0x4120

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget v4, v0, Lccc71/utils/aj;->a:I

    neg-int v4, v4

    int-to-float v4, v4

    const/high16 v5, 0x4120

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " %/h|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, -0xbf8f12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    .line 334
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v2, Lccc71/bmw/data/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->m:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget v4, v0, Lccc71/utils/aj;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Lccc71/utils/aj;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mV|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget v4, v0, Lccc71/utils/aj;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Lccc71/utils/aj;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mV|-12554002"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    const-wide/16 v2, 0x0

    cmp-long v2, v11, v2

    if-eqz v2, :cond_23

    .line 342
    new-instance v2, Lccc71/bmw/data/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v11

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|-12554002"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_1
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_list_view;->o:Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_list_view;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 355
    invoke-virtual/range {p0 .. p0}, Lccc71/utils/ccc71_list_view;->invalidate()V

    .line 356
    return-void

    .line 139
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lccc71/bmw/data/b;

    .line 141
    iget-object v2, v9, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    if-nez v2, :cond_8

    .line 145
    add-int/lit8 v2, v14, 0x1

    move v3, v2

    .line 146
    :goto_7
    move/from16 v0, v27

    if-ge v3, v0, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/bmw/data/b;

    iget-object v2, v2, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    if-eqz v2, :cond_5

    .line 149
    :cond_3
    if-nez p2, :cond_4

    sub-int v2, v3, v14

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_4

    .line 151
    iget-object v2, v9, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 153
    sub-int v2, v3, v14

    add-int/lit8 v2, v2, -0x1

    const/16 v4, 0xb40

    if-lt v2, v4, :cond_6

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "-= "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v4, v3, v14

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") =-|-855668600"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_4
    :goto_8
    add-int/lit8 v2, v3, -0x1

    move-wide v3, v11

    move-object v5, v15

    .line 137
    :goto_9
    add-int/lit8 v14, v2, 0x1

    move-wide v11, v3

    move-object v15, v5

    goto/16 :goto_1

    .line 147
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    .line 160
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "-= "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->g:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sub-int v7, v3, v14

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " =-|-1426085206"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 164
    :cond_7
    iget-object v2, v9, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    const-string v4, "-= "

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 176
    :cond_8
    if-eqz v10, :cond_26

    array-length v2, v10

    if-eqz v2, :cond_26

    .line 178
    array-length v0, v10

    move/from16 v28, v0

    .line 179
    const/4 v2, 0x0

    move/from16 v16, v2

    move-wide/from16 v30, v11

    move-wide/from16 v12, v30

    .line 272
    :goto_a
    move/from16 v0, v16

    move/from16 v1, v28

    if-lt v0, v1, :cond_d

    move-wide v2, v12

    .line 276
    :cond_9
    iget-object v4, v9, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    if-eqz v4, :cond_24

    .line 277
    iget-object v15, v9, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    move-wide v4, v2

    move-object v6, v15

    .line 280
    :goto_b
    if-nez p2, :cond_a

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_a
    if-lez v14, :cond_1a

    add-int/lit8 v2, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/bmw/data/b;

    move-object v7, v2

    :goto_c
    move/from16 v0, v17

    int-to-long v2, v0

    if-eqz v7, :cond_b

    iget-object v8, v9, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    if-eqz v8, :cond_b

    iget-object v8, v7, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    if-eqz v8, :cond_b

    iget-object v2, v9, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v7, v7, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v2, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v2, v7

    :cond_b
    iget-byte v7, v9, Lccc71/bmw/data/b;->g:B

    const/4 v8, 0x1

    if-eq v7, v8, :cond_c

    iget-byte v7, v9, Lccc71/bmw/data/b;->g:B

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1b

    :cond_c
    move-object/from16 v0, v25

    iget-wide v7, v0, Lccc71/utils/af;->b:J

    add-long/2addr v7, v2

    move-object/from16 v0, v25

    iput-wide v7, v0, Lccc71/utils/af;->b:J

    move-object/from16 v0, v25

    iget-wide v7, v0, Lccc71/utils/af;->d:J

    iget-short v11, v9, Lccc71/bmw/data/b;->f:S

    int-to-long v11, v11

    mul-long/2addr v2, v11

    const-wide/16 v11, 0x3e8

    div-long/2addr v2, v11

    add-long/2addr v2, v7

    move-object/from16 v0, v25

    iput-wide v2, v0, Lccc71/utils/af;->d:J

    .line 285
    :goto_d
    iget v2, v9, Lccc71/bmw/data/b;->c:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lccc71/utils/aj;->a(I)V

    .line 286
    iget v2, v9, Lccc71/bmw/data/b;->h:I

    if-gez v2, :cond_1d

    .line 287
    iget v2, v9, Lccc71/bmw/data/b;->h:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lccc71/utils/aj;->a(I)V

    .line 290
    :goto_e
    iget v2, v9, Lccc71/bmw/data/b;->d:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lccc71/utils/aj;->a(I)V

    .line 292
    iget v2, v9, Lccc71/bmw/data/b;->b:I

    if-gez v2, :cond_1e

    .line 293
    iget v2, v9, Lccc71/bmw/data/b;->b:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lccc71/utils/aj;->a(I)V

    .line 296
    :goto_f
    iget v2, v9, Lccc71/bmw/data/b;->e:F

    const/high16 v3, 0x4120

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lccc71/utils/aj;->a(I)V

    move v2, v14

    move-wide/from16 v30, v4

    move-wide/from16 v3, v30

    move-object v5, v6

    goto/16 :goto_9

    .line 181
    :cond_d
    aget-object v29, v10, v16

    .line 182
    if-eqz v29, :cond_25

    iget-object v2, v9, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    if-eqz v2, :cond_25

    move-object/from16 v0, v29

    iget-wide v2, v0, Lccc71/bmw/data/a/d;->c:J

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_25

    move-object/from16 v0, v29

    iget-wide v2, v0, Lccc71/bmw/data/a/d;->c:J

    iget-object v4, v9, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_25

    .line 184
    invoke-virtual/range {v18 .. v18}, Lccc71/utils/aj;->finalize()V

    .line 185
    invoke-virtual/range {v22 .. v22}, Lccc71/utils/aj;->finalize()V

    .line 186
    invoke-virtual/range {v23 .. v23}, Lccc71/utils/aj;->finalize()V

    .line 187
    invoke-virtual/range {v20 .. v20}, Lccc71/utils/aj;->finalize()V

    .line 188
    invoke-virtual/range {v19 .. v19}, Lccc71/utils/aj;->finalize()V

    .line 189
    invoke-virtual/range {v24 .. v24}, Lccc71/utils/aj;->finalize()V

    .line 190
    invoke-virtual/range {v21 .. v21}, Lccc71/utils/aj;->finalize()V

    .line 191
    invoke-virtual/range {v25 .. v25}, Lccc71/utils/af;->finalize()V

    .line 195
    move-object/from16 v0, v25

    iget-wide v2, v0, Lccc71/utils/af;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@-3355648@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget-wide v3, v0, Lccc71/utils/af;->d:J

    invoke-static {v3, v4}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x64

    move-object/from16 v0, v25

    iget-wide v5, v0, Lccc71/utils/af;->d:J

    mul-long/2addr v3, v5

    move-object/from16 v0, v25

    iget-wide v5, v0, Lccc71/utils/af;->b:J

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Lccc71/utils/al;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    iget-wide v3, v0, Lccc71/utils/af;->b:J

    invoke-static {v3, v4}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    .line 201
    :goto_10
    new-instance v2, Lccc71/bmw/data/b;

    move-object/from16 v0, v29

    iget v3, v0, Lccc71/bmw/data/a/d;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 202
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lccc71/utils/ccc71_list_view;->a:Z

    if-eqz v3, :cond_10

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->i:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget v4, v0, Lccc71/utils/aj;->a:I

    int-to-float v4, v4

    const/high16 v5, 0x4120

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget v4, v0, Lccc71/utils/aj;->c:I

    int-to-float v4, v4

    const/high16 v5, 0x4120

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget v4, v0, Lccc71/utils/aj;->b:I

    int-to-float v4, v4

    const/high16 v5, 0x4120

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " %/h|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lccc71/utils/ccc71_list_view;->n:Z

    if-eqz v3, :cond_f

    const-string v3, "0"

    :goto_11
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    .line 206
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    move-object/from16 v0, v25

    iget-wide v2, v0, Lccc71/utils/af;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@-3355648@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget-wide v3, v0, Lccc71/utils/af;->c:J

    invoke-static {v3, v4}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x64

    move-object/from16 v0, v25

    iget-wide v5, v0, Lccc71/utils/af;->c:J

    mul-long/2addr v3, v5

    move-object/from16 v0, v25

    iget-wide v5, v0, Lccc71/utils/af;->a:J

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Lccc71/utils/al;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    iget-wide v3, v0, Lccc71/utils/af;->a:J

    invoke-static {v3, v4}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_list_view;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    .line 213
    :goto_13
    new-instance v2, Lccc71/bmw/data/b;

    move-object/from16 v0, v29

    iget v3, v0, Lccc71/bmw/data/a/d;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 214
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lccc71/utils/ccc71_list_view;->a:Z

    if-eqz v3, :cond_14

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->h:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget v4, v0, Lccc71/utils/aj;->b:I

    neg-int v4, v4

    int-to-float v4, v4

    const/high16 v5, 0x4120

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget v4, v0, Lccc71/utils/aj;->c:I

    neg-int v4, v4

    int-to-float v4, v4

    const/high16 v5, 0x4120

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget v4, v0, Lccc71/utils/aj;->a:I

    neg-int v4, v4

    int-to-float v4, v4

    const/high16 v5, 0x4120

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " %/h|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lccc71/utils/ccc71_list_view;->n:Z

    if-eqz v3, :cond_13

    const-string v3, "0"

    :goto_14
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    .line 218
    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v2, Lccc71/bmw/data/b;

    move-object/from16 v0, v29

    iget v3, v0, Lccc71/bmw/data/a/d;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->m:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget v4, v0, Lccc71/utils/aj;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Lccc71/utils/aj;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mV|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget v4, v0, Lccc71/utils/aj;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Lccc71/utils/aj;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mV|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lccc71/utils/ccc71_list_view;->n:Z

    if-eqz v3, :cond_16

    const-string v3, "0"

    :goto_16
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lccc71/utils/ccc71_list_view;->n:Z

    if-eqz v2, :cond_18

    .line 226
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-eqz v2, :cond_17

    .line 228
    new-instance v2, Lccc71/bmw/data/b;

    move-object/from16 v0, v29

    iget v3, v0, Lccc71/bmw/data/a/d;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 229
    const-string v3, "_"

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v2, Lccc71/bmw/data/b;

    move-object/from16 v0, v29

    iget v3, v0, Lccc71/bmw/data/a/d;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "B."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lccc71/bmw/lib/c;->D:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget v4, v0, Lccc71/bmw/data/a/d;->a:I

    neg-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget-object v4, v0, Lccc71/bmw/data/a/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    move-object/from16 v0, v29

    iget-wide v5, v0, Lccc71/bmw/data/a/d;->c:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget-wide v4, v0, Lccc71/bmw/data/a/d;->c:J

    sub-long/2addr v4, v12

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|B."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lccc71/bmw/lib/c;->v:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget v4, v0, Lccc71/bmw/data/a/d;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget v4, v0, Lccc71/bmw/data/a/d;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :goto_17
    invoke-virtual/range {v18 .. v18}, Lccc71/utils/aj;->a()V

    .line 261
    invoke-virtual/range {v19 .. v19}, Lccc71/utils/aj;->a()V

    .line 262
    invoke-virtual/range {v20 .. v20}, Lccc71/utils/aj;->a()V

    .line 263
    invoke-virtual/range {v21 .. v21}, Lccc71/utils/aj;->a()V

    .line 264
    invoke-virtual/range {v22 .. v22}, Lccc71/utils/aj;->a()V

    .line 265
    invoke-virtual/range {v23 .. v23}, Lccc71/utils/aj;->a()V

    .line 266
    invoke-virtual/range {v24 .. v24}, Lccc71/utils/aj;->a()V

    .line 267
    const-wide/16 v2, 0x0

    move-object/from16 v0, v25

    iput-wide v2, v0, Lccc71/utils/af;->a:J

    const-wide/16 v2, 0x0

    move-object/from16 v0, v25

    iput-wide v2, v0, Lccc71/utils/af;->b:J

    const-wide/16 v2, 0x0

    move-object/from16 v0, v25

    iput-wide v2, v0, Lccc71/utils/af;->c:J

    const-wide/16 v2, 0x0

    move-object/from16 v0, v25

    iput-wide v2, v0, Lccc71/utils/af;->d:J

    .line 269
    move-object/from16 v0, v29

    iget-wide v2, v0, Lccc71/bmw/data/a/d;->c:J

    .line 271
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lccc71/utils/ccc71_list_view;->n:Z

    if-eqz v4, :cond_9

    .line 272
    :goto_18
    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    move-wide v12, v2

    goto/16 :goto_a

    .line 199
    :cond_e
    const-string v2, "| |"

    move-object v11, v2

    goto/16 :goto_10

    .line 203
    :cond_f
    move-object/from16 v0, v29

    iget v3, v0, Lccc71/bmw/data/a/d;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_11

    .line 205
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->i:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget v4, v0, Lccc71/utils/aj;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget v4, v0, Lccc71/utils/aj;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget v4, v0, Lccc71/utils/aj;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mA|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lccc71/utils/ccc71_list_view;->n:Z

    if-eqz v3, :cond_11

    const-string v3, "0"

    :goto_19
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    goto/16 :goto_12

    :cond_11
    move-object/from16 v0, v29

    iget v3, v0, Lccc71/bmw/data/a/d;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_19

    .line 211
    :cond_12
    const-string v2, "| |"

    move-object v11, v2

    goto/16 :goto_13

    .line 215
    :cond_13
    move-object/from16 v0, v29

    iget v3, v0, Lccc71/bmw/data/a/d;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_14

    .line 217
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->h:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lccc71/utils/aj;->b:I

    neg-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lccc71/utils/aj;->c:I

    neg-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lccc71/utils/aj;->a:I

    neg-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mA|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lccc71/utils/ccc71_list_view;->n:Z

    if-eqz v3, :cond_15

    const-string v3, "0"

    :goto_1a
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    goto/16 :goto_15

    :cond_15
    move-object/from16 v0, v29

    iget v3, v0, Lccc71/bmw/data/a/d;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1a

    .line 221
    :cond_16
    move-object/from16 v0, v29

    iget v3, v0, Lccc71/bmw/data/a/d;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_16

    .line 237
    :cond_17
    new-instance v2, Lccc71/bmw/data/b;

    move-object/from16 v0, v29

    iget v3, v0, Lccc71/bmw/data/a/d;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 238
    const-string v3, "_"

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v2, Lccc71/bmw/data/b;

    move-object/from16 v0, v29

    iget v3, v0, Lccc71/bmw/data/a/d;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "B."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lccc71/bmw/lib/c;->D:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget v4, v0, Lccc71/bmw/data/a/d;->a:I

    neg-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget-object v4, v0, Lccc71/bmw/data/a/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    move-object/from16 v0, v29

    iget-wide v5, v0, Lccc71/bmw/data/a/d;->c:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|B."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lccc71/bmw/lib/c;->v:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget v4, v0, Lccc71/bmw/data/a/d;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget v4, v0, Lccc71/bmw/data/a/d;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 247
    :cond_18
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-eqz v2, :cond_19

    .line 249
    new-instance v2, Lccc71/bmw/data/b;

    move-object/from16 v0, v29

    iget v3, v0, Lccc71/bmw/data/a/d;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    iget-object v4, v0, Lccc71/bmw/data/a/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget-wide v4, v0, Lccc71/bmw/data/a/d;->c:J

    sub-long/2addr v4, v12

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget v4, v0, Lccc71/bmw/data/a/d;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 255
    :cond_19
    new-instance v2, Lccc71/bmw/data/b;

    move-object/from16 v0, v29

    iget v3, v0, Lccc71/bmw/data/a/d;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    iget-object v4, v0, Lccc71/bmw/data/a/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget v4, v0, Lccc71/bmw/data/a/d;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 283
    :cond_1a
    const/4 v2, 0x0

    move-object v7, v2

    goto/16 :goto_c

    :cond_1b
    iget-byte v7, v9, Lccc71/bmw/data/b;->g:B

    if-nez v7, :cond_1c

    move-object/from16 v0, v25

    iget-wide v7, v0, Lccc71/utils/af;->a:J

    add-long/2addr v7, v2

    move-object/from16 v0, v25

    iput-wide v7, v0, Lccc71/utils/af;->a:J

    move-object/from16 v0, v25

    iget-wide v7, v0, Lccc71/utils/af;->c:J

    iget-short v11, v9, Lccc71/bmw/data/b;->f:S

    int-to-long v11, v11

    mul-long/2addr v2, v11

    const-wide/16 v11, 0x3e8

    div-long/2addr v2, v11

    add-long/2addr v2, v7

    move-object/from16 v0, v25

    iput-wide v2, v0, Lccc71/utils/af;->c:J

    goto/16 :goto_d

    :cond_1c
    const/4 v7, 0x1

    shr-long/2addr v2, v7

    move-object/from16 v0, v25

    iget-wide v7, v0, Lccc71/utils/af;->a:J

    add-long/2addr v7, v2

    move-object/from16 v0, v25

    iput-wide v7, v0, Lccc71/utils/af;->a:J

    move-object/from16 v0, v25

    iget-wide v7, v0, Lccc71/utils/af;->b:J

    add-long/2addr v7, v2

    move-object/from16 v0, v25

    iput-wide v7, v0, Lccc71/utils/af;->b:J

    move-object/from16 v0, v25

    iget-wide v7, v0, Lccc71/utils/af;->d:J

    iget-short v11, v9, Lccc71/bmw/data/b;->f:S

    int-to-long v11, v11

    mul-long/2addr v11, v2

    const-wide/16 v15, 0x3e8

    div-long/2addr v11, v15

    add-long/2addr v7, v11

    move-object/from16 v0, v25

    iput-wide v7, v0, Lccc71/utils/af;->d:J

    move-object/from16 v0, v25

    iget-wide v7, v0, Lccc71/utils/af;->c:J

    iget-short v11, v9, Lccc71/bmw/data/b;->f:S

    int-to-long v11, v11

    mul-long/2addr v2, v11

    const-wide/16 v11, 0x3e8

    div-long/2addr v2, v11

    add-long/2addr v2, v7

    move-object/from16 v0, v25

    iput-wide v2, v0, Lccc71/utils/af;->c:J

    goto/16 :goto_d

    .line 289
    :cond_1d
    iget v2, v9, Lccc71/bmw/data/b;->h:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lccc71/utils/aj;->a(I)V

    goto/16 :goto_e

    .line 295
    :cond_1e
    iget v2, v9, Lccc71/bmw/data/b;->b:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lccc71/utils/aj;->a(I)V

    goto/16 :goto_f

    .line 315
    :cond_1f
    const-string v2, "| |"

    move-object v9, v2

    goto/16 :goto_2

    .line 321
    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->i:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget v4, v0, Lccc71/utils/aj;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget v4, v0, Lccc71/utils/aj;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget v4, v0, Lccc71/utils/aj;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mA|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, -0xbf8f12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    goto/16 :goto_3

    .line 327
    :cond_21
    const-string v2, "| |"

    move-object v9, v2

    goto/16 :goto_4

    .line 333
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->h:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_list_view;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lccc71/utils/aj;->b:I

    neg-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lccc71/utils/aj;->c:I

    neg-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lccc71/utils/aj;->a:I

    neg-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mA|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, -0xbf8f12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    goto/16 :goto_5

    .line 348
    :cond_23
    new-instance v2, Lccc71/bmw/data/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 349
    const-string v3, "_||-12554002"

    iput-object v3, v2, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_24
    move-wide v4, v2

    move-object v6, v15

    goto/16 :goto_b

    :cond_25
    move-wide v2, v12

    goto/16 :goto_18

    :cond_26
    move-wide v4, v11

    move-object v6, v15

    goto/16 :goto_b

    :cond_27
    move-object v10, v2

    goto/16 :goto_0
.end method

.method public setOnViewSwitch(Lccc71/utils/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lccc71/utils/ccc71_list_view;->p:Lccc71/utils/ak;

    .line 601
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    const-string v0, "[\r\n]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/utils/ccc71_list_view;->b:[Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/ccc71_list_view;->c:Ljava/util/ArrayList;

    .line 92
    iget-object v0, p0, Lccc71/utils/ccc71_list_view;->o:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_list_view;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    invoke-virtual {p0}, Lccc71/utils/ccc71_list_view;->invalidate()V

    .line 94
    return-void
.end method
