.class public Lccc71/pmw/lib/pmw_monitor;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# static fields
.field static a:Lccc71/pmw/lib/pmw_monitor;

.field public static b:Z

.field private static u:Lccc71/pmw/b/q;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Ljava/lang/String;

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:F

.field private S:F

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field private X:I

.field private Y:I

.field private Z:I

.field private aa:I

.field private ab:I

.field private ac:Z

.field private ad:Lccc71/utils/ccc71_multi_graph_view;

.field private ae:I

.field c:Landroid/view/View$OnClickListener;

.field d:Landroid/view/View$OnClickListener;

.field e:Landroid/view/View$OnClickListener;

.field f:Landroid/view/View$OnClickListener;

.field j:Landroid/view/View$OnClickListener;

.field k:Landroid/view/View$OnClickListener;

.field l:Landroid/view/View$OnClickListener;

.field m:Landroid/view/View$OnClickListener;

.field n:Landroid/view/View$OnClickListener;

.field o:Landroid/view/View$OnClickListener;

.field p:Landroid/view/View$OnClickListener;

.field q:Landroid/view/View$OnClickListener;

.field r:Landroid/view/View$OnClickListener;

.field s:Landroid/view/View$OnClickListener;

.field t:Lccc71/utils/v;

.field private v:Lccc71/pmw/b/k;

.field private w:Lccc71/pmw/b/u;

.field private x:Lccc71/pmw/b/z;

.field private y:Lccc71/pmw/a/ah;

