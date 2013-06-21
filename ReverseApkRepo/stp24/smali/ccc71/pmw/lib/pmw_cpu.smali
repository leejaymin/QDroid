.class public Lccc71/pmw/lib/pmw_cpu;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Lccc71/pmw/lib/pmw_cpu;


# instance fields
.field private A:Lccc71/pmw/b/t;

.field private B:Ljava/util/HashMap;

.field private C:Lccc71/pmw/b/t;

.field private D:I

.field private E:Ljava/lang/String;

.field private final F:Ljava/util/ArrayList;

.field private G:Landroid/view/View$OnClickListener;

.field private H:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private I:Landroid/view/View$OnClickListener;

.field private J:Landroid/view/View$OnClickListener;

.field private K:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private L:Landroid/view/View$OnClickListener;

.field private M:Landroid/view/View$OnClickListener;

.field private N:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private O:Landroid/os/Handler;

.field private P:Z

.field private final c:Landroid/os/Handler;

.field private d:Ljava/lang/Runnable;

.field private e:F

.field private f:F

.field private j:Lccc71/pmw/b/z;

.field private k:Lccc71/pmw/a/ah;

.field private l:Lccc71/pmw/a/ac;

.field private m:Z

.field private n:[I

.field private o:Z

.field private p:[Ljava/lang/String;

.field private q:[Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Lccc71/utils/ccc71_multi_graph_view;

.field private w:Lccc71/utils/ccc71_multi_graph_view;

.field private x:Lccc71/utils/ccc71_multi_graph_view;

.field private y:Lccc71/utils/ccc71_histogram_view;

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/pmw/lib/pmw_cpu;->a:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_cpu;->b:Lccc71/pmw/lib/pmw_cpu;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->c:Landroid/os/Handler;

    .line 50
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->d:Ljava/lang/Runnable;

    .line 58
    iput-boolean v2, p0, Lccc71/pmw/lib/pmw_cpu;->m:Z

    .line 60
    iput-boolean v2, p0, Lccc71/pmw/lib/pmw_cpu;->o:Z

    .line 63
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->q:[Landroid/widget/TextView;

    .line 65
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->r:Landroid/widget/TextView;

    .line 66
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->s:Landroid/widget/TextView;

    .line 67
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->t:Landroid/widget/TextView;

    .line 68
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->u:Landroid/widget/TextView;

    .line 70
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->v:Lccc71/utils/ccc71_multi_graph_view;

    .line 71
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->w:Lccc71/utils/ccc71_multi_graph_view;

    .line 72
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->x:Lccc71/utils/ccc71_multi_graph_view;

    .line 73
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->y:Lccc71/utils/ccc71_histogram_view;

    .line 75
    const/16 v0, 0xe10

    iput v0, p0, Lccc71/pmw/lib/pmw_cpu;->z:I

    .line 77
    new-instance v0, Lccc71/pmw/b/t;

    invoke-direct {v0}, Lccc71/pmw/b/t;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->A:Lccc71/pmw/b/t;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->B:Ljava/util/HashMap;

    .line 79
    new-instance v0, Lccc71/pmw/b/t;

    invoke-direct {v0}, Lccc71/pmw/b/t;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->C:Lccc71/pmw/b/t;

    .line 80
    iput v2, p0, Lccc71/pmw/lib/pmw_cpu;->D:I

    .line 81
    const-string v0, "offline"

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->E:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->F:Ljava/util/ArrayList;

    .line 436
    new-instance v0, Lccc71/pmw/lib/eb;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/eb;-><init>(Lccc71/pmw/lib/pmw_cpu;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->G:Landroid/view/View$OnClickListener;

    .line 448
    new-instance v0, Lccc71/pmw/lib/eh;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/eh;-><init>(Lccc71/pmw/lib/pmw_cpu;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->H:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 559
    new-instance v0, Lccc71/pmw/lib/ej;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ej;-><init>(Lccc71/pmw/lib/pmw_cpu;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->I:Landroid/view/View$OnClickListener;

    .line 601
    new-instance v0, Lccc71/pmw/lib/el;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/el;-><init>(Lccc71/pmw/lib/pmw_cpu;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->J:Landroid/view/View$OnClickListener;

    .line 643
    new-instance v0, Lccc71/pmw/lib/en;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/en;-><init>(Lccc71/pmw/lib/pmw_cpu;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->K:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 733
    new-instance v0, Lccc71/pmw/lib/ep;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ep;-><init>(Lccc71/pmw/lib/pmw_cpu;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->L:Landroid/view/View$OnClickListener;

    .line 775
    new-instance v0, Lccc71/pmw/lib/er;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/er;-><init>(Lccc71/pmw/lib/pmw_cpu;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->M:Landroid/view/View$OnClickListener;

    .line 817
    new-instance v0, Lccc71/pmw/lib/et;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/et;-><init>(Lccc71/pmw/lib/pmw_cpu;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->N:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 909
    new-instance v0, Lccc71/pmw/lib/ev;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ev;-><init>(Lccc71/pmw/lib/pmw_cpu;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->O:Landroid/os/Handler;

    .line 1031
    iput-boolean v2, p0, Lccc71/pmw/lib/pmw_cpu;->P:Z

    .line 43
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->h()Lccc71/pmw/a/ah;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_cpu;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 548
    invoke-virtual {p0, p1}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->n:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0, p2}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_cpu;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 996
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_cpu;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_cpu;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1031
    iput-boolean p1, p0, Lccc71/pmw/lib/pmw_cpu;->P:Z

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_cpu;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lccc71/pmw/lib/pmw_cpu;->n:[I

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_cpu;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lccc71/pmw/lib/pmw_cpu;->p:[Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 963
    sget-object v1, Lccc71/pmw/lib/pmw_cpu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 965
    :try_start_0
    const-string v0, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pmw_cpu, updateCPUData: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/lib/pmw_cpu;->b:Lccc71/pmw/lib/pmw_cpu;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    sget-object v0, Lccc71/pmw/lib/pmw_cpu;->b:Lccc71/pmw/lib/pmw_cpu;

    if-eqz v0, :cond_0

    .line 969
    sget-object v0, Lccc71/pmw/lib/pmw_cpu;->b:Lccc71/pmw/lib/pmw_cpu;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_cpu;->c:Landroid/os/Handler;

    new-instance v2, Lccc71/pmw/lib/ef;

    invoke-direct {v2, p0}, Lccc71/pmw/lib/ef;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 963
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Z)V
    .locals 11
    .parameter

    .prologue
    .line 221
    if-eqz p1, :cond_e

    .line 223
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->y(Landroid/content/Context;)Lccc71/pmw/a/ac;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->l:Lccc71/pmw/a/ac;

    .line 224
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_cpu;->e:F

    .line 225
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->e(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_cpu;->f:F

    .line 227
    new-instance v0, Lccc71/pmw/b/z;

    invoke-direct {v0}, Lccc71/pmw/b/z;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->j:Lccc71/pmw/b/z;

    .line 229
    sget-boolean v0, Lccc71/pmw/a/ah;->j:Z

    if-eqz v0, :cond_0

    .line 231
    sget v0, Lccc71/pmw/lib/g;->et:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    :cond_0
    sget v0, Lccc71/pmw/lib/e;->bg:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->setContentView(I)V

    .line 237
    sget v0, Lccc71/pmw/lib/d;->jT:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 238
    iget v1, p0, Lccc71/pmw/lib/pmw_cpu;->e:F

    const/high16 v2, 0x4000

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 239
    sget v0, Lccc71/pmw/lib/d;->iG:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 240
    iget v1, p0, Lccc71/pmw/lib/pmw_cpu;->e:F

    const/high16 v2, 0x4000

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 241
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->j:Lccc71/pmw/b/z;

    invoke-virtual {v1}, Lccc71/pmw/b/z;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-static {}, Lccc71/pmw/a/ah;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 245
    sget v0, Lccc71/pmw/lib/d;->iU:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 246
    iget v1, p0, Lccc71/pmw/lib/pmw_cpu;->e:F

    const/high16 v2, 0x4000

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 247
    sget v0, Lccc71/pmw/lib/d;->aW:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->u:Landroid/widget/TextView;

    .line 248
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->u:Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_cpu;->e:F

    const/high16 v2, 0x4000

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 250
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->u:Landroid/widget/TextView;

    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->h()Lccc71/pmw/a/ah;

    move-result-object v1

    invoke-virtual {v1}, Lccc71/pmw/a/ah;->m()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :goto_0
    sget v0, Lccc71/pmw/lib/d;->jY:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    iget v1, p0, Lccc71/pmw/lib/pmw_cpu;->e:F

    const/high16 v2, 0x4000

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 262
    sget v0, Lccc71/pmw/lib/d;->kf:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->t:Landroid/widget/TextView;

    .line 263
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->t:Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_cpu;->e:F

    const/high16 v2, 0x4000

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 264
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->j:Lccc71/pmw/b/z;

    invoke-virtual {v1}, Lccc71/pmw/b/z;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Lccc71/utils/ag;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    sget v0, Lccc71/pmw/lib/d;->iX:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 267
    iget v1, p0, Lccc71/pmw/lib/pmw_cpu;->e:F

    const/high16 v2, 0x4000

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 268
    sget v0, Lccc71/pmw/lib/d;->ba:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 269
    iget v1, p0, Lccc71/pmw/lib/pmw_cpu;->e:F

    const/high16 v2, 0x4000

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 270
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->j:Lccc71/pmw/b/z;

    invoke-virtual {v1}, Lccc71/pmw/b/z;->f()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Lccc71/utils/ag;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aD(Landroid/content/Context;)I

    move-result v2

    .line 273
    sget v0, Lccc71/pmw/lib/d;->kg:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->r:Landroid/widget/TextView;

    .line 274
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->r:Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_cpu;->f:F

    const/high16 v3, 0x4080

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 275
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->r:Landroid/widget/TextView;

    invoke-static {v2}, Lccc71/utils/ag;->e(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    sget v0, Lccc71/pmw/lib/d;->bi:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->s:Landroid/widget/TextView;

    .line 277
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->s:Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_cpu;->f:F

    const/high16 v3, 0x4080

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 278
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->s:Landroid/widget/TextView;

    invoke-static {v2}, Lccc71/utils/ag;->f(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    sget v0, Lccc71/pmw/lib/d;->aL:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 284
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->h()Lccc71/pmw/a/ah;

    .line 285
    sget v3, Lccc71/pmw/a/ah;->b:I

    .line 286
    mul-int/lit8 v1, v3, 0x2

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->q:[Landroid/widget/TextView;

    .line 287
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_7

    .line 321
    sget v0, Lccc71/pmw/lib/d;->iR:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 322
    iget v1, p0, Lccc71/pmw/lib/pmw_cpu;->e:F

    const/high16 v2, 0x4000

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 323
    sget v0, Lccc71/pmw/lib/d;->iT:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 324
    iget v1, p0, Lccc71/pmw/lib/pmw_cpu;->e:F

    const/high16 v2, 0x4000

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 325
    sget v0, Lccc71/pmw/lib/d;->iS:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 326
    iget v1, p0, Lccc71/pmw/lib/pmw_cpu;->e:F

    const/high16 v2, 0x4000

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 327
    sget v0, Lccc71/pmw/lib/d;->iV:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 328
    iget v1, p0, Lccc71/pmw/lib/pmw_cpu;->e:F

    const/high16 v2, 0x4000

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->b(Ljava/lang/String;)V

    .line 331
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->j()V

    .line 333
    sget v0, Lccc71/pmw/lib/d;->n:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 334
    if-eqz v0, :cond_3

    .line 336
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->G:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->p:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->p:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_9

    :cond_1
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->n:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->n:[I

    array-length v1, v1

    if-nez v1, :cond_9

    .line 338
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 343
    :cond_3
    :goto_2
    sget v0, Lccc71/pmw/lib/d;->aN:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_multi_graph_view;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->v:Lccc71/utils/ccc71_multi_graph_view;

    .line 344
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->v:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_multi_graph_view;->invalidate()V

    .line 345
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->A:Lccc71/pmw/b/t;

    sget v1, Lccc71/pmw/lib/g;->dv:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_cpu;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->C:Lccc71/pmw/b/t;

    const-string v1, "Temperature"

    iput-object v1, v0, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->C:Lccc71/pmw/b/t;

    const/16 v1, -0x40

    iput v1, v0, Lccc71/pmw/b/t;->a:I

    .line 348
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->C:Lccc71/pmw/b/t;

    const v1, -0x7f7f01

    iput v1, v0, Lccc71/pmw/b/t;->b:I

    .line 350
    invoke-static {}, Lccc71/pmw/a/ah;->t()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 352
    sget v0, Lccc71/pmw/lib/d;->aK:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_multi_graph_view;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->w:Lccc71/utils/ccc71_multi_graph_view;

    .line 359
    :goto_3
    invoke-static {}, Lccc71/pmw/a/ah;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 361
    sget v0, Lccc71/pmw/lib/d;->aX:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_multi_graph_view;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->x:Lccc71/utils/ccc71_multi_graph_view;

    .line 368
    :goto_4
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->B:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 370
    sget v0, Lccc71/pmw/lib/g;->dy:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 371
    const/4 v0, 0x0

    :goto_5
    sget v2, Lccc71/pmw/a/ah;->b:I

    if-lt v0, v2, :cond_c

    .line 381
    :cond_4
    sget v0, Lccc71/pmw/lib/d;->aY:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 382
    sget v0, Lccc71/pmw/lib/d;->fQ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_histogram_view;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->y:Lccc71/utils/ccc71_histogram_view;

    .line 383
    invoke-static {}, Lccc71/pmw/a/ah;->w()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 385
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 397
    :cond_5
    :goto_6
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->c:Landroid/os/Handler;

    new-instance v2, Lccc71/pmw/lib/ec;

    invoke-direct {v2, p0}, Lccc71/pmw/lib/ec;-><init>(Lccc71/pmw/lib/pmw_cpu;)V

    iput-object v2, p0, Lccc71/pmw/lib/pmw_cpu;->d:Ljava/lang/Runnable;

    .line 433
    if-eqz p1, :cond_f

    const/4 v0, 0x0

    :goto_7
    int-to-long v3, v0

    .line 397
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    :goto_8
    return-void

    .line 254
    :cond_6
    sget v0, Lccc71/pmw/lib/d;->iU:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 255
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    sget v0, Lccc71/pmw/lib/d;->aW:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 289
    :cond_7
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 290
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/high16 v8, 0x3f80

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 293
    const/4 v5, 0x1

    if-le v3, v5, :cond_8

    .line 295
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 296
    iget v6, p0, Lccc71/pmw/lib/pmw_cpu;->f:F

    const/high16 v7, 0x4080

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    sget v7, Lccc71/pmw/lib/g;->dv:I

    invoke-virtual {p0, v7}, Lccc71/pmw/lib/pmw_cpu;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    :cond_8
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 302
    iget v6, p0, Lccc71/pmw/lib/pmw_cpu;->f:F

    const/high16 v7, 0x4080

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 303
    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    invoke-static {v2}, Lccc71/utils/ag;->e(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 306
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/high16 v9, 0x3f80

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 309
    iget v7, p0, Lccc71/pmw/lib/pmw_cpu;->f:F

    const/high16 v8, 0x4080

    sub-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 310
    invoke-static {v2}, Lccc71/utils/ag;->f(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 312
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/high16 v10, 0x3f80

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v7, p0, Lccc71/pmw/lib/pmw_cpu;->q:[Landroid/widget/TextView;

    mul-int/lit8 v8, v1, 0x2

    aput-object v5, v7, v8

    .line 316
    iget-object v5, p0, Lccc71/pmw/lib/pmw_cpu;->q:[Landroid/widget/TextView;

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    aput-object v6, v5, v7

    .line 318
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 340
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 356
    :cond_a
    sget v0, Lccc71/pmw/lib/d;->aK:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 365
    :cond_b
    sget v0, Lccc71/pmw/lib/d;->aX:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 373
    :cond_c
    new-instance v2, Lccc71/pmw/b/t;

    invoke-direct {v2}, Lccc71/pmw/b/t;-><init>()V

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    .line 375
    rsub-int/lit8 v3, v0, -0x10

    iput v3, v2, Lccc71/pmw/b/t;->a:I

    .line 376
    const v3, -0xffff01

    sget v4, Lccc71/pmw/a/ah;->b:I

    mul-int/lit16 v4, v4, 0x1000

    add-int/2addr v3, v4

    iput v3, v2, Lccc71/pmw/b/t;->b:I

    .line 377
    iget-object v3, p0, Lccc71/pmw/lib/pmw_cpu;->B:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 389
    :cond_d
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 392
    :cond_e
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    goto/16 :goto_8

    .line 433
    :cond_f
    const/16 v0, 0x3e8

    goto/16 :goto_7
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_cpu;)V
    .locals 4
    .parameter

    .prologue
    .line 899
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->O:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_cpu;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->O:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 998
    sget v0, Lccc71/pmw/lib/d;->aM:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 999
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->h()Lccc71/pmw/a/ah;

    move-result-object v1

    invoke-virtual {v1}, Lccc71/pmw/a/ah;->e()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->p:[Ljava/lang/String;

    .line 1001
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->p:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->p:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_2

    .line 1003
    sget v1, Lccc71/pmw/lib/d;->it:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1004
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccc71/pmw/lib/pmw_cpu;->o:Z

    .line 1007
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    iget-object v3, p0, Lccc71/pmw/lib/pmw_cpu;->p:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1008
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1009
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1010
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_cpu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->eR:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 1012
    if-eqz p1, :cond_1

    .line 1013
    :goto_0
    iget-object v2, p0, Lccc71/pmw/lib/pmw_cpu;->l:Lccc71/pmw/a/ac;

    iput-object p1, v2, Lccc71/pmw/a/ac;->a:Ljava/lang/String;

    .line 1015
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1017
    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1019
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->H:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1021
    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-nez v1, :cond_0

    .line 1022
    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1029
    :cond_0
    :goto_1
    return-void

    .line 1012
    :cond_1
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->h()Lccc71/pmw/a/ah;

    move-result-object v2

    invoke-virtual {v2}, Lccc71/pmw/a/ah;->g()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1026
    :cond_2
    iput-boolean v4, p0, Lccc71/pmw/lib/pmw_cpu;->o:Z

    .line 1027
    sget v0, Lccc71/pmw/lib/d;->it:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ac;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->l:Lccc71/pmw/a/ac;

    return-object v0
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_cpu;)[I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->n:[I

    return-object v0
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_cpu;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_cpu;->o:Z

    return v0
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_cpu;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->p:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Lccc71/pmw/lib/pmw_cpu;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lccc71/pmw/lib/pmw_cpu;->b:Lccc71/pmw/lib/pmw_cpu;

    return-object v0
.end method

.method static synthetic g(Lccc71/pmw/lib/pmw_cpu;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_cpu;->m:Z

    return v0
.end method

.method private h()Lccc71/pmw/a/ah;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->k:Lccc71/pmw/a/ah;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lccc71/pmw/a/ah;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lccc71/pmw/a/ah;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->k:Lccc71/pmw/a/ah;

    .line 112
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->k:Lccc71/pmw/a/ah;

    return-object v0
.end method

.method static synthetic h(Lccc71/pmw/lib/pmw_cpu;)V
    .locals 0
    .parameter

    .prologue
    .line 1033
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->j()V

    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->c:Landroid/os/Handler;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->d:Ljava/lang/Runnable;

    .line 217
    return-void
.end method

.method static synthetic i(Lccc71/pmw/lib/pmw_cpu;)V
    .locals 1
    .parameter

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->a(Z)V

    return-void
.end method

.method static synthetic j(Lccc71/pmw/lib/pmw_cpu;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 436
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->G:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private j()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1035
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_cpu;->P:Z

    if-eqz v0, :cond_1

    .line 1106
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->h()Lccc71/pmw/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/a/ah;->f()[I

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->n:[I

    .line 1039
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->n:[I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->n:[I

    array-length v0, v0

    if-eqz v0, :cond_7

    .line 1041
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_cpu;->m:Z

    .line 1042
    sget v0, Lccc71/pmw/lib/d;->iu:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    sget v0, Lccc71/pmw/lib/d;->iv:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->h()Lccc71/pmw/a/ah;

    invoke-static {}, Lccc71/pmw/a/ah;->i()I

    move-result v2

    .line 1046
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->h()Lccc71/pmw/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/a/ah;->h()I

    move-result v3

    .line 1047
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->l:Lccc71/pmw/a/ac;

    iput v2, v0, Lccc71/pmw/a/ac;->b:I

    .line 1048
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->l:Lccc71/pmw/a/ac;

    iput v3, v0, Lccc71/pmw/a/ac;->c:I

    .line 1050
    sget v0, Lccc71/pmw/lib/d;->aR:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 1051
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->n:[I

    iget-object v4, p0, Lccc71/pmw/lib/pmw_cpu;->n:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v1, v1, v4

    iget-object v4, p0, Lccc71/pmw/lib/pmw_cpu;->n:[I

    aget v4, v4, v5

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1052
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->n:[I

    aget v1, v1, v5

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1053
    sget v1, Lccc71/pmw/lib/d;->iT:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1054
    invoke-static {v2}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->N:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1056
    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-nez v1, :cond_2

    .line 1057
    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1059
    :cond_2
    sget v0, Lccc71/pmw/lib/d;->aO:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 1060
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->n:[I

    iget-object v2, p0, Lccc71/pmw/lib/pmw_cpu;->n:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lccc71/pmw/lib/pmw_cpu;->n:[I

    aget v2, v2, v5

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1061
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->n:[I

    aget v1, v1, v5

    sub-int v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1062
    sget v1, Lccc71/pmw/lib/d;->iS:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1063
    invoke-static {v3}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->K:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1065
    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-nez v1, :cond_3

    .line 1066
    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1068
    :cond_3
    sget v0, Lccc71/pmw/lib/d;->aP:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1069
    if-eqz v0, :cond_4

    .line 1071
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1072
    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-nez v1, :cond_4

    .line 1073
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1076
    :cond_4
    sget v0, Lccc71/pmw/lib/d;->aQ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1077
    if-eqz v0, :cond_5

    .line 1079
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1080
    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-nez v1, :cond_5

    .line 1081
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1084
    :cond_5
    sget v0, Lccc71/pmw/lib/d;->aS:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1085
    if-eqz v0, :cond_6

    .line 1087
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-nez v1, :cond_6

    .line 1089
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1092
    :cond_6
    sget v0, Lccc71/pmw/lib/d;->aT:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1093
    if-eqz v0, :cond_0

    .line 1095
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-nez v1, :cond_0

    .line 1097
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1102
    :cond_7
    iput-boolean v5, p0, Lccc71/pmw/lib/pmw_cpu;->m:Z

    .line 1103
    sget v0, Lccc71/pmw/lib/d;->iu:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    sget v0, Lccc71/pmw/lib/d;->iv:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lccc71/pmw/lib/c;->az:I

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lccc71/pmw/lib/g;->bk:I

    return v0
.end method

.method protected final b_()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_cpu;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_cpu;->getPackageName()Ljava/lang/String;

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

    .line 102
    const-string v1, "ccc71.pmw.tweak_id"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    return-object v0
.end method

.method final e()V
    .locals 3

    .prologue
    .line 930
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 931
    sget v1, Lccc71/pmw/lib/g;->eF:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 932
    const v1, 0x1040013

    new-instance v2, Lccc71/pmw/lib/ed;

    invoke-direct {v2, p0}, Lccc71/pmw/lib/ed;-><init>(Lccc71/pmw/lib/pmw_cpu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 957
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 958
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 959
    return-void
.end method

.method final f()V
    .locals 14

    .prologue
    const/16 v11, 0xe10

    const/16 v4, 0x12c

    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x2

    .line 1124
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->h()Lccc71/pmw/a/ah;

    invoke-static {}, Lccc71/pmw/a/ah;->d()I

    move-result v0

    .line 1125
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->A:Lccc71/pmw/b/t;

    iget-object v1, v1, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    mul-int/lit8 v3, v0, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->A:Lccc71/pmw/b/t;

    iget-object v1, v1, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v11, :cond_0

    .line 1128
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->A:Lccc71/pmw/b/t;

    iget-object v1, v1, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1131
    :cond_0
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->r:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v5, v0

    invoke-direct {v3, v10, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1132
    const/16 v1, 0xa

    if-le v0, v1, :cond_5

    .line 1133
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->r:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    :goto_0
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->s:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    rsub-int/lit8 v5, v0, 0x64

    int-to-float v5, v5

    invoke-direct {v3, v10, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1138
    const/16 v1, 0xa

    if-gt v0, v1, :cond_6

    .line 1139
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->s:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    :goto_1
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->h()Lccc71/pmw/a/ah;

    invoke-static {}, Lccc71/pmw/a/ah;->a()I

    move-result v1

    move v3, v9

    .line 1144
    :goto_2
    if-lt v3, v1, :cond_7

    .line 1177
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->x:Lccc71/utils/ccc71_multi_graph_view;

    if-eqz v0, :cond_1

    .line 1179
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->h()Lccc71/pmw/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/a/ah;->m()I

    move-result v0

    .line 1180
    iget-object v3, p0, Lccc71/pmw/lib/pmw_cpu;->u:Landroid/widget/TextView;

    iget v5, p0, Lccc71/pmw/lib/pmw_cpu;->D:I

    int-to-float v6, v0

    invoke-static {v5, v6}, Lccc71/pmw/lib/pmw_settings;->a(IF)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    iget-object v3, p0, Lccc71/pmw/lib/pmw_cpu;->C:Lccc71/pmw/b/t;

    iget-object v3, v3, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    iget v5, p0, Lccc71/pmw/lib/pmw_cpu;->D:I

    int-to-float v0, v0

    invoke-static {v5, v0}, Lccc71/pmw/lib/pmw_settings;->c(IF)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->C:Lccc71/pmw/b/t;

    iget-object v0, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v11, :cond_1

    .line 1184
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->C:Lccc71/pmw/b/t;

    iget-object v0, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1187
    :cond_1
    sget v3, Lccc71/pmw/a/ah;->b:I

    move v0, v1

    .line 1188
    :goto_3
    if-lt v0, v3, :cond_b

    .line 1198
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->v:Lccc71/utils/ccc71_multi_graph_view;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->A:Lccc71/pmw/b/t;

    const-string v5, "CPU Load"

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lccc71/utils/ccc71_multi_graph_view;->setData(Lccc71/pmw/b/t;ZIILjava/lang/String;Ljava/util/Date;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->w:Lccc71/utils/ccc71_multi_graph_view;

    if-eqz v0, :cond_2

    iget-object v7, p0, Lccc71/pmw/lib/pmw_cpu;->w:Lccc71/utils/ccc71_multi_graph_view;

    iget-object v8, p0, Lccc71/pmw/lib/pmw_cpu;->B:Ljava/util/HashMap;

    const-string v12, "CPU Frequencies"

    move v10, v2

    move v11, v4

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Lccc71/utils/ccc71_multi_graph_view;->setData(Ljava/util/HashMap;ZIILjava/lang/String;Ljava/util/Date;)V

    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->x:Lccc71/utils/ccc71_multi_graph_view;

    if-eqz v0, :cond_3

    iget-object v7, p0, Lccc71/pmw/lib/pmw_cpu;->x:Lccc71/utils/ccc71_multi_graph_view;

    iget-object v8, p0, Lccc71/pmw/lib/pmw_cpu;->C:Lccc71/pmw/b/t;

    const-string v12, "CPU Temperatures"

    move v10, v2

    move v11, v4

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Lccc71/utils/ccc71_multi_graph_view;->setData(Lccc71/pmw/b/t;ZIILjava/lang/String;Ljava/util/Date;)V

    .line 1200
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->j:Lccc71/pmw/b/z;

    invoke-virtual {v1}, Lccc71/pmw/b/z;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Lccc71/utils/ag;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    invoke-static {}, Lccc71/pmw/a/ah;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1206
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->h()Lccc71/pmw/a/ah;

    invoke-static {}, Lccc71/pmw/a/ah;->a()I

    move-result v1

    .line 1207
    :goto_4
    if-lt v9, v1, :cond_c

    .line 1215
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->y:Lccc71/utils/ccc71_histogram_view;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_cpu;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Lccc71/utils/ccc71_histogram_view;->setTimes(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1217
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->y:Lccc71/utils/ccc71_histogram_view;

    new-instance v1, Lccc71/pmw/lib/eg;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/eg;-><init>(Lccc71/pmw/lib/pmw_cpu;)V

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_histogram_view;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1230
    :cond_4
    return-void

    .line 1135
    :cond_5
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->r:Landroid/widget/TextView;

    const-string v3, "."

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1141
    :cond_6
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->s:Landroid/widget/TextView;

    const-string v1, "."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1146
    :cond_7
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->h()Lccc71/pmw/a/ah;

    move-result-object v0

    invoke-virtual {v0, v3}, Lccc71/pmw/a/ah;->g(I)I

    move-result v5

    .line 1148
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->w:Lccc71/utils/ccc71_multi_graph_view;

    if-eqz v0, :cond_8

    .line 1150
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->B:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    .line 1151
    iget-object v6, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    div-int/lit8 v7, v5, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    iget-object v6, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v11, :cond_8

    .line 1153
    iget-object v0, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1156
    :cond_8
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->h()Lccc71/pmw/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/a/ah;->v()I

    move-result v6

    .line 1158
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->q:[Landroid/widget/TextView;

    mul-int/lit8 v7, v3, 0x2

    aget-object v7, v0, v7

    .line 1160
    invoke-virtual {v7}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1161
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1163
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v8, v6

    invoke-direct {v0, v10, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1164
    const/16 v0, 0x32

    if-le v6, v0, :cond_9

    .line 1165
    invoke-static {v5}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    :goto_5
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->q:[Landroid/widget/TextView;

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-object v0, v0, v7

    .line 1170
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    rsub-int/lit8 v8, v6, 0x64

    int-to-float v8, v8

    invoke-direct {v7, v10, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1171
    const/16 v7, 0x32

    if-gt v6, v7, :cond_a

    .line 1172
    invoke-static {v5}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    .line 1167
    :cond_9
    const-string v0, "."

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1174
    :cond_a
    const-string v5, "."

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1190
    :cond_b
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->q:[Landroid/widget/TextView;

    mul-int/lit8 v5, v0, 0x2

    aget-object v1, v1, v5

    .line 1191
    const-string v5, "."

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1192
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    invoke-direct {v5, v10, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    iget-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->q:[Landroid/widget/TextView;

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v1, v1, v5

    .line 1194
    iget-object v5, p0, Lccc71/pmw/lib/pmw_cpu;->E:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42c8

    invoke-direct {v5, v10, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1188
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 1209
    :cond_c
    iget-object v2, p0, Lccc71/pmw/lib/pmw_cpu;->k:Lccc71/pmw/a/ah;

    invoke-static {v9}, Lccc71/pmw/a/ah;->h(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1210
    if-eqz v2, :cond_d

    .line 1212
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 206
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->i()V

    .line 207
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->a(Z)V

    .line 209
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 210
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aL(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_cpu;->D:I

    .line 121
    sget v0, Lccc71/pmw/lib/g;->ev:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->E:Ljava/lang/String;

    .line 122
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 180
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->A:Lccc71/pmw/b/t;

    .line 181
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->B:Ljava/util/HashMap;

    .line 182
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->C:Lccc71/pmw/b/t;

    .line 183
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->j:Lccc71/pmw/b/z;

    .line 184
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->k:Lccc71/pmw/a/ah;

    .line 185
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->l:Lccc71/pmw/a/ac;

    .line 186
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 187
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->q:[Landroid/widget/TextView;

    .line 188
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->p:[Ljava/lang/String;

    .line 189
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->n:[I

    .line 190
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->r:Landroid/widget/TextView;

    .line 191
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->s:Landroid/widget/TextView;

    .line 192
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->t:Landroid/widget/TextView;

    .line 193
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->u:Landroid/widget/TextView;

    .line 194
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->v:Lccc71/utils/ccc71_multi_graph_view;

    .line 195
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->w:Lccc71/utils/ccc71_multi_graph_view;

    .line 196
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->x:Lccc71/utils/ccc71_multi_graph_view;

    .line 197
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->y:Lccc71/utils/ccc71_histogram_view;

    .line 198
    iput-object v1, p0, Lccc71/pmw/lib/pmw_cpu;->d:Ljava/lang/Runnable;

    .line 200
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 201
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->i()V

    .line 144
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onPause()V

    .line 146
    sget-object v1, Lccc71/pmw/lib/pmw_cpu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lccc71/pmw/lib/pmw_cpu;->b:Lccc71/pmw/lib/pmw_cpu;

    .line 146
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->l:Lccc71/pmw/a/ac;

    invoke-static {p0, v0}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;Lccc71/pmw/a/ac;)V

    .line 154
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->R(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 158
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->h()Lccc71/pmw/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/pmw/a/ah;->h(Landroid/content/Context;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->O:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lccc71/pmw/lib/pmw_cpu;->O:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_cpu;->e()V

    .line 166
    :cond_1
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 127
    sget v0, Lccc71/pmw/lib/e;->bg:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->setContentView(I)V

    .line 129
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onResume()V

    .line 131
    sget-object v1, Lccc71/pmw/lib/pmw_cpu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    sput-object p0, Lccc71/pmw/lib/pmw_cpu;->b:Lccc71/pmw/lib/pmw_cpu;

    .line 131
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_cpu;->a(Z)V

    .line 137
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onStop()V

    .line 172
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_cpu;->i()V

    .line 173
    return-void
.end method
