.class public Lccc71/pmw/lib/pmw_frequencies;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field private static final k:Ljava/util/ArrayList;

.field private static final l:Ljava/util/ArrayList;

.field private static m:J

.field private static n:J


# instance fields
.field f:Landroid/view/View$OnClickListener;

.field private j:I

.field private o:F

.field private p:I

.field private q:Lccc71/pmw/a/ah;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lccc71/pmw/b/z;

.field private final u:Landroid/os/Handler;

.field private v:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 30
    const v0, -0xaaaa01

    sput v0, Lccc71/pmw/lib/pmw_frequencies;->a:I

    .line 31
    const v0, 0x888800

    sput v0, Lccc71/pmw/lib/pmw_frequencies;->b:I

    .line 33
    const v0, 0x8000

    sput v0, Lccc71/pmw/lib/pmw_frequencies;->c:I

    .line 34
    const v0, 0x8001

    sput v0, Lccc71/pmw/lib/pmw_frequencies;->d:I

    .line 35
    const/16 v0, 0x7fff

    sput v0, Lccc71/pmw/lib/pmw_frequencies;->e:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccc71/pmw/lib/pmw_frequencies;->k:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccc71/pmw/lib/pmw_frequencies;->l:Ljava/util/ArrayList;

    .line 41
    sput-wide v1, Lccc71/pmw/lib/pmw_frequencies;->m:J

    .line 42
    sput-wide v1, Lccc71/pmw/lib/pmw_frequencies;->n:J

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 37
    sget v0, Lccc71/pmw/lib/pmw_frequencies;->c:I

    iput v0, p0, Lccc71/pmw/lib/pmw_frequencies;->j:I

    .line 47
    const-string v0, "offline"

    iput-object v0, p0, Lccc71/pmw/lib/pmw_frequencies;->r:Ljava/lang/String;

    .line 48
    const-string v0, "frequencies"

    iput-object v0, p0, Lccc71/pmw/lib/pmw_frequencies;->s:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_frequencies;->u:Landroid/os/Handler;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_frequencies;->v:Ljava/lang/Runnable;

    .line 484
    new-instance v0, Lccc71/pmw/lib/fx;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/fx;-><init>(Lccc71/pmw/lib/pmw_frequencies;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_frequencies;->f:Landroid/view/View$OnClickListener;

    .line 28
    return-void
.end method

.method static synthetic a(J)V
    .locals 0
    .parameter

    .prologue
    .line 41
    sput-wide p0, Lccc71/pmw/lib/pmw_frequencies;->m:J

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_frequencies;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_frequencies;->a(Z)V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_frequencies;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput p1, p0, Lccc71/pmw/lib/pmw_frequencies;->j:I

    return-void
.end method

.method private a(Z)V
    .locals 6
    .parameter

    .prologue
    .line 111
    if-eqz p1, :cond_1

    .line 113
    new-instance v0, Lccc71/pmw/a/ah;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lccc71/pmw/a/ah;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_frequencies;->q:Lccc71/pmw/a/ah;

    .line 114
    sget v0, Lccc71/pmw/lib/g;->ev:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_frequencies;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_frequencies;->r:Ljava/lang/String;

    .line 115
    sget v0, Lccc71/pmw/lib/g;->dM:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_frequencies;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_frequencies;->s:Ljava/lang/String;

    .line 116
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x4000

    sub-float/2addr v0, v1

    iput v0, p0, Lccc71/pmw/lib/pmw_frequencies;->o:F

    .line 117
    new-instance v0, Lccc71/pmw/b/z;

    invoke-direct {v0}, Lccc71/pmw/b/z;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_frequencies;->t:Lccc71/pmw/b/z;

    .line 118
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aC(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_frequencies;->p:I

    .line 120
    sget v0, Lccc71/pmw/lib/e;->bi:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_frequencies;->setContentView(I)V

    sget v0, Lccc71/pmw/lib/d;->aa:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_frequencies;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lccc71/pmw/lib/fz;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/fz;-><init>(Lccc71/pmw/lib/pmw_frequencies;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lccc71/pmw/lib/d;->ac:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_frequencies;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lccc71/pmw/lib/ga;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/ga;-><init>(Lccc71/pmw/lib/pmw_frequencies;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_0
    iget-object v1, p0, Lccc71/pmw/lib/pmw_frequencies;->u:Landroid/os/Handler;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v2, p0, Lccc71/pmw/lib/pmw_frequencies;->u:Landroid/os/Handler;

    new-instance v3, Lccc71/pmw/lib/fy;

    invoke-direct {v3, p0}, Lccc71/pmw/lib/fy;-><init>(Lccc71/pmw/lib/pmw_frequencies;)V

    iput-object v3, p0, Lccc71/pmw/lib/pmw_frequencies;->v:Ljava/lang/Runnable;

    .line 139
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    int-to-long v4, v0

    .line 127
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/pmw_frequencies;->v:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_1

    .line 139
    :cond_2
    const/16 v0, 0x3e8

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic f()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lccc71/pmw/lib/pmw_frequencies;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lccc71/pmw/lib/pmw_frequencies;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h()J
    .locals 2

    .prologue
    .line 42
    sget-wide v0, Lccc71/pmw/lib/pmw_frequencies;->n:J

    return-wide v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lccc71/pmw/lib/pmw_frequencies;->u:Landroid/os/Handler;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_frequencies;->v:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lccc71/pmw/lib/pmw_frequencies;->u:Landroid/os/Handler;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_frequencies;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_frequencies;->v:Ljava/lang/Runnable;

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lccc71/pmw/lib/c;->aI:I

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lccc71/pmw/lib/g;->bs:I

    return v0
.end method

.method protected final b_()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_frequencies;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_frequencies;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_tweaks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "ccc71.pmw.tweak_id"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    return-object v0
.end method

.method final e()V
    .locals 26

    .prologue
    .line 185
    sget v4, Lccc71/pmw/lib/d;->fJ:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lccc71/pmw/lib/pmw_frequencies;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lccc71/utils/ccc71_piechartview;

    .line 186
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 188
    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/pmw/lib/pmw_frequencies;->t:Lccc71/pmw/b/z;

    invoke-virtual {v5}, Lccc71/pmw/b/z;->a()J

    move-result-wide v5

    sput-wide v5, Lccc71/pmw/lib/pmw_frequencies;->n:J

    .line 190
    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/pmw/lib/pmw_frequencies;->q:Lccc71/pmw/a/ah;

    invoke-static {}, Lccc71/pmw/a/ah;->a()I

    move-result v6

    .line 192
    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 203
    sget-object v5, Lccc71/pmw/lib/pmw_frequencies;->l:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 204
    if-nez v14, :cond_3

    .line 482
    :goto_1
    return-void

    .line 194
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/pmw/lib/pmw_frequencies;->q:Lccc71/pmw/a/ah;

    invoke-static {v5}, Lccc71/pmw/a/ah;->h(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 195
    if-eqz v7, :cond_1

    .line 197
    sget-object v8, Lccc71/pmw/lib/pmw_frequencies;->l:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v5, :cond_2

    .line 198
    sget-object v8, Lccc71/pmw/lib/pmw_frequencies;->l:Ljava/util/ArrayList;

    invoke-virtual {v8, v5, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 200
    :cond_2
    sget-object v8, Lccc71/pmw/lib/pmw_frequencies;->l:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 207
    :cond_3
    sget v5, Lccc71/pmw/lib/d;->bm:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lccc71/pmw/lib/pmw_frequencies;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 208
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 209
    const/4 v6, 0x0

    move v8, v6

    :goto_3
    if-lt v8, v14, :cond_4

    .line 230
    sget v5, Lccc71/pmw/lib/d;->ke:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lccc71/pmw/lib/pmw_frequencies;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableLayout;

    .line 231
    invoke-virtual {v5}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 232
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    .line 234
    new-instance v8, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 238
    new-instance v11, Landroid/widget/TableRow$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v11, v6, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 239
    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v11, v6, v7, v9, v10}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 243
    new-instance v15, Landroid/widget/TableRow$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/high16 v9, 0x3f80

    invoke-direct {v15, v6, v7, v9}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 244
    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v15, v6, v7, v9, v10}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 248
    new-instance v16, Landroid/widget/TableRow$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v6, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 249
    const/16 v6, 0xa

    const/4 v7, 0x0

    const/16 v9, 0xa

    const/4 v10, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7, v9, v10}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 253
    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/pmw/lib/pmw_frequencies;->s:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    move-object/from16 v0, p0

    iget v7, v0, Lccc71/pmw/lib/pmw_frequencies;->j:I

    sget v9, Lccc71/pmw/lib/pmw_frequencies;->c:I

    if-ne v7, v9, :cond_7

    .line 256
    const/4 v7, 0x1

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 259
    :goto_4
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 260
    move-object/from16 v0, p0

    iget v7, v0, Lccc71/pmw/lib/pmw_frequencies;->o:F

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 261
    sget v7, Lccc71/pmw/lib/pmw_frequencies;->c:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/pmw/lib/pmw_frequencies;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    invoke-virtual {v8, v6, v15}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    const/4 v6, 0x0

    move v7, v6

    :goto_5
    if-lt v7, v14, :cond_8

    .line 284
    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 285
    const-string v7, "%"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    move-object/from16 v0, p0

    iget v7, v0, Lccc71/pmw/lib/pmw_frequencies;->j:I

    sget v9, Lccc71/pmw/lib/pmw_frequencies;->e:I

    if-ne v7, v9, :cond_b

    .line 287
    const/4 v7, 0x1

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 290
    :goto_6
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 291
    move-object/from16 v0, p0

    iget v7, v0, Lccc71/pmw/lib/pmw_frequencies;->o:F

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 292
    sget v7, Lccc71/pmw/lib/pmw_frequencies;->e:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    .line 293
    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/pmw/lib/pmw_frequencies;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    invoke-virtual {v8, v6, v11}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    invoke-virtual {v5, v8}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 300
    new-instance v6, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 301
    sget v7, Lccc71/pmw/lib/c;->aS:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 302
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    sget-object v6, Lccc71/pmw/lib/pmw_frequencies;->l:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 306
    new-instance v18, Landroid/widget/TableRow;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 310
    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/pmw/lib/pmw_frequencies;->r:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 313
    move-object/from16 v0, p0

    iget v7, v0, Lccc71/pmw/lib/pmw_frequencies;->o:F

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 314
    sget v7, Lccc71/pmw/lib/pmw_frequencies;->c:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/pmw/lib/pmw_frequencies;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v15}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    new-instance v19, Lccc71/utils/aa;

    invoke-direct/range {v19 .. v19}, Lccc71/utils/aa;-><init>()V

    .line 319
    sget v7, Lccc71/pmw/lib/pmw_frequencies;->a:I

    move-object/from16 v0, v19

    iput v7, v0, Lccc71/utils/aa;->a:I

    .line 320
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    move-object/from16 v0, v19

    iget v7, v0, Lccc71/utils/aa;->a:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    const-wide/16 v9, 0x0

    .line 326
    const/4 v6, 0x0

    move v12, v6

    :goto_7
    if-lt v12, v14, :cond_c

    .line 352
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 356
    new-instance v6, Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    const v8, 0x1010078

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 357
    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lccc71/pmw/lib/pmw_frequencies;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    .line 360
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/high16 v12, 0x4080

    mul-float v12, v12, v18

    float-to-int v12, v12

    invoke-direct {v7, v8, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    const/4 v6, 0x0

    move v12, v6

    :goto_8
    move/from16 v0, v17

    if-lt v12, v0, :cond_f

    .line 439
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 440
    const/4 v6, 0x1

    move v8, v6

    :goto_9
    add-int/lit8 v6, v12, 0x1

    if-lt v8, v6, :cond_14

    .line 470
    move-object/from16 v0, p0

    iget v5, v0, Lccc71/pmw/lib/pmw_frequencies;->j:I

    sget v5, Lccc71/pmw/lib/pmw_frequencies;->e:I

    .line 481
    const/4 v5, 0x0

    invoke-virtual {v4, v13, v5}, Lccc71/utils/ccc71_piechartview;->setData(Ljava/util/List;Z)V

    goto/16 :goto_1

    .line 211
    :cond_4
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 212
    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 213
    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v10, 0x5

    const/4 v11, 0x5

    invoke-virtual {v9, v6, v7, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 215
    new-instance v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 216
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v6, "CPU"

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    if-le v14, v6, :cond_5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_a
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    move-object/from16 v0, p0

    iget v6, v0, Lccc71/pmw/lib/pmw_frequencies;->o:F

    const/high16 v10, 0x4000

    add-float/2addr v6, v10

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 218
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v6, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    new-instance v10, Lccc71/utils/ccc71_histogram_view;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lccc71/utils/ccc71_histogram_view;-><init>(Landroid/content/Context;)V

    .line 221
    sget-object v6, Lccc71/pmw/lib/pmw_frequencies;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v8, :cond_6

    .line 222
    sget-object v6, Lccc71/pmw/lib/pmw_frequencies;->l:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    sget-object v7, Lccc71/pmw/lib/pmw_frequencies;->k:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v10, v6, v7}, Lccc71/utils/ccc71_histogram_view;->setSingleTimes(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 225
    :goto_b
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v11, -0x1

    invoke-direct {v6, v7, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v10, -0x2

    invoke-direct {v6, v7, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto/16 :goto_3

    .line 216
    :cond_5
    const-string v6, ""

    goto :goto_a

    .line 224
    :cond_6
    sget-object v6, Lccc71/pmw/lib/pmw_frequencies;->l:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v10, v6, v7}, Lccc71/utils/ccc71_histogram_view;->setSingleTimes(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_b

    .line 258
    :cond_7
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_4

    .line 269
    :cond_8
    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 270
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v6, "CPU"

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    if-le v14, v6, :cond_9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_c
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    move-object/from16 v0, p0

    iget v6, v0, Lccc71/pmw/lib/pmw_frequencies;->j:I

    sget v10, Lccc71/pmw/lib/pmw_frequencies;->d:I

    add-int/2addr v10, v7

    if-ne v6, v10, :cond_a

    .line 272
    const/4 v6, 0x1

    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 275
    :goto_d
    const/16 v6, 0x11

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 276
    move-object/from16 v0, p0

    iget v6, v0, Lccc71/pmw/lib/pmw_frequencies;->o:F

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 277
    sget v6, Lccc71/pmw/lib/pmw_frequencies;->d:I

    add-int/2addr v6, v7

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setId(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/pmw/lib/pmw_frequencies;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    invoke-virtual {v8, v9, v11}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto/16 :goto_5

    .line 270
    :cond_9
    const-string v6, ""

    goto :goto_c

    .line 274
    :cond_a
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_d

    .line 289
    :cond_b
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_6

    .line 328
    :cond_c
    sget-wide v6, Lccc71/pmw/lib/pmw_frequencies;->n:J

    sget-wide v20, Lccc71/pmw/lib/pmw_frequencies;->m:J

    sub-long v7, v6, v20

    .line 329
    const/4 v6, 0x0

    move v11, v6

    :goto_e
    move/from16 v0, v17

    if-lt v11, v0, :cond_d

    .line 336
    const-wide/16 v20, 0x0

    cmp-long v6, v7, v20

    if-gez v6, :cond_16

    .line 337
    const-wide/16 v6, 0x0

    .line 339
    :goto_f
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 340
    invoke-static {v6, v7}, Lccc71/utils/ag;->e(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    const/4 v11, 0x5

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 342
    sget v11, Lccc71/pmw/lib/pmw_frequencies;->d:I

    add-int/2addr v11, v12

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setId(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v11, v0, Lccc71/pmw/lib/pmw_frequencies;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    move-object/from16 v0, p0

    iget v11, v0, Lccc71/pmw/lib/pmw_frequencies;->o:F

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 345
    new-instance v11, Landroid/widget/TableRow$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v0, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 346
    const/16 v20, 0xa

    const/16 v21, 0x0

    const/16 v22, 0xa

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 347
    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v11}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    move-object/from16 v0, v19

    iget-wide v0, v0, Lccc71/utils/aa;->b:J

    move-wide/from16 v20, v0

    add-long v20, v20, v6

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lccc71/utils/aa;->b:J

    .line 350
    add-long/2addr v9, v6

    .line 326
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    goto/16 :goto_7

    .line 331
    :cond_d
    sget-object v6, Lccc71/pmw/lib/pmw_frequencies;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v12, :cond_e

    .line 332
    sget-object v6, Lccc71/pmw/lib/pmw_frequencies;->l:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    const/16 v20, 0x1

    aget v20, v6, v20

    sget-object v6, Lccc71/pmw/lib/pmw_frequencies;->k:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    const/16 v21, 0x1

    aget v6, v6, v21

    sub-int v6, v20, v6

    mul-int/lit8 v6, v6, 0xa

    int-to-long v0, v6

    move-wide/from16 v20, v0

    sub-long v6, v7, v20

    .line 329
    :goto_10
    add-int/lit8 v8, v11, 0x1

    move v11, v8

    move-wide/from16 v24, v6

    move-wide/from16 v7, v24

    goto/16 :goto_e

    .line 334
    :cond_e
    sget-object v6, Lccc71/pmw/lib/pmw_frequencies;->l:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    const/16 v20, 0x1

    aget v6, v6, v20

    mul-int/lit8 v6, v6, 0xa

    int-to-long v0, v6

    move-wide/from16 v20, v0

    sub-long v6, v7, v20

    goto :goto_10

    .line 366
    :cond_f
    sget-object v6, Lccc71/pmw/lib/pmw_frequencies;->l:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 368
    new-instance v19, Landroid/widget/TableRow;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 369
    rem-int/lit8 v7, v12, 0x2

    if-nez v7, :cond_10

    .line 370
    move-object/from16 v0, p0

    iget v7, v0, Lccc71/pmw/lib/pmw_frequencies;->p:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 374
    :cond_10
    new-instance v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 375
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    const/4 v8, 0x0

    aget v6, v6, v8

    invoke-static {v6}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    const/16 v6, 0x11

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 377
    move-object/from16 v0, p0

    iget v6, v0, Lccc71/pmw/lib/pmw_frequencies;->o:F

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 378
    sget v6, Lccc71/pmw/lib/pmw_frequencies;->c:I

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setId(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/pmw/lib/pmw_frequencies;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v15}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    new-instance v20, Lccc71/utils/aa;

    invoke-direct/range {v20 .. v20}, Lccc71/utils/aa;-><init>()V

    .line 383
    sget v6, Lccc71/pmw/lib/pmw_frequencies;->a:I

    add-int/lit8 v8, v12, 0x1

    sget v21, Lccc71/pmw/lib/pmw_frequencies;->b:I

    mul-int v8, v8, v21

    div-int v8, v8, v17

    add-int/2addr v6, v8

    move-object/from16 v0, v20

    iput v6, v0, Lccc71/utils/aa;->a:I

    .line 384
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    move-object/from16 v0, v20

    iget v6, v0, Lccc71/utils/aa;->a:I

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    const/4 v6, 0x0

    move/from16 v24, v6

    move-object v6, v11

    move/from16 v11, v24

    :goto_11
    if-lt v11, v14, :cond_11

    .line 427
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 431
    new-instance v7, Landroid/widget/ProgressBar;

    const/4 v8, 0x0

    const v11, 0x1010078

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8, v11}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 432
    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 434
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/high16 v19, 0x4080

    mul-float v19, v19, v18

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v8, v11, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7, v8}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    add-int/lit8 v7, v12, 0x1

    move v12, v7

    move-object v11, v6

    goto/16 :goto_8

    .line 391
    :cond_11
    sget-object v6, Lccc71/pmw/lib/pmw_frequencies;->l:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 393
    sget-object v7, Lccc71/pmw/lib/pmw_frequencies;->k:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v11, :cond_13

    .line 395
    sget-object v7, Lccc71/pmw/lib/pmw_frequencies;->k:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 397
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 399
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    const/16 v21, 0x1

    aget v21, v6, v21

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int v6, v21, v6

    mul-int/lit8 v6, v6, 0xa

    int-to-long v6, v6

    .line 400
    const-wide/16 v21, 0x0

    cmp-long v21, v6, v21

    if-gez v21, :cond_12

    .line 401
    const-wide/16 v6, 0x0

    .line 402
    :cond_12
    invoke-static {v6, v7}, Lccc71/utils/ag;->e(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    move-object/from16 v0, v20

    iget-wide v0, v0, Lccc71/utils/aa;->b:J

    move-wide/from16 v21, v0

    add-long v21, v21, v6

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lccc71/utils/aa;->b:J

    .line 404
    add-long/2addr v6, v9

    .line 417
    :goto_12
    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 418
    move-object/from16 v0, p0

    iget v9, v0, Lccc71/pmw/lib/pmw_frequencies;->o:F

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 419
    sget v9, Lccc71/pmw/lib/pmw_frequencies;->d:I

    add-int/2addr v9, v11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setId(I)V

    .line 420
    move-object/from16 v0, p0

    iget-object v9, v0, Lccc71/pmw/lib/pmw_frequencies;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    const/4 v10, -0x2

    const/16 v21, -0x2

    move/from16 v0, v21

    invoke-direct {v9, v10, v0}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 423
    const/16 v10, 0xa

    const/16 v21, 0x0

    const/16 v22, 0xa

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v9, v10, v0, v1, v2}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 424
    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    add-int/lit8 v8, v11, 0x1

    move v11, v8

    move-wide/from16 v24, v6

    move-object v6, v9

    move-wide/from16 v9, v24

    goto/16 :goto_11

    .line 408
    :cond_13
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 409
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    const/4 v7, 0x1

    aget v6, v6, v7

    mul-int/lit8 v6, v6, 0xa

    int-to-long v6, v6

    .line 410
    invoke-static {v6, v7}, Lccc71/utils/ag;->e(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    move-object/from16 v0, v20

    iget-wide v0, v0, Lccc71/utils/aa;->b:J

    move-wide/from16 v21, v0

    add-long v21, v21, v6

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lccc71/utils/aa;->b:J

    .line 412
    add-long/2addr v6, v9

    goto :goto_12

    .line 442
    :cond_14
    mul-int/lit8 v6, v8, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 443
    const-class v7, Landroid/widget/TableRow;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 445
    check-cast v6, Landroid/widget/TableRow;

    .line 447
    const-wide/16 v14, 0x3e8

    add-int/lit8 v7, v8, -0x1

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccc71/utils/aa;

    iget-wide v0, v7, Lccc71/utils/aa;->b:J

    move-wide/from16 v17, v0

    mul-long v14, v14, v17

    div-long/2addr v14, v9

    long-to-int v7, v14

    .line 451
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 452
    div-int/lit8 v15, v7, 0xa

    int-to-long v0, v15

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Lccc71/utils/ag;->b(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    const/16 v15, 0x11

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 454
    move-object/from16 v0, p0

    iget v15, v0, Lccc71/pmw/lib/pmw_frequencies;->o:F

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 455
    sget v15, Lccc71/pmw/lib/pmw_frequencies;->e:I

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setId(I)V

    .line 456
    move-object/from16 v0, p0

    iget-object v15, v0, Lccc71/pmw/lib/pmw_frequencies;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    const/4 v15, 0x5

    const/16 v17, 0x0

    const/16 v18, 0x5

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v11, v15, v0, v1, v2}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 459
    move-object/from16 v0, v16

    invoke-virtual {v6, v14, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    mul-int/lit8 v6, v8, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 464
    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 440
    :cond_15
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto/16 :goto_9

    :cond_16
    move-wide v6, v7

    goto/16 :goto_f
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_frequencies;->i()V

    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_frequencies;->a(Z)V

    .line 107
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_frequencies;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_frequencies;->i()V

    .line 97
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onPause()V

    .line 98
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onResume()V

    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_frequencies;->a(Z)V

    .line 91
    return-void
.end method
