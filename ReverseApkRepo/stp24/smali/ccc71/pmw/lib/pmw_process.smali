.class public Lccc71/pmw/lib/pmw_process;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# static fields
.field private static b:Lccc71/pmw/lib/pmw_process;

.field private static c:Landroid/content/pm/PackageManager;


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Landroid/os/Handler;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/os/Handler;

.field private E:Landroid/view/View$OnClickListener;

.field private F:Landroid/view/View$OnClickListener;

.field private G:Landroid/view/View$OnClickListener;

.field private H:Landroid/view/View$OnClickListener;

.field private I:Lccc71/utils/v;

.field private J:Landroid/view/View$OnClickListener;

.field protected a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lccc71/pmw/b/p;

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/widget/Button;

.field private n:Lccc71/utils/ccc71_multi_graph_view;

.field private o:F

.field private p:I

.field private q:[Ljava/lang/String;

.field private r:[Ljava/lang/String;

.field private s:Landroid/widget/TableRow$LayoutParams;

.field private t:Landroid/widget/TableRow$LayoutParams;

.field private u:Landroid/view/View$OnClickListener;

.field private v:Landroid/view/View$OnClickListener;

.field private w:Landroid/view/View$OnClickListener;

.field private x:Landroid/view/View$OnClickListener;

.field private y:Landroid/os/Handler;

.field private z:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    .line 61
    sput-object v0, Lccc71/pmw/lib/pmw_process;->c:Landroid/content/pm/PackageManager;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->d:Landroid/os/Handler;

    .line 64
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->e:Ljava/lang/Runnable;

    .line 66
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->f:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->j:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    .line 69
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->l:Landroid/graphics/Bitmap;

    .line 71
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->m:Landroid/widget/Button;

    .line 73
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    .line 75
    const/high16 v0, 0x4180

    iput v0, p0, Lccc71/pmw/lib/pmw_process;->o:F

    .line 77
    const/high16 v0, -0x100

    iput v0, p0, Lccc71/pmw/lib/pmw_process;->p:I

    .line 172
    new-instance v0, Lccc71/pmw/lib/jl;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/jl;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->u:Landroid/view/View$OnClickListener;

    .line 190
    new-instance v0, Lccc71/pmw/lib/jy;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/jy;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->v:Landroid/view/View$OnClickListener;

    .line 207
    new-instance v0, Lccc71/pmw/lib/kg;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/kg;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->w:Landroid/view/View$OnClickListener;

    .line 217
    new-instance v0, Lccc71/pmw/lib/kh;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/kh;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->x:Landroid/view/View$OnClickListener;

    .line 239
    new-instance v0, Lccc71/pmw/lib/kj;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/kj;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->y:Landroid/os/Handler;

    .line 299
    new-instance v0, Lccc71/pmw/lib/kl;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/kl;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->z:Landroid/view/View$OnClickListener;

    .line 319
    new-instance v0, Lccc71/pmw/lib/kn;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/kn;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->A:Landroid/view/View$OnClickListener;

    .line 351
    new-instance v0, Lccc71/pmw/lib/kp;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/kp;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->B:Landroid/os/Handler;

    .line 363
    new-instance v0, Lccc71/pmw/lib/kq;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/kq;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->C:Landroid/view/View$OnClickListener;

    .line 386
    new-instance v0, Lccc71/pmw/lib/jm;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/jm;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->D:Landroid/os/Handler;

    .line 415
    new-instance v0, Lccc71/pmw/lib/jn;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/jn;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->E:Landroid/view/View$OnClickListener;

    .line 434
    new-instance v0, Lccc71/pmw/lib/jo;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/jo;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->F:Landroid/view/View$OnClickListener;

    .line 453
    new-instance v0, Lccc71/pmw/lib/jp;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/jp;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->G:Landroid/view/View$OnClickListener;

    .line 474
    new-instance v0, Lccc71/pmw/lib/jq;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/jq;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->H:Landroid/view/View$OnClickListener;

    .line 682
    new-instance v0, Lccc71/pmw/lib/jr;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/jr;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->I:Lccc71/utils/v;

    .line 1551
    new-instance v0, Lccc71/pmw/lib/js;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/js;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->J:Landroid/view/View$OnClickListener;

    .line 1573
    new-instance v0, Lccc71/pmw/lib/jt;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/jt;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 57
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    return-object v0
.end method

.method static synthetic a(Landroid/content/pm/PackageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    sput-object p0, Lccc71/pmw/lib/pmw_process;->c:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_process;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lccc71/pmw/lib/pmw_process;->l:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_process;Landroid/widget/TableLayout;Lccc71/pmw/b/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v2, Lccc71/pmw/lib/c;->aS:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget v0, p0, Lccc71/pmw/lib/pmw_process;->o:F

    const/high16 v3, 0x4000

    sub-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->s:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/CheckBox;

    invoke-direct {v2, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/high16 v5, 0x3f80

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    iget-object v0, v0, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    invoke-static {p0, v0, p4}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    iget-object v0, v0, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    const-string v3, "ccc71."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    iget-object v4, v4, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    aput-object v4, v0, v3

    const/4 v3, 0x2

    aput-object p4, v0, v3

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->s:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {p1, v1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    iget-object v0, p2, Lccc71/pmw/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v0, 0x0

    move v6, v0

    :goto_3
    if-lt v6, v7, :cond_2

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget-object v0, p2, Lccc71/pmw/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/d;

    iget-object v2, v0, Lccc71/pmw/b/d;->a:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lccc71/pmw/b/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v2, 0x0

    move v5, v2

    move v4, v1

    :goto_4
    if-lt v5, v8, :cond_3

    move v0, v4

    :goto_5
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v0

    goto :goto_3

    :cond_3
    iget-object v1, v0, Lccc71/pmw/b/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, -0x1

    iget-object v2, p0, Lccc71/pmw/lib/pmw_process;->q:[Ljava/lang/String;

    array-length v9, v2

    const/4 v2, 0x0

    :goto_6
    if-lt v2, v9, :cond_6

    move v2, v3

    :cond_4
    new-instance v9, Landroid/widget/TableRow;

    invoke-direct {v9, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    add-int/lit8 v3, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_5

    iget v4, p0, Lccc71/pmw/lib/pmw_process;->p:I

    invoke-virtual {v9, v4}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    :cond_5
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v10, -0x1

    if-ne v2, v10, :cond_7

    sget v10, Lccc71/pmw/lib/c;->l:I

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_7
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setId(I)V

    iget-object v10, p0, Lccc71/pmw/lib/pmw_process;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lccc71/pmw/lib/pmw_process;->t:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v9, v4, v10}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v10, 0x2e

    invoke-virtual {v1, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setId(I)V

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    const/high16 v2, 0x4040

    sub-float/2addr v1, v2

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v9}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v4, v3

    goto :goto_4

    :cond_6
    iget-object v10, p0, Lccc71/pmw/lib/pmw_process;->q:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    sget v10, Lccc71/pmw/lib/c;->M:I

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :cond_8
    move v0, v1

    goto/16 :goto_5

    :cond_9
    move-object v0, p4

    goto/16 :goto_0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_process;Lccc71/pmw/b/p;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_process;Lccc71/utils/ccc71_multi_graph_view;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_process;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lccc71/pmw/lib/pmw_process;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_process;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1628
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/16 v0, 0x9

    invoke-static {v0}, Lccc71/utils/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "package"

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_process;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Lccc71/utils/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pkg"

    :goto_2
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v0, "com.android.settings.ApplicationPkgName"

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to start settings activity for package "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x4

    const/16 v4, 0x8

    .line 1119
    if-eqz p1, :cond_2

    .line 1121
    sget v0, Lccc71/pmw/lib/e;->br:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->setContentView(I)V

    sget v0, Lccc71/pmw/lib/d;->ix:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->aB:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->W:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lccc71/pmw/lib/d;->X:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lccc71/pmw/lib/d;->G:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lccc71/pmw/lib/d;->al:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lccc71/pmw/lib/d;->K:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->H:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lccc71/pmw/lib/d;->M:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->G:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lccc71/pmw/lib/d;->C:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->m:Landroid/widget/Button;

    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->m:Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lccc71/pmw/lib/d;->aw:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lccc71/pmw/lib/d;->s:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_process;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lccc71/pmw/lib/d;->P:I

    invoke-virtual {p0, v2}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lccc71/pmw/lib/pmw_process;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v3, Lccc71/pmw/b/h;->c:Z

    if-nez v3, :cond_0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->m:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    sget v0, Lccc71/pmw/lib/d;->S:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ccc71.pmw.pid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccc71/pmw/lib/pmw_process;->f:Ljava/lang/String;

    const-string v2, "ccc71.pmw.packagename"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->j:Ljava/lang/String;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->f:Ljava/lang/String;

    new-instance v2, Lccc71/pmw/lib/kb;

    invoke-direct {v2, p0, v1, v0}, Lccc71/pmw/lib/kb;-><init>(Lccc71/pmw/lib/pmw_process;Ljava/lang/String;Landroid/widget/Button;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lccc71/pmw/lib/kb;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 1129
    :cond_1
    :goto_0
    return-void

    .line 1123
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1129
    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->d:Landroid/os/Handler;

    monitor-enter v1

    .line 1131
    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->d:Landroid/os/Handler;

    new-instance v2, Lccc71/pmw/lib/kd;

    invoke-direct {v2, p0}, Lccc71/pmw/lib/kd;-><init>(Lccc71/pmw/lib/pmw_process;)V

    iput-object v2, p0, Lccc71/pmw/lib/pmw_process;->e:Ljava/lang/Runnable;

    .line 1142
    const-wide/16 v3, 0x3e8

    .line 1131
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1129
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_process;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_process;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lccc71/pmw/lib/pmw_process;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_process;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->B:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_process;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->D:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_process;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->m:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_process;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static f()V
    .locals 7

    .prologue
    .line 1597
    sget-object v0, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    if-eqz v0, :cond_0

    .line 1599
    sget-object v0, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    sget-object v1, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    iget-object v1, v1, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    iget v1, v1, Lccc71/pmw/b/p;->a:I

    invoke-static {v1}, Lccc71/pmw/lib/pmw_recorder;->b(I)Lccc71/pmw/b/t;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_settings;->q(Landroid/content/Context;)I

    move-result v3

    sget-object v4, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_settings;->s(Landroid/content/Context;)I

    move-result v4

    sget-object v5, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v5}, Lccc71/pmw/lib/pmw_process;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lccc71/pmw/lib/g;->fJ:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lccc71/utils/ccc71_multi_graph_view;->setData(Lccc71/pmw/b/t;ZIILjava/lang/String;Ljava/util/Date;)V

    .line 1600
    sget-object v0, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    sget-object v1, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->r(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 1601
    sget-object v0, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    sget-object v1, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->as(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setAutoMax(Z)V

    .line 1603
    :cond_0
    return-void
.end method

.method static synthetic g(Lccc71/pmw/lib/pmw_process;)Lccc71/utils/ccc71_multi_graph_view;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    return-object v0
.end method

.method static synthetic h(Lccc71/pmw/lib/pmw_process;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->r:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lccc71/pmw/lib/pmw_process;->c:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic i(Lccc71/pmw/lib/pmw_process;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->j:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 858
    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->d:Landroid/os/Handler;

    monitor-enter v1

    .line 860
    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->d:Landroid/os/Handler;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_process;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 862
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->e:Ljava/lang/Runnable;

    .line 858
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic j(Lccc71/pmw/lib/pmw_process;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 1147
    sget v0, Lccc71/pmw/lib/d;->G:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jJ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->ga:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jH:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->fX:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->go:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "Stopped"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lccc71/pmw/lib/d;->jI:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->fZ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jK:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->gf:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->iW:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jL:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->gg:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jF:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->fV:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jE:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->fU:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jz:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jy:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->dP:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jA:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->dR:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jt:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->dL:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jv:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->dN:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jp:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->dH:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jC:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->fH:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic k(Lccc71/pmw/lib/pmw_process;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 1234
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-nez v0, :cond_0

    sget v0, Lccc71/pmw/lib/d;->aB:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    sget v0, Lccc71/pmw/lib/d;->iD:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jS:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jJ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->ga:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jH:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->fX:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jC:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->fH:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->ge:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->jD:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->go:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "Kernel"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    sget v0, Lccc71/pmw/lib/d;->W:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->X:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->S:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->al:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->K:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->M:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->aw:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->s:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lccc71/pmw/lib/d;->P:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic l(Lccc71/pmw/lib/pmw_process;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic m(Lccc71/pmw/lib/pmw_process;)V
    .locals 2
    .parameter

    .prologue
    .line 1271
    sget-object v0, Lccc71/pmw/lib/pmw_process;->c:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_process;->c:Landroid/content/pm/PackageManager;

    :cond_0
    new-instance v0, Lccc71/pmw/b/c;

    invoke-direct {v0}, Lccc71/pmw/b/c;-><init>()V

    new-instance v1, Lccc71/pmw/lib/ke;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/ke;-><init>(Lccc71/pmw/lib/pmw_process;Lccc71/pmw/b/c;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lccc71/pmw/lib/ke;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    return-void
.end method

.method static synthetic n(Lccc71/pmw/lib/pmw_process;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x4080

    const/high16 v2, 0x4000

    .line 1188
    sget v0, Lccc71/pmw/lib/d;->fW:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->gd:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jG:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jI:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->fZ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jK:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->gf:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jM:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->go:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jH:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->fX:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jJ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->ga:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jS:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->iD:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->iW:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jL:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->gg:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jF:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->fV:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jE:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->fU:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jz:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jy:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->dP:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jA:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->dR:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jt:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->dL:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jv:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->dN:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jp:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->dH:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jC:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->fH:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->iL:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jN:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jO:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jR:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->jD:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lccc71/pmw/lib/d;->ge:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_process;->o:F

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method static synthetic o(Lccc71/pmw/lib/pmw_process;)Lccc71/utils/v;
    .locals 1
    .parameter

    .prologue
    .line 682
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->I:Lccc71/utils/v;

    return-object v0
.end method

.method static synthetic p(Lccc71/pmw/lib/pmw_process;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic q(Lccc71/pmw/lib/pmw_process;)V
    .locals 1
    .parameter

    .prologue
    .line 1117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_process;->a(Z)V

    return-void
.end method


# virtual methods
.method final e()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x3e8

    const/4 v3, 0x0

    .line 707
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 709
    invoke-static {p0}, Lccc71/pmw/lib/pmw_monitor;->a(Landroid/content/Context;)Lccc71/pmw/b/q;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    invoke-virtual {v0, v1}, Lccc71/pmw/b/q;->b(Lccc71/pmw/b/p;)Lccc71/pmw/b/p;

    move-result-object v6

    .line 712
    if-eqz v6, :cond_f

    .line 714
    new-instance v0, Lccc71/pmw/b/z;

    invoke-direct {v0}, Lccc71/pmw/b/z;-><init>()V

    .line 716
    invoke-virtual {v0}, Lccc71/pmw/b/z;->b()J

    move-result-wide v0

    iget-wide v7, v6, Lccc71/pmw/b/p;->n:J

    sub-long/2addr v0, v7

    long-to-int v0, v0

    int-to-long v1, v0

    .line 718
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 719
    const/16 v4, 0xd

    div-long v7, v1, v9

    neg-long v7, v7

    long-to-int v7, v7

    invoke-virtual {v0, v4, v7}, Ljava/util/Calendar;->add(II)V

    .line 720
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 721
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 723
    sget v0, Lccc71/pmw/lib/d;->gf:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 724
    invoke-virtual {v7, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    sget v0, Lccc71/pmw/lib/d;->gg:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 727
    div-long v7, v1, v9

    invoke-static {v7, v8}, Lccc71/utils/ag;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    sget v0, Lccc71/pmw/lib/d;->fV:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 730
    iget-wide v7, v6, Lccc71/pmw/b/p;->o:J

    long-to-float v4, v7

    const/high16 v7, 0x447a

    div-float/2addr v4, v7

    invoke-static {v4}, Lccc71/utils/ag;->a(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    sget v0, Lccc71/pmw/lib/d;->fU:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 733
    const-wide/16 v7, 0x2710

    iget-wide v9, v6, Lccc71/pmw/b/p;->o:J

    mul-long/2addr v7, v9

    div-long v1, v7, v1

    long-to-int v1, v1

    .line 734
    int-to-long v1, v1

    invoke-static {v1, v2}, Lccc71/utils/ag;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    sget v0, Lccc71/pmw/lib/d;->dP:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 737
    iget v1, v6, Lccc71/pmw/b/p;->q:I

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    sget v0, Lccc71/pmw/lib/d;->dH:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 740
    iget v1, v6, Lccc71/pmw/b/p;->t:I

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    sget v0, Lccc71/pmw/lib/d;->dN:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 742
    iget v1, v6, Lccc71/pmw/b/p;->s:I

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    sget v0, Lccc71/pmw/lib/d;->dR:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 744
    iget v1, v6, Lccc71/pmw/b/p;->r:I

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    sget v0, Lccc71/pmw/lib/d;->dL:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 746
    iget v1, v6, Lccc71/pmw/b/p;->u:I

    invoke-static {v1}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    const-string v1, ""

    .line 749
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    iget-object v0, v0, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_0

    .line 751
    sget v0, Lccc71/pmw/lib/d;->go:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 752
    const-string v1, "Process"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    iget-object v0, v0, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    sparse-switch v0, :sswitch_data_0

    .line 769
    const-string v0, "Internal"

    move-object v1, v0

    .line 773
    :goto_0
    const-string v0, ""

    .line 774
    iget-object v2, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    iget-object v2, v2, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v7, v2

    move v2, v3

    .line 775
    :goto_1
    if-lt v2, v7, :cond_b

    .line 779
    iget-object v2, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    iget-object v2, v2, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_10

    .line 780
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 782
    :goto_2
    sget v0, Lccc71/pmw/lib/d;->fH:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 783
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    iget-object v0, v0, Lccc71/pmw/b/p;->m:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v0, :cond_8

    .line 788
    sget v0, Lccc71/pmw/lib/d;->go:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 789
    iget-object v2, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    iget-object v2, v2, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v2, :cond_c

    .line 790
    const-string v2, "Process & Service"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    :goto_3
    sget v0, Lccc71/pmw/lib/d;->ga:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    .line 795
    const-string v0, ""

    .line 796
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v2

    iget-object v4, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    iget-object v4, v4, Lccc71/pmw/b/p;->m:Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-virtual {v2, v4}, Lccc71/utils/android/y;->a(Landroid/app/ActivityManager$RunningServiceInfo;)I

    move-result v2

    .line 797
    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_1

    .line 799
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "System"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 801
    :cond_1
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_3

    .line 803
    const-string v4, ""

    if-eq v0, v4, :cond_2

    .line 804
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 805
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "Foreground"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 807
    :cond_3
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_5

    .line 809
    const-string v4, ""

    if-eq v0, v4, :cond_4

    .line 810
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 811
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "Persistent"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    :cond_5
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    .line 815
    const-string v2, ""

    if-eq v0, v2, :cond_6

    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 817
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "Started"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 820
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    .line 821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 826
    :cond_8
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 828
    sget v0, Lccc71/pmw/lib/d;->ga:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 829
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    :cond_9
    iget-boolean v0, v6, Lccc71/pmw/b/p;->g:Z

    if-nez v0, :cond_a

    .line 834
    new-instance v0, Lccc71/pmw/a/ar;

    invoke-direct {v0}, Lccc71/pmw/a/ar;-><init>()V

    .line 835
    iget v0, v6, Lccc71/pmw/b/p;->v:I

    invoke-static {p0, v0}, Lccc71/pmw/a/ar;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 836
    if-eqz v1, :cond_e

    .line 838
    sget v0, Lccc71/pmw/lib/d;->fX:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 839
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 840
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    :cond_a
    :goto_5
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 853
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Process updated in "

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

    .line 854
    return-void

    .line 757
    :sswitch_0
    const-string v0, "Foreground"

    move-object v1, v0

    .line 758
    goto/16 :goto_0

    .line 760
    :sswitch_1
    const-string v0, "Background"

    move-object v1, v0

    .line 761
    goto/16 :goto_0

    .line 763
    :sswitch_2
    const-string v0, "Service"

    move-object v1, v0

    .line 764
    goto/16 :goto_0

    .line 766
    :sswitch_3
    const-string v0, "Visible"

    move-object v1, v0

    .line 767
    goto/16 :goto_0

    .line 777
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    iget-object v0, v0, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 775
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v4

    goto/16 :goto_1

    .line 792
    :cond_c
    const-string v2, "Service"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_d
    move-object v1, v0

    .line 823
    goto/16 :goto_4

    .line 844
    :cond_e
    sget v0, Lccc71/pmw/lib/d;->fX:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 845
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 850
    :cond_f
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->finish()V

    goto/16 :goto_5

    :cond_10
    move-object v2, v0

    goto/16 :goto_2

    .line 754
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_2
        0x190 -> :sswitch_1
    .end sparse-switch
.end method

.method public final g()V
    .locals 7

    .prologue
    .line 1607
    sget-object v0, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    iget v1, v1, Lccc71/pmw/b/p;->a:I

    invoke-static {v1}, Lccc71/pmw/lib/pmw_recorder;->b(I)Lccc71/pmw/b/t;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->q(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->s(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lccc71/pmw/lib/g;->fJ:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lccc71/utils/ccc71_multi_graph_view;->setData(Lccc71/pmw/b/t;ZIILjava/lang/String;Ljava/util/Date;)V

    .line 1610
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    sget-object v1, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->r(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 1611
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    sget-object v1, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->as(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setAutoMax(Z)V

    .line 1613
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->h()V

    .line 1616
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 4

    .prologue
    .line 1620
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    if-eqz v0, :cond_0

    .line 1622
    sget v0, Lccc71/pmw/lib/d;->fP:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->dQ:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1623
    iget-object v2, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_multi_graph_view;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->dS:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1624
    iget-object v2, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_multi_graph_view;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1622
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1626
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 166
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_process;->j()V

    .line 167
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_process;->a(Z)V

    .line 169
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 170
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    const/4 v0, 0x1

    .line 496
    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    if-eqz v1, :cond_5

    .line 498
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->dY:I

    if-ne v1, v2, :cond_0

    .line 500
    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v1}, Lccc71/utils/ccc71_multi_graph_view;->j()Z

    move-result v1

    invoke-static {p0, v1}, Lccc71/pmw/lib/pmw_settings;->c(Landroid/content/Context;Z)V

    .line 644
    :goto_0
    return v0

    .line 503
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->dZ:I

    if-ne v1, v2, :cond_1

    .line 505
    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v1, v3}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 506
    invoke-static {p0, v3}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;F)V

    .line 507
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->h()V

    goto :goto_0

    .line 510
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->ea:I

    if-ne v1, v2, :cond_2

    .line 512
    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 513
    const/high16 v1, 0x4000

    invoke-static {p0, v1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;F)V

    .line 514
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->h()V

    goto :goto_0

    .line 517
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->eb:I

    if-ne v1, v2, :cond_3

    .line 519
    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    const/high16 v2, 0x4040

    invoke-virtual {v1, v2}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 520
    const/high16 v1, 0x4040

    invoke-static {p0, v1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;F)V

    .line 521
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->h()V

    goto :goto_0

    .line 524
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->ec:I

    if-ne v1, v2, :cond_4

    .line 526
    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    const/high16 v2, 0x4080

    invoke-virtual {v1, v2}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 527
    const/high16 v1, 0x4080

    invoke-static {p0, v1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;F)V

    .line 528
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->h()V

    goto :goto_0

    .line 531
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->ed:I

    if-ne v1, v2, :cond_5

    .line 533
    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    const/high16 v2, 0x40a0

    invoke-virtual {v1, v2}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 534
    const/high16 v1, 0x40a0

    invoke-static {p0, v1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;F)V

    .line 535
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->h()V

    goto :goto_0

    .line 542
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    iget-object v1, v1, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 544
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->ej:I

    if-ne v1, v2, :cond_8

    .line 546
    invoke-static {v0}, Lccc71/pmw/a/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    .line 548
    if-eqz v1, :cond_7

    .line 550
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 551
    sget v2, Lccc71/pmw/lib/g;->el:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 552
    const v2, 0x1040013

    new-instance v3, Lccc71/pmw/lib/ju;

    invoke-direct {v3, p0, v0}, Lccc71/pmw/lib/ju;-><init>(Lccc71/pmw/lib/pmw_process;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 571
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0

    .line 576
    :cond_7
    :try_start_1
    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->B:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lccc71/pmw/a/d;->c(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V

    goto :goto_1

    .line 640
    :catch_0
    move-exception v0

    goto :goto_1

    .line 579
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->ek:I

    if-ne v1, v2, :cond_9

    .line 581
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 582
    sget v2, Lccc71/pmw/lib/g;->em:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 583
    const v2, 0x1040013

    new-instance v3, Lccc71/pmw/lib/jw;

    invoke-direct {v3, p0, v0}, Lccc71/pmw/lib/jw;-><init>(Lccc71/pmw/lib/pmw_process;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 602
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 603
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 605
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->el:I

    if-ne v1, v2, :cond_6

    .line 607
    invoke-static {v0}, Lccc71/pmw/a/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    .line 608
    if-eqz v1, :cond_a

    .line 610
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 611
    sget v2, Lccc71/pmw/lib/g;->en:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 612
    const v2, 0x1040013

    new-instance v3, Lccc71/pmw/lib/jz;

    invoke-direct {v3, p0, v0}, Lccc71/pmw/lib/jz;-><init>(Lccc71/pmw/lib/pmw_process;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 631
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 632
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 636
    :cond_a
    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->B:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lccc71/pmw/a/d;->b(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/b;->q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->q:[Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/b;->p:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->r:[Ljava/lang/String;

    .line 92
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 650
    invoke-super {p0, p1, p2, p3}, Lccc71/pmw/lib/pmw_activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 652
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->P:I

    if-ne v0, v1, :cond_2

    .line 656
    :try_start_0
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    iget-object v1, v1, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 658
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/f;->g:I

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 659
    invoke-static {v0}, Lccc71/pmw/a/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    sget v0, Lccc71/pmw/lib/d;->ek:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 680
    :goto_0
    return-void

    .line 663
    :cond_0
    invoke-static {v0}, Lccc71/pmw/a/d;->c(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    sget v0, Lccc71/pmw/lib/d;->ej:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    goto :goto_0

    .line 669
    :cond_1
    sget v0, Lccc71/pmw/lib/d;->el:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    :cond_2
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/f;->e:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 136
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->l:Landroid/graphics/Bitmap;

    .line 142
    :cond_0
    sput-object v1, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    .line 144
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->e:Ljava/lang/Runnable;

    .line 146
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->f:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->j:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->k:Lccc71/pmw/b/p;

    .line 150
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->m:Landroid/widget/Button;

    .line 152
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    .line 154
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->q:[Ljava/lang/String;

    .line 155
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->r:[Ljava/lang/String;

    .line 157
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->s:Landroid/widget/TableRow$LayoutParams;

    .line 158
    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->t:Landroid/widget/TableRow$LayoutParams;

    .line 160
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 161
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    sput-object v0, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    .line 117
    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->n:Lccc71/utils/ccc71_multi_graph_view;

    .line 119
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_process;->j()V

    .line 120
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onPause()V

    .line 121
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 97
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onResume()V

    .line 99
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aC(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_process;->p:I

    .line 100
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_process;->o:F

    .line 102
    iget v0, p0, Lccc71/pmw/lib/pmw_process;->o:F

    const/high16 v1, 0x40c0

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 103
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v1, v0, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lccc71/pmw/lib/pmw_process;->t:Landroid/widget/TableRow$LayoutParams;

    .line 104
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->t:Landroid/widget/TableRow$LayoutParams;

    const/high16 v1, 0x4120

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_process;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    .line 106
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_process;->s:Landroid/widget/TableRow$LayoutParams;

    .line 107
    iget-object v0, p0, Lccc71/pmw/lib/pmw_process;->s:Landroid/widget/TableRow$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 109
    sput-object p0, Lccc71/pmw/lib/pmw_process;->b:Lccc71/pmw/lib/pmw_process;

    .line 110
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_process;->a(Z)V

    .line 111
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onStop()V

    .line 128
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_process;->j()V

    .line 129
    return-void
.end method