.field private z:[Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-object v0, Lccc71/pmw/lib/pmw_monitor;->a:Lccc71/pmw/lib/pmw_monitor;

    .line 44
    sput-object v0, Lccc71/pmw/lib/pmw_monitor;->u:Lccc71/pmw/b/q;

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/pmw/lib/pmw_monitor;->b:Z

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x4180

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 45
    iput-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->v:Lccc71/pmw/b/k;

    .line 46
    iput-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->w:Lccc71/pmw/b/u;

    .line 47
    iput-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->x:Lccc71/pmw/b/z;

    .line 48
    iput-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->y:Lccc71/pmw/a/ah;

    .line 50
    iput-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->z:[Landroid/widget/TextView;

    .line 52
    iput-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->A:Landroid/widget/TextView;

    .line 53
    iput-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->B:Landroid/widget/TextView;

    .line 55
    iput-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->C:Landroid/widget/TextView;

    .line 56
    iput-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->D:Landroid/widget/TextView;

    .line 58
    iput-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->E:Landroid/widget/TextView;

    .line 59
    iput-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->F:Landroid/widget/TextView;

    .line 61
    iput-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->G:Landroid/widget/TextView;

    .line 62
    iput-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->H:Landroid/widget/TextView;

    .line 64
    const-string v0, "offline"

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->I:Ljava/lang/String;

    .line 68
    iput-boolean v2, p0, Lccc71/pmw/lib/pmw_monitor;->J:Z

    .line 69
    iput-boolean v2, p0, Lccc71/pmw/lib/pmw_monitor;->K:Z

    .line 70
    iput-boolean v2, p0, Lccc71/pmw/lib/pmw_monitor;->L:Z

    .line 71
    iput-boolean v2, p0, Lccc71/pmw/lib/pmw_monitor;->M:Z

    .line 72
    iput-boolean v2, p0, Lccc71/pmw/lib/pmw_monitor;->N:Z

    .line 73
    iput-boolean v2, p0, Lccc71/pmw/lib/pmw_monitor;->O:Z

    .line 74
    iput-boolean v2, p0, Lccc71/pmw/lib/pmw_monitor;->P:Z

    .line 75
    iput-boolean v2, p0, Lccc71/pmw/lib/pmw_monitor;->Q:Z

    .line 76
    iput v3, p0, Lccc71/pmw/lib/pmw_monitor;->R:F

    .line 77
    iput v3, p0, Lccc71/pmw/lib/pmw_monitor;->S:F

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->ab:I

    .line 93
    iput-boolean v2, p0, Lccc71/pmw/lib/pmw_monitor;->ac:Z

    .line 97
    iput-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->ad:Lccc71/utils/ccc71_multi_graph_view;

    .line 873
    new-instance v0, Lccc71/pmw/lib/in;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/in;-><init>(Lccc71/pmw/lib/pmw_monitor;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->c:Landroid/view/View$OnClickListener;

    .line 908
    new-instance v0, Lccc71/pmw/lib/ix;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ix;-><init>(Lccc71/pmw/lib/pmw_monitor;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->d:Landroid/view/View$OnClickListener;

    .line 927
    new-instance v0, Lccc71/pmw/lib/iy;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/iy;-><init>(Lccc71/pmw/lib/pmw_monitor;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->e:Landroid/view/View$OnClickListener;

    .line 946
    new-instance v0, Lccc71/pmw/lib/iz;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/iz;-><init>(Lccc71/pmw/lib/pmw_monitor;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->f:Landroid/view/View$OnClickListener;

    .line 965
    new-instance v0, Lccc71/pmw/lib/ja;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ja;-><init>(Lccc71/pmw/lib/pmw_monitor;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->j:Landroid/view/View$OnClickListener;

    .line 991
    new-instance v0, Lccc71/pmw/lib/jc;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/jc;-><init>(Lccc71/pmw/lib/pmw_monitor;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->k:Landroid/view/View$OnClickListener;

    .line 1001
    new-instance v0, Lccc71/pmw/lib/jd;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/jd;-><init>(Lccc71/pmw/lib/pmw_monitor;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->l:Landroid/view/View$OnClickListener;

    .line 1031
    new-instance v0, Lccc71/pmw/lib/je;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/je;-><init>(Lccc71/pmw/lib/pmw_monitor;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->m:Landroid/view/View$OnClickListener;

    .line 1060
    new-instance v0, Lccc71/pmw/lib/jf;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/jf;-><init>(Lccc71/pmw/lib/pmw_monitor;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->n:Landroid/view/View$OnClickListener;

    .line 1090
    new-instance v0, Lccc71/pmw/lib/io;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/io;-><init>(Lccc71/pmw/lib/pmw_monitor;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->o:Landroid/view/View$OnClickListener;

    .line 1108
    new-instance v0, Lccc71/pmw/lib/ip;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ip;-><init>(Lccc71/pmw/lib/pmw_monitor;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->p:Landroid/view/View$OnClickListener;

    .line 1126
    new-instance v0, Lccc71/pmw/lib/iq;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/iq;-><init>(Lccc71/pmw/lib/pmw_monitor;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->q:Landroid/view/View$OnClickListener;

    .line 1144
    new-instance v0, Lccc71/pmw/lib/ir;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ir;-><init>(Lccc71/pmw/lib/pmw_monitor;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->r:Landroid/view/View$OnClickListener;

    .line 1162
    new-instance v0, Lccc71/pmw/lib/is;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/is;-><init>(Lccc71/pmw/lib/pmw_monitor;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->s:Landroid/view/View$OnClickListener;

    .line 1180
    new-instance v0, Lccc71/pmw/lib/it;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/it;-><init>(Lccc71/pmw/lib/pmw_monitor;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->t:Lccc71/utils/v;

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;)Lccc71/pmw/b/q;
    .locals 2
    .parameter

    .prologue
    .line 103
    sget-object v0, Lccc71/pmw/lib/pmw_monitor;->u:Lccc71/pmw/b/q;

    if-nez v0, :cond_0

    .line 105
    const-string v0, "process_monitor_widget"

    const-string v1, "Creating process list object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Lccc71/pmw/b/q;

    invoke-direct {v0, p0}, Lccc71/pmw/b/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lccc71/pmw/lib/pmw_monitor;->u:Lccc71/pmw/b/q;

    .line 109
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_monitor;->u:Lccc71/pmw/b/q;

    return-object v0
.end method

.method private a(F)V
    .locals 1
    .parameter

    .prologue
    .line 1205
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->ad:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0, p1}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 1206
    invoke-static {p0, p1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;F)V

    .line 1208
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_monitor;->f()V

    .line 1209
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_monitor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput p1, p0, Lccc71/pmw/lib/pmw_monitor;->ae:I

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_monitor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lccc71/pmw/lib/pmw_monitor;->Q:Z

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_monitor;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_monitor;->P:Z

    return v0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_monitor;)I
    .locals 1
    .parameter

    .prologue
    .line 99
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->ae:I

    return v0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_monitor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lccc71/pmw/lib/pmw_monitor;->O:Z

    return-void
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_monitor;)Lccc71/utils/ccc71_multi_graph_view;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->ad:Lccc71/utils/ccc71_multi_graph_view;

    return-object v0
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_monitor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_monitor;->d(Z)V

    return-void
.end method

.method private d(Z)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x2

    const/4 v12, -0x1

    const/high16 v11, 0x40c0

    const/16 v10, 0x8

    const/4 v2, 0x0

    .line 145
    if-eqz p1, :cond_3

    .line 147
    sget v0, Lccc71/pmw/lib/d;->G:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 151
    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_0
    sget v0, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 155
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    sget v0, Lccc71/pmw/lib/d;->as:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 158
    iget-boolean v1, p0, Lccc71/pmw/lib/pmw_monitor;->ac:Z

    if-eqz v1, :cond_4

    .line 159
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    :goto_0
    sget v0, Lccc71/pmw/lib/d;->h:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 163
    iget-boolean v1, p0, Lccc71/pmw/lib/pmw_monitor;->ac:Z

    if-eqz v1, :cond_5

    .line 164
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    :goto_1
    sget v0, Lccc71/pmw/lib/d;->av:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 169
    iget-boolean v1, p0, Lccc71/pmw/lib/pmw_monitor;->ac:Z

    if-eqz v1, :cond_6

    .line 170
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    :goto_2
    sget v0, Lccc71/pmw/lib/d;->i:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 175
    iget-boolean v1, p0, Lccc71/pmw/lib/pmw_monitor;->ac:Z

    if-eqz v1, :cond_7

    .line 176
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    :goto_3
    sget v0, Lccc71/pmw/lib/d;->K:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 181
    iget-boolean v1, p0, Lccc71/pmw/lib/pmw_monitor;->ac:Z

    if-eqz v1, :cond_8

    .line 182
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 186
    :goto_4
    sget v0, Lccc71/pmw/lib/d;->A:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 187
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->ad(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lccc71/pmw/lib/pmw_monitor;->O:Z

    .line 189
    iget-boolean v1, p0, Lccc71/pmw/lib/pmw_monitor;->O:Z

    if-eqz v1, :cond_9

    .line 191
    sget v1, Lccc71/pmw/lib/c;->n:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 198
    :goto_5
    sget v0, Lccc71/pmw/lib/d;->F:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 199
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->ae(Landroid/content/Context;)Z

    move-result v1

    .line 201
    sput-boolean v1, Lccc71/pmw/lib/pmw_monitor;->b:Z

    if-eqz v1, :cond_a

    .line 203
    sget v1, Lccc71/pmw/lib/c;->N:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 210
    :goto_6
    sget v0, Lccc71/pmw/lib/d;->ar:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 211
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->at(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lccc71/pmw/lib/pmw_monitor;->Q:Z

    .line 213
    iget-boolean v1, p0, Lccc71/pmw/lib/pmw_monitor;->Q:Z

    if-eqz v1, :cond_b

    .line 215
    sget v1, Lccc71/pmw/lib/c;->aN:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 222
    :goto_7
    sget v0, Lccc71/pmw/lib/g;->ev:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->I:Ljava/lang/String;

    .line 224
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->g(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->R:F

    .line 225
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->e(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->S:F

    .line 227
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->az(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->T:I

    .line 228
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aA(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->U:I

    .line 229
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aB(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->V:I

    .line 231
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->ac(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    .line 232
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->s(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->X:I

    .line 233
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->q(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->W:I

    .line 234
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aC(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->Z:I

    .line 235
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aD(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->aa:I

    .line 237
    sget v0, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 238
    iget v1, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    packed-switch v1, :pswitch_data_0

    .line 263
    :goto_8
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->af(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_monitor;->P:Z

    .line 264
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_monitor;->P:Z

    if-eqz v0, :cond_c

    .line 266
    sget v0, Lccc71/pmw/lib/d;->fM:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 267
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    sget v0, Lccc71/pmw/lib/d;->fN:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_multi_graph_view;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->ad:Lccc71/utils/ccc71_multi_graph_view;

    .line 270
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->ad:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_multi_graph_view;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->ad:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->registerForContextMenu(Landroid/view/View;)V

    .line 274
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->ad:Lccc71/utils/ccc71_multi_graph_view;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->t:Lccc71/utils/v;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setOnEvent(Lccc71/utils/v;)V

    .line 276
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->b(Z)V

    .line 284
    :goto_9
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->av(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_monitor;->K:Z

    .line 285
    sget v0, Lccc71/pmw/lib/d;->aJ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 286
    iget-boolean v1, p0, Lccc71/pmw/lib/pmw_monitor;->K:Z

    if-eqz v1, :cond_e

    .line 288
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->registerForContextMenu(Landroid/view/View;)V

    .line 292
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->y:Lccc71/pmw/a/ah;

    if-eqz v0, :cond_1

    sget v0, Lccc71/pmw/a/ah;->b:I

    if-nez v0, :cond_2

    .line 293
    :cond_1
    new-instance v0, Lccc71/pmw/a/ah;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lccc71/pmw/a/ah;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->y:Lccc71/pmw/a/ah;

    .line 295
    :cond_2
    sget v3, Lccc71/pmw/a/ah;->b:I

    .line 296
    sget v0, Lccc71/pmw/lib/d;->aL:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 297
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 298
    mul-int/lit8 v1, v3, 0x2

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->z:[Landroid/widget/TextView;

    move v1, v2

    .line 299
    :goto_a
    if-lt v1, v3, :cond_d

    .line 325
    sget v0, Lccc71/pmw/lib/d;->ka:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_monitor;->S:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 332
    :goto_b
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aw(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_monitor;->J:Z

    .line 333
    sget v0, Lccc71/pmw/lib/d;->aZ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 334
    iget-boolean v1, p0, Lccc71/pmw/lib/pmw_monitor;->J:Z

    if-eqz v1, :cond_f

    .line 336
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->registerForContextMenu(Landroid/view/View;)V

    .line 340
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->aa:I

    invoke-static {v0}, Lccc71/utils/ag;->f(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 341
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->aa:I

    invoke-static {v0}, Lccc71/utils/ag;->e(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    .line 343
    sget v0, Lccc71/pmw/lib/d;->kg:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->A:Landroid/widget/TextView;

    .line 344
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->A:Landroid/widget/TextView;

    iget v4, p0, Lccc71/pmw/lib/pmw_monitor;->S:F

    sub-float/2addr v4, v11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 345
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    sget v0, Lccc71/pmw/lib/d;->bi:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->B:Landroid/widget/TextView;

    .line 347
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->B:Landroid/widget/TextView;

    iget v3, p0, Lccc71/pmw/lib/pmw_monitor;->S:F

    sub-float/2addr v3, v11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 348
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    sget v0, Lccc71/pmw/lib/d;->jZ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_monitor;->S:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 356
    :goto_c
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->au(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_monitor;->L:Z

    .line 357
    sget v0, Lccc71/pmw/lib/d;->dQ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 358
    iget-boolean v1, p0, Lccc71/pmw/lib/pmw_monitor;->L:Z

    if-eqz v1, :cond_10

    .line 360
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->registerForContextMenu(Landroid/view/View;)V

    .line 364
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->aa:I

    invoke-static {v0}, Lccc71/utils/ag;->f(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 365
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->aa:I

    invoke-static {v0}, Lccc71/utils/ag;->e(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    .line 367
    sget v0, Lccc71/pmw/lib/d;->ki:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->C:Landroid/widget/TextView;

    .line 368
    sget v0, Lccc71/pmw/lib/d;->bk:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->D:Landroid/widget/TextView;

    .line 369
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->C:Landroid/widget/TextView;

    iget v4, p0, Lccc71/pmw/lib/pmw_monitor;->S:F

    sub-float/2addr v4, v11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 370
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->D:Landroid/widget/TextView;

    iget v3, p0, Lccc71/pmw/lib/pmw_monitor;->S:F

    sub-float/2addr v3, v11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 372
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    sget v0, Lccc71/pmw/lib/d;->kc:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_monitor;->S:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 380
    :goto_d
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->ax(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_monitor;->M:Z

    .line 381
    sget v0, Lccc71/pmw/lib/d;->iB:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 382
    iget-boolean v1, p0, Lccc71/pmw/lib/pmw_monitor;->M:Z

    if-eqz v1, :cond_11

    .line 384
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->registerForContextMenu(Landroid/view/View;)V

    .line 388
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->aa:I

    invoke-static {v0}, Lccc71/utils/ag;->f(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 389
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->aa:I

    invoke-static {v0}, Lccc71/utils/ag;->e(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    .line 391
    sget v0, Lccc71/pmw/lib/d;->kj:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->E:Landroid/widget/TextView;

    .line 392
    sget v0, Lccc71/pmw/lib/d;->bl:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->F:Landroid/widget/TextView;

    .line 393
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->E:Landroid/widget/TextView;

    iget v4, p0, Lccc71/pmw/lib/pmw_monitor;->S:F

    sub-float/2addr v4, v11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 394
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->F:Landroid/widget/TextView;

    iget v3, p0, Lccc71/pmw/lib/pmw_monitor;->S:F

    sub-float/2addr v3, v11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 396
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    sget v0, Lccc71/pmw/lib/d;->kd:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_monitor;->S:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 404
    :goto_e
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->ay(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_monitor;->N:Z

    .line 405
    sget v0, Lccc71/pmw/lib/d;->bw:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 406
    iget-boolean v1, p0, Lccc71/pmw/lib/pmw_monitor;->N:Z

    if-eqz v1, :cond_12

    .line 408
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->registerForContextMenu(Landroid/view/View;)V

    .line 412
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->aa:I

    invoke-static {v0}, Lccc71/utils/ag;->f(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 413
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->aa:I

    invoke-static {v0}, Lccc71/utils/ag;->e(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    .line 415
    sget v0, Lccc71/pmw/lib/d;->kh:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->G:Landroid/widget/TextView;

    .line 416
    sget v0, Lccc71/pmw/lib/d;->bj:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->H:Landroid/widget/TextView;

    .line 417
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->G:Landroid/widget/TextView;

    iget v3, p0, Lccc71/pmw/lib/pmw_monitor;->S:F

    sub-float/2addr v3, v11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 418
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->H:Landroid/widget/TextView;

    iget v2, p0, Lccc71/pmw/lib/pmw_monitor;->S:F

    sub-float/2addr v2, v11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 420
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    sget v0, Lccc71/pmw/lib/d;->kb:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_monitor;->S:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 428
    :goto_f
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_monitor;->g()V

    .line 431
    :cond_3
    invoke-static {p0}, Lccc71/pmw/lib/jg;->a(Landroid/content/Context;)V

    .line 432
    return-void

    .line 161
    :cond_4
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 166
    :cond_5
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 172
    :cond_6
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 178
    :cond_7
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 184
    :cond_8
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 195
    :cond_9
    sget v1, Lccc71/pmw/lib/c;->o:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_5

    .line 207
    :cond_a
    sget v1, Lccc71/pmw/lib/c;->O:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_6

    .line 219
    :cond_b
    sget v1, Lccc71/pmw/lib/c;->aM:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_7

    .line 241
    :pswitch_0
    sget v1, Lccc71/pmw/lib/g;->bN:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_8

    .line 244
    :pswitch_1
    sget v1, Lccc71/pmw/lib/g;->bM:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_8

    .line 247
    :pswitch_2
    sget v1, Lccc71/pmw/lib/g;->bV:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_8

    .line 250
    :pswitch_3
    sget v1, Lccc71/pmw/lib/g;->bU:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_8

    .line 253
    :pswitch_4
    sget v1, Lccc71/pmw/lib/g;->bT:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_8

    .line 256
    :pswitch_5
    sget v1, Lccc71/pmw/lib/g;->bR:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_8

    .line 259
    :pswitch_6
    sget v1, Lccc71/pmw/lib/g;->bS:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_8

    .line 280
    :cond_c
    sget v0, Lccc71/pmw/lib/d;->fM:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 281
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 301
    :cond_d
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 302
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f80

    invoke-direct {v5, v12, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    invoke-virtual {v4, v13, v13, v13, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 305
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 306
    iget v6, p0, Lccc71/pmw/lib/pmw_monitor;->S:F

    sub-float/2addr v6, v11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 307
    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    iget v6, p0, Lccc71/pmw/lib/pmw_monitor;->aa:I

    invoke-static {v6}, Lccc71/utils/ag;->e(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 310
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f80

    invoke-direct {v6, v12, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 313
    iget v7, p0, Lccc71/pmw/lib/pmw_monitor;->S:F

    sub-float/2addr v7, v11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 314
    iget v7, p0, Lccc71/pmw/lib/pmw_monitor;->aa:I

    invoke-static {v7}, Lccc71/utils/ag;->f(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 316
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f80

    invoke-direct {v7, v12, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    iget-object v7, p0, Lccc71/pmw/lib/pmw_monitor;->z:[Landroid/widget/TextView;

    mul-int/lit8 v8, v1, 0x2

    aput-object v5, v7, v8

    .line 320
    iget-object v5, p0, Lccc71/pmw/lib/pmw_monitor;->z:[Landroid/widget/TextView;

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    aput-object v6, v5, v7

    .line 322
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 329
    :cond_e
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 353
    :cond_f
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 377
    :cond_10
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 401
    :cond_11
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 425
    :cond_12
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_monitor;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_monitor;->Q:Z

    return v0
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 436
    sget-object v0, Lccc71/pmw/lib/pmw_monitor;->a:Lccc71/pmw/lib/pmw_monitor;

    if-eqz v0, :cond_0

    .line 437
    sget-object v0, Lccc71/pmw/lib/pmw_monitor;->a:Lccc71/pmw/lib/pmw_monitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_monitor;->b(Z)V

    .line 438
    :cond_0
    return-void
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_monitor;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_monitor;->O:Z

    return v0
.end method

.method static synthetic h()V
    .locals 0

    .prologue
    .line 138
    invoke-static {}, Lccc71/pmw/lib/jg;->b()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 758
    sget v0, Lccc71/pmw/lib/c;->aG:I

    return v0
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 115
    new-instance v1, Lccc71/pmw/lib/iu;

    invoke-direct {v1, p0, v0, p1}, Lccc71/pmw/lib/iu;-><init>(Lccc71/pmw/lib/pmw_monitor;Landroid/os/Handler;Z)V

    .line 134
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 135
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 136
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 752
    sget v0, Lccc71/pmw/lib/g;->bq:I

    return v0
.end method

.method public final b(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->ad:Lccc71/utils/ccc71_multi_graph_view;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->ad:Lccc71/utils/ccc71_multi_graph_view;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_monitor;->a(Landroid/content/Context;)Lccc71/pmw/b/q;

    move-result-object v3

    iget-boolean v4, p0, Lccc71/pmw/lib/pmw_monitor;->O:Z

    iget-boolean v1, p0, Lccc71/pmw/lib/pmw_monitor;->Q:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    sget-boolean v5, Lccc71/pmw/lib/pmw_monitor;->b:Z

    invoke-static {v3, v4, v1, v5}, Lccc71/pmw/lib/pmw_recorder;->a(Lccc71/pmw/b/q;ZZZ)Ljava/util/HashMap;

    move-result-object v1

    iget v3, p0, Lccc71/pmw/lib/pmw_monitor;->W:I

    iget v4, p0, Lccc71/pmw/lib/pmw_monitor;->X:I

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_monitor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lccc71/pmw/lib/g;->fJ:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lccc71/utils/ccc71_multi_graph_view;->setData(Ljava/util/HashMap;ZIILjava/lang/String;Ljava/util/Date;)V

    .line 446
    if-eqz p1, :cond_0

    .line 448
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_monitor;->f()V

    .line 451
    :cond_0
    return-void

    .line 444
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method final c(Z)V
    .locals 15
    .parameter

    .prologue
    .line 528
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_monitor;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    :goto_0
    return-void

    .line 531
    :cond_0
    invoke-static {p0}, Lccc71/pmw/lib/pmw_monitor;->a(Landroid/content/Context;)Lccc71/pmw/b/q;

    move-result-object v4

    .line 532
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 533
    if-eqz p1, :cond_4

    .line 535
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_monitor;->L:Z

    if-eqz v0, :cond_1

    .line 537
    new-instance v0, Lccc71/pmw/b/k;

    invoke-direct {v0, p0}, Lccc71/pmw/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->v:Lccc71/pmw/b/k;

    .line 539
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->C:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    iget-object v6, p0, Lccc71/pmw/lib/pmw_monitor;->v:Lccc71/pmw/b/k;

    invoke-virtual {v6}, Lccc71/pmw/b/k;->a()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x64

    int-to-float v6, v6

    invoke-direct {v1, v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->v:Lccc71/pmw/b/k;

    iget v1, v1, Lccc71/pmw/b/k;->a:I

    iget-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->v:Lccc71/pmw/b/k;

    iget v2, v2, Lccc71/pmw/b/k;->b:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Lccc71/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->D:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    iget-object v6, p0, Lccc71/pmw/lib/pmw_monitor;->v:Lccc71/pmw/b/k;

    invoke-virtual {v6}, Lccc71/pmw/b/k;->a()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v1, v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->v:Lccc71/pmw/b/k;

    iget v1, v1, Lccc71/pmw/b/k;->b:I

    invoke-static {v1}, Lccc71/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    :cond_1
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_monitor;->M:Z

    if-eqz v0, :cond_2

    .line 548
    new-instance v0, Lccc71/pmw/b/u;

    invoke-direct {v0}, Lccc71/pmw/b/u;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->w:Lccc71/pmw/b/u;

    .line 549
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->w:Lccc71/pmw/b/u;

    invoke-static {}, Lccc71/pmw/b/u;->a()V

    .line 551
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->E:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    iget-object v6, p0, Lccc71/pmw/lib/pmw_monitor;->w:Lccc71/pmw/b/u;

    invoke-static {}, Lccc71/pmw/b/u;->e()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x64

    int-to-float v6, v6

    invoke-direct {v1, v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->E:Landroid/widget/TextView;

    sget-wide v1, Lccc71/pmw/b/u;->i:J

    sget-wide v6, Lccc71/pmw/b/u;->h:J

    sub-long/2addr v1, v6

    long-to-int v1, v1

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->F:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    iget-object v6, p0, Lccc71/pmw/lib/pmw_monitor;->w:Lccc71/pmw/b/u;

    invoke-static {}, Lccc71/pmw/b/u;->e()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v1, v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->F:Landroid/widget/TextView;

    sget-wide v1, Lccc71/pmw/b/u;->h:J

    long-to-int v1, v1

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    :cond_2
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_monitor;->N:Z

    if-eqz v0, :cond_3

    .line 560
    new-instance v0, Lccc71/pmw/b/u;

    invoke-direct {v0}, Lccc71/pmw/b/u;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->w:Lccc71/pmw/b/u;

    .line 561
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->w:Lccc71/pmw/b/u;

    invoke-virtual {v0}, Lccc71/pmw/b/u;->c()V

    .line 563
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->G:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    iget-object v6, p0, Lccc71/pmw/lib/pmw_monitor;->w:Lccc71/pmw/b/u;

    invoke-virtual {v6}, Lccc71/pmw/b/u;->d()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x64

    int-to-float v6, v6

    invoke-direct {v1, v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->G:Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->w:Lccc71/pmw/b/u;

    iget-wide v1, v1, Lccc71/pmw/b/u;->b:J

    iget-object v3, p0, Lccc71/pmw/lib/pmw_monitor;->w:Lccc71/pmw/b/u;

    iget-wide v6, v3, Lccc71/pmw/b/u;->a:J

    sub-long/2addr v1, v6

    long-to-int v1, v1

    invoke-static {v1}, Lccc71/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->H:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    iget-object v6, p0, Lccc71/pmw/lib/pmw_monitor;->w:Lccc71/pmw/b/u;

    invoke-virtual {v6}, Lccc71/pmw/b/u;->d()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v1, v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->w:Lccc71/pmw/b/u;

    iget-wide v1, v1, Lccc71/pmw/b/u;->a:J

    long-to-int v1, v1

    invoke-static {v1}, Lccc71/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    :cond_3
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    packed-switch v0, :pswitch_data_0

    .line 594
    :cond_4
    :goto_1
    sget v0, Lccc71/pmw/lib/d;->gh:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 595
    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 597
    const/4 v1, 0x0

    .line 598
    invoke-virtual {v4}, Lccc71/pmw/b/q;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v1

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 745
    :goto_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 746
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Processes list updated in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " milliseconds!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 574
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lccc71/pmw/b/q;->a(I)V

    goto :goto_1

    .line 577
    :pswitch_1
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lccc71/pmw/b/q;->a(I)V

    goto :goto_1

    .line 580
    :pswitch_2
    const/16 v0, 0x20

    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->x:Lccc71/pmw/b/z;

    invoke-virtual {v4, v0, v1}, Lccc71/pmw/b/q;->a(ILccc71/pmw/b/z;)V

    goto :goto_1

    .line 583
    :pswitch_3
    const/16 v0, 0x10

    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->x:Lccc71/pmw/b/z;

    invoke-virtual {v4, v0, v1}, Lccc71/pmw/b/q;->a(ILccc71/pmw/b/z;)V

    goto :goto_1

    .line 586
    :pswitch_4
    const/16 v0, 0x40

    invoke-virtual {v4, v0}, Lccc71/pmw/b/q;->a(I)V

    goto :goto_1

    .line 589
    :pswitch_5
    const/16 v0, 0x80

    invoke-virtual {v4, v0}, Lccc71/pmw/b/q;->a(I)V

    goto :goto_1

    .line 600
    :cond_6
    :try_start_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/b/p;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    iget-object v2, v1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-static {v2}, Lccc71/pmw/b/q;->d(Ljava/lang/String;)Z

    move-result v2

    .line 611
    invoke-static {v1}, Lccc71/pmw/b/q;->g(Lccc71/pmw/b/p;)Z

    move-result v7

    .line 612
    iget-boolean v8, v1, Lccc71/pmw/b/p;->g:Z

    .line 614
    if-eqz v2, :cond_7

    iget-boolean v9, p0, Lccc71/pmw/lib/pmw_monitor;->O:Z

    if-eqz v9, :cond_5

    .line 615
    :cond_7
    if-eqz v8, :cond_8

    sget-boolean v9, Lccc71/pmw/lib/pmw_monitor;->b:Z

    if-eqz v9, :cond_5

    .line 617
    :cond_8
    if-eqz v7, :cond_d

    .line 620
    if-nez v8, :cond_9

    .line 622
    iget-object v9, v1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-static {v9}, Lccc71/pmw/b/q;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 624
    invoke-virtual {v4, v1}, Lccc71/pmw/b/q;->c(Lccc71/pmw/b/p;)V

    .line 625
    iget-boolean v9, p0, Lccc71/pmw/lib/pmw_monitor;->Q:Z

    if-nez v9, :cond_5

    .line 639
    :cond_9
    :goto_4
    new-instance v9, Landroid/widget/TableRow;

    invoke-direct {v9, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 641
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 642
    iget-object v11, v1, Lccc71/pmw/b/p;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_e

    .line 644
    iget-object v11, v1, Lccc71/pmw/b/p;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    :goto_5
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 654
    new-instance v11, Landroid/widget/TableRow$LayoutParams;

    const/16 v12, 0x20

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v11}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 657
    iget-object v11, v1, Lccc71/pmw/b/p;->e:Ljava/lang/String;

    if-eqz v11, :cond_10

    .line 658
    iget-object v11, v1, Lccc71/pmw/b/p;->e:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    :goto_6
    const/4 v11, 0x5

    const/4 v12, 0x2

    const/4 v13, 0x2

    const/4 v14, 0x5

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 662
    iget v11, p0, Lccc71/pmw/lib/pmw_monitor;->R:F

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 663
    iget-boolean v11, p0, Lccc71/pmw/lib/pmw_monitor;->P:Z

    if-eqz v11, :cond_13

    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->a()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 665
    iget v2, v1, Lccc71/pmw/b/p;->a:I

    iget v7, p0, Lccc71/pmw/lib/pmw_monitor;->ae:I

    if-ne v2, v7, :cond_11

    .line 666
    const/4 v2, -0x1

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 701
    :cond_a
    :goto_7
    invoke-virtual {v9, v10}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 703
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 704
    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    invoke-virtual {v2, v7, v8, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 705
    iget v7, p0, Lccc71/pmw/lib/pmw_monitor;->R:F

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 706
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 707
    iget v7, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    packed-switch v7, :pswitch_data_1

    .line 710
    iget-wide v7, v1, Lccc71/pmw/b/p;->p:J

    long-to-float v7, v7

    const/high16 v8, 0x447a

    div-float/2addr v7, v8

    invoke-static {v7}, Lccc71/utils/ag;->a(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    :goto_8
    :pswitch_6
    invoke-virtual {v9, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 736
    add-int/lit8 v2, v3, 0x1

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_b

    .line 738
    iget v3, p0, Lccc71/pmw/lib/pmw_monitor;->Z:I

    invoke-virtual {v9, v3}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 740
    :cond_b
    iget v1, v1, Lccc71/pmw/b/p;->a:I

    invoke-virtual {v9, v1}, Landroid/widget/TableRow;->setId(I)V

    .line 741
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v1}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 742
    invoke-virtual {v0, v9}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    move v3, v2

    goto/16 :goto_2

    .line 628
    :cond_c
    if-eqz v2, :cond_9

    iget-boolean v9, p0, Lccc71/pmw/lib/pmw_monitor;->Q:Z

    if-eqz v9, :cond_9

    goto/16 :goto_2

    .line 634
    :cond_d
    if-nez v8, :cond_9

    iget-object v9, v1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-static {v9}, Lccc71/pmw/b/q;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 636
    sget-object v9, Lccc71/pmw/lib/pmw_monitor;->u:Lccc71/pmw/b/q;

    invoke-virtual {v9, v1}, Lccc71/pmw/b/q;->d(Lccc71/pmw/b/p;)V

    goto/16 :goto_4

    .line 648
    :cond_e
    iget-boolean v11, v1, Lccc71/pmw/b/p;->g:Z

    if-eqz v11, :cond_f

    .line 649
    sget v11, Lccc71/pmw/lib/c;->N:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 651
    :cond_f
    sget v11, Lccc71/pmw/lib/c;->w:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 660
    :cond_10
    iget-object v11, v1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 669
    :cond_11
    iget-boolean v7, p0, Lccc71/pmw/lib/pmw_monitor;->O:Z

    iget-boolean v2, p0, Lccc71/pmw/lib/pmw_monitor;->Q:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    :goto_9
    sget-boolean v8, Lccc71/pmw/lib/pmw_monitor;->b:Z

    invoke-static {v4, v7, v2, v8}, Lccc71/pmw/lib/pmw_recorder;->a(Lccc71/pmw/b/q;ZZZ)Ljava/util/HashMap;

    move-result-object v2

    iget v7, v1, Lccc71/pmw/b/p;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/pmw/b/t;

    .line 670
    if-eqz v2, :cond_a

    .line 671
    iget v2, v2, Lccc71/pmw/b/t;->b:I

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 669
    :cond_12
    const/4 v2, 0x1

    goto :goto_9

    .line 676
    :cond_13
    if-eqz v8, :cond_14

    .line 678
    iget v2, p0, Lccc71/pmw/lib/pmw_monitor;->V:I

    const/high16 v7, 0x6000

    sub-int/2addr v2, v7

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 680
    :cond_14
    if-eqz v7, :cond_16

    .line 682
    if-eqz v2, :cond_15

    .line 684
    iget v2, p0, Lccc71/pmw/lib/pmw_monitor;->U:I

    const/high16 v7, 0x6000

    sub-int/2addr v2, v7

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 688
    :cond_15
    iget v2, p0, Lccc71/pmw/lib/pmw_monitor;->U:I

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 691
    :cond_16
    if-eqz v2, :cond_17

    .line 693
    iget v2, p0, Lccc71/pmw/lib/pmw_monitor;->T:I

    const/high16 v7, 0x6000

    sub-int/2addr v2, v7

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 697
    :cond_17
    iget v2, p0, Lccc71/pmw/lib/pmw_monitor;->T:I

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 713
    :pswitch_7
    const/high16 v7, 0x4120

    iget-wide v10, v1, Lccc71/pmw/b/p;->p:J

    long-to-float v8, v10

    mul-float/2addr v7, v8

    invoke-static {}, Lccc71/pmw/lib/jg;->a()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-long v7, v7

    invoke-static {v7, v8}, Lccc71/utils/ag;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 716
    :pswitch_8
    iget-wide v7, v1, Lccc71/pmw/b/p;->o:J

    long-to-float v7, v7

    const/high16 v8, 0x447a

    div-float/2addr v7, v8

    invoke-static {v7}, Lccc71/utils/ag;->a(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 719
    :pswitch_9
    iget-object v7, p0, Lccc71/pmw/lib/pmw_monitor;->x:Lccc71/pmw/b/z;

    invoke-virtual {v7}, Lccc71/pmw/b/z;->b()J

    move-result-wide v7

    iget-wide v10, v1, Lccc71/pmw/b/p;->n:J

    sub-long/2addr v7, v10

    .line 720
    const-wide/16 v10, 0x0

    cmp-long v10, v7, v10

    if-eqz v10, :cond_18

    .line 721
    const-wide/16 v10, 0x2710

    iget-wide v12, v1, Lccc71/pmw/b/p;->o:J

    mul-long/2addr v10, v12

    div-long v7, v10, v7

    long-to-int v7, v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Lccc71/utils/ag;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 723
    :cond_18
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Lccc71/utils/ag;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 726
    :pswitch_a
    iget-object v7, p0, Lccc71/pmw/lib/pmw_monitor;->x:Lccc71/pmw/b/z;

    invoke-virtual {v7}, Lccc71/pmw/b/z;->a()J

    move-result-wide v7

    iget-wide v10, v1, Lccc71/pmw/b/p;->n:J

    sub-long/2addr v7, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v7, v10

    invoke-static {v7, v8}, Lccc71/utils/ag;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 729
    :pswitch_b
    iget v7, v1, Lccc71/pmw/b/p;->q:I

    invoke-static {v7}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 607
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 707
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 455
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->ad:Lccc71/utils/ccc71_multi_graph_view;

    if-eqz v0, :cond_0

    .line 457
    sget v0, Lccc71/pmw/lib/d;->fP:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_monitor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->dQ:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    iget-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->ad:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_multi_graph_view;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_monitor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->dS:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 459
    iget-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->ad:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_multi_graph_view;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    :cond_0
    return-void
.end method

.method final g()V
    .locals 11

    .prologue
    const/16 v10, 0x32

    const/16 v9, 0xa

    const/4 v3, 0x0

    const/4 v8, -0x2

    .line 465
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_monitor;->K:Z

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->y:Lccc71/pmw/a/ah;

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Lccc71/pmw/a/ah;

    invoke-direct {v0}, Lccc71/pmw/a/ah;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->y:Lccc71/pmw/a/ah;

    .line 470
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->y:Lccc71/pmw/a/ah;

    invoke-static {}, Lccc71/pmw/a/ah;->a()I

    move-result v1

    move v2, v3

    .line 471
    :goto_0
    if-lt v2, v1, :cond_4

    .line 494
    sget v2, Lccc71/pmw/a/ah;->b:I

    move v0, v1

    .line 495
    :goto_1
    if-lt v0, v2, :cond_7

    .line 506
    :cond_1
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_monitor;->J:Z

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->y:Lccc71/pmw/a/ah;

    if-nez v0, :cond_2

    .line 509
    new-instance v0, Lccc71/pmw/a/ah;

    invoke-direct {v0}, Lccc71/pmw/a/ah;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->y:Lccc71/pmw/a/ah;

    .line 511
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->y:Lccc71/pmw/a/ah;

    invoke-static {}, Lccc71/pmw/a/ah;->d()I

    move-result v0

    .line 512
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->A:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v3, v0

    invoke-direct {v2, v8, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    if-le v0, v9, :cond_8

    .line 514
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->A:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    :goto_2
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->B:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    rsub-int/lit8 v3, v0, 0x64

    int-to-float v3, v3

    invoke-direct {v2, v8, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    if-gt v0, v9, :cond_9

    .line 520
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->B:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    :cond_3
    :goto_3
    return-void

    .line 473
    :cond_4
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->y:Lccc71/pmw/a/ah;

    invoke-virtual {v0, v2}, Lccc71/pmw/a/ah;->g(I)I

    move-result v4

    .line 474
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->y:Lccc71/pmw/a/ah;

    invoke-virtual {v0}, Lccc71/pmw/a/ah;->v()I

    move-result v5

    .line 476
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->z:[Landroid/widget/TextView;

    mul-int/lit8 v6, v2, 0x2

    aget-object v6, v0, v6

    .line 478
    invoke-virtual {v6}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 479
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 481
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v7, v5

    invoke-direct {v0, v8, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    if-le v5, v10, :cond_5

    .line 483
    invoke-static {v4}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    :goto_4
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->z:[Landroid/widget/TextView;

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-object v0, v0, v6

    .line 488
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    rsub-int/lit8 v7, v5, 0x64

    int-to-float v7, v7

    invoke-direct {v6, v8, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    if-gt v5, v10, :cond_6

    .line 490
    invoke-static {v4}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 485
    :cond_5
    const-string v0, "."

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 492
    :cond_6
    const-string v4, "."

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 497
    :cond_7
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->z:[Landroid/widget/TextView;

    mul-int/lit8 v3, v0, 0x2

    aget-object v1, v1, v3

    .line 498
    const-string v3, "."

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v8, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->z:[Landroid/widget/TextView;

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v1, v1, v3

    .line 501
    iget-object v3, p0, Lccc71/pmw/lib/pmw_monitor;->I:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42c8

    invoke-direct {v3, v8, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 516
    :cond_8
    iget-object v1, p0, Lccc71/pmw/lib/pmw_monitor;->A:Landroid/widget/TextView;

    const-string v2, "."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 522
    :cond_9
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->B:Landroid/widget/TextView;

    const-string v1, "."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 864
    const-string v0, "process_monitor_widget"

    const-string v1, "pmw_monitor - onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    sget v0, Lccc71/pmw/lib/e;->bq:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->setContentView(I)V

    .line 868
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->a(Z)V

    .line 870
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 871
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1223
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->ad:Lccc71/utils/ccc71_multi_graph_view;

    if-eqz v0, :cond_5

    .line 1225
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lccc71/pmw/lib/d;->dZ:I

    if-ne v0, v2, :cond_0

    .line 1227
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->a(F)V

    move v0, v1

    .line 1314
    :goto_0
    return v0

    .line 1230
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lccc71/pmw/lib/d;->ea:I

    if-ne v0, v2, :cond_1

    .line 1232
    const/high16 v0, 0x4000

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->a(F)V

    move v0, v1

    .line 1233
    goto :goto_0

    .line 1235
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lccc71/pmw/lib/d;->eb:I

    if-ne v0, v2, :cond_2

    .line 1237
    const/high16 v0, 0x4040

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->a(F)V

    move v0, v1

    .line 1238
    goto :goto_0

    .line 1240
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lccc71/pmw/lib/d;->ec:I

    if-ne v0, v2, :cond_3

    .line 1242
    const/high16 v0, 0x4080

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->a(F)V

    move v0, v1

    .line 1243
    goto :goto_0

    .line 1245
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lccc71/pmw/lib/d;->ed:I

    if-ne v0, v2, :cond_4

    .line 1247
    const/high16 v0, 0x40a0

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->a(F)V

    move v0, v1

    .line 1248
    goto :goto_0

    .line 1250
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lccc71/pmw/lib/d;->dY:I

    if-ne v0, v2, :cond_5

    .line 1252
    iget-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->ad:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_multi_graph_view;->j()Z

    move v0, v1

    .line 1253
    goto :goto_0

    .line 1257
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lccc71/pmw/lib/d;->fk:I

    if-ne v0, v2, :cond_6

    .line 1259
    const/4 v0, 0x0

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    .line 1260
    sget v0, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v2, Lccc71/pmw/lib/g;->bN:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1261
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    invoke-static {p0, v0}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;I)I

    .line 1262
    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_monitor;->c(Z)V

    move v0, v1

    .line 1263
    goto :goto_0

    .line 1265
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lccc71/pmw/lib/d;->fj:I

    if-ne v0, v2, :cond_7

    .line 1267
    const/4 v0, 0x6

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    .line 1268
    sget v0, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v2, Lccc71/pmw/lib/g;->bM:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1269
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    invoke-static {p0, v0}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;I)I

    .line 1270
    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_monitor;->c(Z)V

    move v0, v1

    .line 1271
    goto/16 :goto_0

    .line 1273
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lccc71/pmw/lib/d;->fr:I

    if-ne v0, v2, :cond_8

    .line 1275
    iput v1, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    .line 1276
    sget v0, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v2, Lccc71/pmw/lib/g;->bV:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1277
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    invoke-static {p0, v0}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;I)I

    .line 1278
    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_monitor;->c(Z)V

    move v0, v1

    .line 1279
    goto/16 :goto_0

    .line 1281
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lccc71/pmw/lib/d;->fi:I

    if-ne v0, v2, :cond_9

    .line 1283
    const/4 v0, 0x2

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    .line 1284
    sget v0, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v2, Lccc71/pmw/lib/g;->bU:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1285
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    invoke-static {p0, v0}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;I)I

    .line 1286
    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_monitor;->c(Z)V

    move v0, v1

    .line 1287
    goto/16 :goto_0

    .line 1289
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lccc71/pmw/lib/d;->fq:I

    if-ne v0, v2, :cond_a

    .line 1291
    const/4 v0, 0x3

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    .line 1292
    sget v0, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v2, Lccc71/pmw/lib/g;->bT:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1293
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    invoke-static {p0, v0}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;I)I

    .line 1294
    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_monitor;->c(Z)V

    move v0, v1

    .line 1295
    goto/16 :goto_0

    .line 1297
    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lccc71/pmw/lib/d;->fo:I

    if-ne v0, v2, :cond_b

    .line 1299
    const/4 v0, 0x4

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    .line 1300
    sget v0, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v2, Lccc71/pmw/lib/g;->bR:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1301
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    invoke-static {p0, v0}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;I)I

    .line 1302
    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_monitor;->c(Z)V

    move v0, v1

    .line 1303
    goto/16 :goto_0

    .line 1305
    :cond_b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lccc71/pmw/lib/d;->fp:I

    if-ne v0, v2, :cond_c

    .line 1307
    const/4 v0, 0x5

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    .line 1308
    sget v0, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v2, Lccc71/pmw/lib/g;->bS:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1309
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->Y:I

    invoke-static {p0, v0}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;I)I

    .line 1310
    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_monitor;->c(Z)V

    move v0, v1

    .line 1311
    goto/16 :goto_0

    .line 1314
    :cond_c
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 764
    const-string v0, "process_monitor_widget"

    const-string v3, "pmw_monitor - onCreate"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 767
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_monitor;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    :goto_0
    return-void

    .line 770
    :cond_0
    invoke-static {p0}, Lccc71/pmw/lib/pmw_service;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 771
    invoke-static {p0}, Lccc71/pmw/lib/pmw_service;->b(Landroid/content/Context;)V

    .line 777
    :cond_1
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_monitor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 778
    const-string v3, "ccc71.pmw.current_widget_id"

    iget v4, p0, Lccc71/pmw/lib/pmw_monitor;->ab:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lccc71/pmw/lib/pmw_monitor;->ab:I

    .line 779
    const-string v3, "ccc71.pmw.hide_buttons"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_monitor;->ac:Z

    .line 781
    iget v0, p0, Lccc71/pmw/lib/pmw_monitor;->ab:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 783
    invoke-static {}, Lccc71/pmw/lib/pmw_widget;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 784
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 785
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_monitor;->ab:I

    .line 788
    :cond_2
    invoke-static {p0}, Lccc71/pmw/lib/pmw_monitor;->a(Landroid/content/Context;)Lccc71/pmw/b/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/pmw/b/q;->b(Landroid/content/Context;)V

    .line 790
    sget v0, Lccc71/pmw/lib/e;->bq:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->setContentView(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 779
    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1320
    invoke-super {p0, p1, p2, p3}, Lccc71/pmw/lib/pmw_activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1321
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->an:I

    if-ne v0, v1, :cond_0

    .line 1323
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_monitor;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/f;->m:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1333
    :goto_0
    return-void

    .line 1325
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->fN:I

    if-ne v0, v1, :cond_1

    .line 1327
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_monitor;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/f;->e:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1331
    :cond_1
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_monitor;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/f;->o:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 833
    const-string v0, "process_monitor_widget"

    const-string v1, "pmw_monitor - onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 838
    iput-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->v:Lccc71/pmw/b/k;

    .line 839
    iput-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->w:Lccc71/pmw/b/u;

    .line 840
    iput-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->x:Lccc71/pmw/b/z;

    .line 841
    iput-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->y:Lccc71/pmw/a/ah;

    .line 843
    iput-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->z:[Landroid/widget/TextView;

    .line 845
    iput-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->A:Landroid/widget/TextView;

    .line 846
    iput-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->B:Landroid/widget/TextView;

    .line 848
    iput-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->C:Landroid/widget/TextView;

    .line 849
    iput-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->D:Landroid/widget/TextView;

    .line 851
    iput-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->E:Landroid/widget/TextView;

    .line 852
    iput-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->F:Landroid/widget/TextView;

    .line 854
    iput-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->G:Landroid/widget/TextView;

    .line 855
    iput-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->H:Landroid/widget/TextView;

    .line 856
    iput-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->ad:Lccc71/utils/ccc71_multi_graph_view;

    .line 858
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 859
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 809
    const-string v0, "process_monitor_widget"

    const-string v1, "pmw_monitor - onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onPause()V

    .line 812
    new-instance v0, Lccc71/pmw/lib/iw;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/iw;-><init>(Lccc71/pmw/lib/pmw_monitor;)V

    .line 821
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 822
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 824
    iput-object v2, p0, Lccc71/pmw/lib/pmw_monitor;->ad:Lccc71/utils/ccc71_multi_graph_view;

    .line 825
    sput-object v2, Lccc71/pmw/lib/pmw_monitor;->a:Lccc71/pmw/lib/pmw_monitor;

    .line 827
    invoke-static {p0}, Lccc71/pmw/lib/pmw_widget;->c(Landroid/content/Context;)V

    .line 828
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 796
    const-string v0, "process_monitor_widget"

    const-string v1, "pmw_monitor - onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onResume()V

    .line 799
    new-instance v0, Lccc71/pmw/b/z;

    invoke-direct {v0}, Lccc71/pmw/b/z;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_monitor;->x:Lccc71/pmw/b/z;

    .line 801
    sput-object p0, Lccc71/pmw/lib/pmw_monitor;->a:Lccc71/pmw/lib/pmw_monitor;

    .line 803
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_monitor;->d(Z)V

    .line 804
    return-void
.end method
