.class public Lccc71/pmw/lib/pmw_backuplist;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# static fields
.field private static F:Ljava/text/Collator;

.field static a:Z

.field private static e:I

.field private static f:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static q:Landroid/app/ProgressDialog;

.field private static r:Ljava/lang/String;

.field private static s:Z


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/Button;

.field private C:Landroid/widget/Button;

.field private D:Z

.field private E:Lccc71/pmw/b/m;

.field private G:F

.field private H:I

.field private I:I

.field private J:I

.field private K:Landroid/os/Handler;

.field private L:Landroid/os/Handler;

.field private M:Landroid/view/View$OnLongClickListener;

.field private N:Landroid/view/View$OnLongClickListener;

.field private O:Landroid/view/View$OnClickListener;

.field private P:Landroid/view/View$OnClickListener;

.field private Q:Landroid/view/View$OnClickListener;

.field private R:Landroid/view/View$OnClickListener;

.field private S:Landroid/os/Handler;

.field protected b:Landroid/view/View$OnClickListener;

.field protected c:Landroid/view/View$OnClickListener;

.field protected d:Landroid/view/View$OnClickListener;

.field private m:I

.field private n:Lccc71/pmw/lib/dz;

.field private o:Ljava/util/ArrayList;

.field private p:Z

.field private t:Landroid/os/Handler;

.field private u:Landroid/content/pm/PackageManager;

.field private v:[Ljava/lang/String;

.field private w:[Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    const v0, 0x70a0a0ff

    sput v0, Lccc71/pmw/lib/pmw_backuplist;->e:I

    .line 63
    sput v1, Lccc71/pmw/lib/pmw_backuplist;->f:I

    .line 64
    const/4 v0, 0x1

    sput v0, Lccc71/pmw/lib/pmw_backuplist;->j:I

    .line 65
    const/4 v0, 0x2

    sput v0, Lccc71/pmw/lib/pmw_backuplist;->k:I

    .line 67
    const/16 v0, 0x800

    sput v0, Lccc71/pmw/lib/pmw_backuplist;->l:I

    .line 76
    sput-boolean v1, Lccc71/pmw/lib/pmw_backuplist;->a:Z

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_backuplist;->q:Landroid/app/ProgressDialog;

    .line 85
    const-string v0, ""

    sput-object v0, Lccc71/pmw/lib/pmw_backuplist;->r:Ljava/lang/String;

    .line 86
    sput-boolean v1, Lccc71/pmw/lib/pmw_backuplist;->s:Z

    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_backuplist;->F:Ljava/text/Collator;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 78
    iput v1, p0, Lccc71/pmw/lib/pmw_backuplist;->m:I

    .line 80
    sget-object v0, Lccc71/pmw/lib/dz;->a:Lccc71/pmw/lib/dz;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->n:Lccc71/pmw/lib/dz;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    .line 83
    iput-boolean v1, p0, Lccc71/pmw/lib/pmw_backuplist;->p:Z

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->t:Landroid/os/Handler;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->u:Landroid/content/pm/PackageManager;

    .line 102
    iput-boolean v1, p0, Lccc71/pmw/lib/pmw_backuplist;->D:Z

    .line 1167
    new-instance v0, Lccc71/pmw/lib/cw;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/cw;-><init>(Lccc71/pmw/lib/pmw_backuplist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->b:Landroid/view/View$OnClickListener;

    .line 1199
    new-instance v0, Lccc71/pmw/lib/dj;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/dj;-><init>(Lccc71/pmw/lib/pmw_backuplist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->K:Landroid/os/Handler;

    .line 1259
    new-instance v0, Lccc71/pmw/lib/dk;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/dk;-><init>(Lccc71/pmw/lib/pmw_backuplist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->L:Landroid/os/Handler;

    .line 1319
    new-instance v0, Lccc71/pmw/lib/dl;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/dl;-><init>(Lccc71/pmw/lib/pmw_backuplist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->c:Landroid/view/View$OnClickListener;

    .line 1475
    new-instance v0, Lccc71/pmw/lib/dp;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/dp;-><init>(Lccc71/pmw/lib/pmw_backuplist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->d:Landroid/view/View$OnClickListener;

    .line 1493
    new-instance v0, Lccc71/pmw/lib/dq;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/dq;-><init>(Lccc71/pmw/lib/pmw_backuplist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->M:Landroid/view/View$OnLongClickListener;

    .line 1512
    new-instance v0, Lccc71/pmw/lib/dr;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/dr;-><init>(Lccc71/pmw/lib/pmw_backuplist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->N:Landroid/view/View$OnLongClickListener;

    .line 1531
    new-instance v0, Lccc71/pmw/lib/ds;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ds;-><init>(Lccc71/pmw/lib/pmw_backuplist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->O:Landroid/view/View$OnClickListener;

    .line 1641
    new-instance v0, Lccc71/pmw/lib/dv;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/dv;-><init>(Lccc71/pmw/lib/pmw_backuplist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->P:Landroid/view/View$OnClickListener;

    .line 1835
    new-instance v0, Lccc71/pmw/lib/cx;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/cx;-><init>(Lccc71/pmw/lib/pmw_backuplist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->Q:Landroid/view/View$OnClickListener;

    .line 1853
    new-instance v0, Lccc71/pmw/lib/cy;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/cy;-><init>(Lccc71/pmw/lib/pmw_backuplist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->R:Landroid/view/View$OnClickListener;

    .line 1955
    new-instance v0, Lccc71/pmw/lib/da;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/da;-><init>(Lccc71/pmw/lib/pmw_backuplist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->S:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic A(Lccc71/pmw/lib/pmw_backuplist;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 1259
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->L:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1935
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1936
    if-ltz v0, :cond_0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->v:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1938
    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->v:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 1941
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_backuplist;Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1933
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_backuplist;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    sput-object p0, Lccc71/pmw/lib/pmw_backuplist;->q:Landroid/app/ProgressDialog;

    return-void
.end method

.method private a(Lccc71/pmw/a/y;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1036
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1038
    sput-boolean v7, Lccc71/pmw/lib/pmw_easy_apps;->a:Z

    .line 1039
    sput-boolean v7, Lccc71/pmw/lib/pmw_event_apps;->b:Z

    .line 1041
    sget-object v0, Lccc71/pmw/a/y;->d:Lccc71/pmw/a/y;

    if-eq p1, v0, :cond_0

    sget-object v0, Lccc71/pmw/a/y;->c:Lccc71/pmw/a/y;

    if-ne p1, v0, :cond_4

    .line 1042
    :cond_0
    sput-boolean v7, Lccc71/pmw/lib/pmw_applist;->c:Z

    .line 1046
    :cond_1
    :goto_0
    if-ne v2, v7, :cond_9

    .line 1048
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 1050
    const-string v1, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Selected apk ("

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_backuplist;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 1053
    if-nez v4, :cond_2

    sget-object v4, Lccc71/pmw/a/d;->c:Ljava/lang/String;

    .line 1055
    :cond_2
    sget-object v0, Lccc71/pmw/a/y;->a:Lccc71/pmw/a/y;

    if-ne p1, v0, :cond_6

    .line 1057
    sget-object v0, Lccc71/pmw/a/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1058
    sput-boolean v7, Lccc71/pmw/lib/pmw_applist;->b:Z

    .line 1072
    :cond_3
    :goto_1
    new-instance v0, Lccc71/pmw/lib/dg;

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lccc71/pmw/lib/dg;-><init>(Lccc71/pmw/lib/pmw_backuplist;Ljava/lang/String;Lccc71/pmw/a/y;Ljava/lang/String;Z)V

    .line 1082
    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setPriority(I)V

    .line 1083
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1165
    :goto_2
    return-void

    .line 1043
    :cond_4
    sget-object v0, Lccc71/pmw/a/y;->b:Lccc71/pmw/a/y;

    if-ne p1, v0, :cond_1

    .line 1044
    sput-boolean v7, Lccc71/pmw/lib/pmw_applist;->b:Z

    goto :goto_0

    .line 1060
    :cond_5
    sput-boolean v7, Lccc71/pmw/lib/pmw_applist;->c:Z

    goto :goto_1

    .line 1064
    :cond_6
    sget-object v0, Lccc71/pmw/a/y;->c:Lccc71/pmw/a/y;

    if-eq p1, v0, :cond_7

    sget-object v0, Lccc71/pmw/a/y;->d:Lccc71/pmw/a/y;

    if-ne p1, v0, :cond_8

    .line 1065
    :cond_7
    sput-boolean v7, Lccc71/pmw/lib/pmw_applist;->c:Z

    goto :goto_1

    .line 1066
    :cond_8
    sget-object v0, Lccc71/pmw/a/y;->b:Lccc71/pmw/a/y;

    if-ne p1, v0, :cond_3

    .line 1067
    sput-boolean v7, Lccc71/pmw/lib/pmw_applist;->b:Z

    goto :goto_1

    .line 1088
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v5

    .line 1090
    :goto_3
    if-lt v1, v2, :cond_b

    .line 1096
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1097
    sput-object v0, Lccc71/pmw/lib/pmw_backuplist;->q:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1098
    sget-object v0, Lccc71/pmw/lib/pmw_backuplist;->q:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1099
    sget-object v0, Lccc71/pmw/lib/pmw_backuplist;->q:Landroid/app/ProgressDialog;

    sget v1, Lccc71/pmw/lib/g;->fO:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1100
    sget-object v0, Lccc71/pmw/lib/pmw_backuplist;->q:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1101
    sget-object v0, Lccc71/pmw/lib/pmw_backuplist;->q:Landroid/app/ProgressDialog;

    sget v1, Lccc71/pmw/lib/c;->ao:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 1102
    sget-object v0, Lccc71/pmw/lib/pmw_backuplist;->q:Landroid/app/ProgressDialog;

    sget v1, Lccc71/pmw/lib/g;->ey:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_backuplist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1103
    sget-object v0, Lccc71/pmw/lib/pmw_backuplist;->q:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1104
    sget-object v0, Lccc71/pmw/lib/pmw_backuplist;->q:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1105
    sget-object v0, Lccc71/pmw/lib/pmw_backuplist;->q:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1106
    sput-boolean v5, Lccc71/pmw/lib/pmw_backuplist;->s:Z

    .line 1108
    sget-object v0, Lccc71/pmw/lib/pmw_backuplist;->q:Landroid/app/ProgressDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1109
    if-eqz v0, :cond_a

    .line 1111
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1112
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 1115
    :cond_a
    const-string v0, ""

    sput-object v0, Lccc71/pmw/lib/pmw_backuplist;->r:Ljava/lang/String;

    .line 1117
    new-instance v0, Lccc71/pmw/lib/dh;

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/lib/dh;-><init>(Lccc71/pmw/lib/pmw_backuplist;ILjava/util/ArrayList;Ljava/util/ArrayList;Lccc71/pmw/a/y;Z)V

    .line 1163
    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setPriority(I)V

    .line 1164
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 1092
    :cond_b
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_backuplist;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_backuplist;Landroid/content/pm/PackageManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lccc71/pmw/lib/pmw_backuplist;->u:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_backuplist;Lccc71/pmw/a/y;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1034
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/a/y;Z)V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_backuplist;Lccc71/pmw/b/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lccc71/pmw/lib/pmw_backuplist;->E:Lccc71/pmw/b/m;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_backuplist;Lccc71/pmw/lib/dz;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lccc71/pmw/lib/pmw_backuplist;->n:Lccc71/pmw/lib/dz;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_backuplist;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lccc71/pmw/lib/pmw_backuplist;->x:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_backuplist;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-boolean p1, p0, Lccc71/pmw/lib/pmw_backuplist;->p:Z

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_backuplist;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lccc71/pmw/lib/pmw_backuplist;->v:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    sput-object p0, Lccc71/pmw/lib/pmw_backuplist;->r:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 86
    sput-boolean p0, Lccc71/pmw/lib/pmw_backuplist;->s:Z

    return-void
.end method

.method static synthetic a(Ljava/io/File;)Z
    .locals 1
    .parameter

    .prologue
    .line 1816
    invoke-static {p0}, Lccc71/pmw/lib/pmw_backuplist;->b(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1946
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1947
    if-ltz v0, :cond_0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->v:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1949
    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->w:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 1952
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_backuplist;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lccc71/pmw/lib/pmw_backuplist;->w:[Ljava/lang/String;

    return-void
.end method

.method private static b(Ljava/io/File;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1818
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1820
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 1821
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_2

    .line 1832
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    :cond_1
    return v1

    .line 1823
    :cond_2
    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lccc71/pmw/lib/pmw_backuplist;->b(Ljava/io/File;)Z

    move-result v3

    .line 1824
    if-eqz v3, :cond_1

    .line 1821
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_backuplist;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->v:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_backuplist;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->u:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lccc71/pmw/lib/pmw_backuplist;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_backuplist;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_backuplist;->n()V

    return-void
.end method

.method static synthetic e()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lccc71/pmw/lib/pmw_backuplist;->s:Z

    return v0
.end method

.method static synthetic f()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lccc71/pmw/lib/pmw_backuplist;->q:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_backuplist;)Lccc71/pmw/b/m;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->E:Lccc71/pmw/b/m;

    return-object v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lccc71/pmw/lib/pmw_backuplist;->l:I

    return v0
.end method

.method static synthetic g(Lccc71/pmw/lib/pmw_backuplist;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->y:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lccc71/pmw/lib/pmw_backuplist;->e:I

    return v0
.end method

.method static synthetic h(Lccc71/pmw/lib/pmw_backuplist;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->z:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lccc71/pmw/lib/pmw_backuplist;->k:I

    return v0
.end method

.method static synthetic i(Lccc71/pmw/lib/pmw_backuplist;)Z
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_backuplist;->p:Z

    return v0
.end method

.method static synthetic j()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lccc71/pmw/lib/pmw_backuplist;->j:I

    return v0
.end method

.method static synthetic j(Lccc71/pmw/lib/pmw_backuplist;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1969
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_backuplist;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->A:Landroid/widget/Button;

    sget v1, Lccc71/pmw/lib/c;->V:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->A:Landroid/widget/Button;

    sget v1, Lccc71/pmw/lib/g;->bC:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->A:Landroid/widget/Button;

    sget v1, Lccc71/pmw/lib/c;->U:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->A:Landroid/widget/Button;

    sget v1, Lccc71/pmw/lib/g;->bB:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method static synthetic k(Lccc71/pmw/lib/pmw_backuplist;)Lccc71/pmw/lib/dz;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->n:Lccc71/pmw/lib/dz;

    return-object v0
.end method

.method static synthetic k()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lccc71/pmw/lib/pmw_backuplist;->F:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic l()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lccc71/pmw/lib/pmw_backuplist;->f:I

    return v0
.end method

.method static synthetic l(Lccc71/pmw/lib/pmw_backuplist;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->B:Landroid/widget/Button;

    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    sput-boolean v1, Lccc71/pmw/lib/pmw_backuplist;->a:Z

    .line 187
    iput-boolean v1, p0, Lccc71/pmw/lib/pmw_backuplist;->D:Z

    .line 189
    sget-object v0, Lccc71/pmw/lib/pmw_backuplist;->q:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/pmw/lib/pmw_backuplist;->q:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 192
    :cond_0
    sget v0, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 193
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->C:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 199
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_backuplist;->n()V

    goto :goto_0
.end method

.method static synthetic m(Lccc71/pmw/lib/pmw_backuplist;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->w:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lccc71/pmw/lib/pmw_backuplist;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->t:Landroid/os/Handler;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 488
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->u:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_backuplist;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->u:Landroid/content/pm/PackageManager;

    .line 491
    :cond_0
    sget v0, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 493
    new-instance v0, Lccc71/pmw/lib/de;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/de;-><init>(Lccc71/pmw/lib/pmw_backuplist;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 573
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/de;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 574
    return-void
.end method

.method static synthetic o(Lccc71/pmw/lib/pmw_backuplist;)I
    .locals 1
    .parameter

    .prologue
    .line 109
    iget v0, p0, Lccc71/pmw/lib/pmw_backuplist;->H:I

    return v0
.end method

.method static synthetic p(Lccc71/pmw/lib/pmw_backuplist;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->C:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic q(Lccc71/pmw/lib/pmw_backuplist;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_backuplist;->m()V

    return-void
.end method

.method static synthetic r(Lccc71/pmw/lib/pmw_backuplist;)F
    .locals 1
    .parameter

    .prologue
    .line 108
    iget v0, p0, Lccc71/pmw/lib/pmw_backuplist;->G:F

    return v0
.end method

.method static synthetic s(Lccc71/pmw/lib/pmw_backuplist;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_backuplist;->D:Z

    return v0
.end method

.method static synthetic t(Lccc71/pmw/lib/pmw_backuplist;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 1853
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->R:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic u(Lccc71/pmw/lib/pmw_backuplist;)V
    .locals 4
    .parameter

    .prologue
    .line 596
    new-instance v0, Lccc71/pmw/b/u;

    invoke-direct {v0}, Lccc71/pmw/b/u;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lccc71/pmw/lib/df;

    invoke-direct {v3, p0, v1, v2, v0}, Lccc71/pmw/lib/df;-><init>(Lccc71/pmw/lib/pmw_backuplist;Ljava/util/ArrayList;Ljava/util/ArrayList;Lccc71/pmw/b/u;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v3, v0}, Lccc71/pmw/lib/df;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    return-void
.end method

.method static synthetic v(Lccc71/pmw/lib/pmw_backuplist;)I
    .locals 1
    .parameter

    .prologue
    .line 110
    iget v0, p0, Lccc71/pmw/lib/pmw_backuplist;->I:I

    return v0
.end method

.method static synthetic w(Lccc71/pmw/lib/pmw_backuplist;)I
    .locals 1
    .parameter

    .prologue
    .line 111
    iget v0, p0, Lccc71/pmw/lib/pmw_backuplist;->J:I

    return v0
.end method

.method static synthetic x(Lccc71/pmw/lib/pmw_backuplist;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 1835
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->Q:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic y(Lccc71/pmw/lib/pmw_backuplist;)I
    .locals 1
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lccc71/pmw/lib/pmw_backuplist;->m:I

    return v0
.end method

.method static synthetic z(Lccc71/pmw/lib/pmw_backuplist;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 1199
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->K:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 218
    sget v0, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 219
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v5

    .line 221
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->eO:I

    if-ne v1, v2, :cond_1

    .line 223
    sget-object v0, Lccc71/pmw/a/y;->a:Lccc71/pmw/a/y;

    invoke-direct {p0, v0, v7}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/a/y;Z)V

    .line 438
    :cond_0
    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 440
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->z:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->y:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 448
    :goto_1
    return v7

    .line 225
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->eV:I

    if-ne v1, v2, :cond_2

    .line 227
    sget-object v0, Lccc71/pmw/a/y;->c:Lccc71/pmw/a/y;

    invoke-direct {p0, v0, v3}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/a/y;Z)V

    goto :goto_0

    .line 229
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->eT:I

    if-ne v1, v2, :cond_3

    .line 231
    sget-object v0, Lccc71/pmw/a/y;->b:Lccc71/pmw/a/y;

    invoke-direct {p0, v0, v3}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/a/y;Z)V

    goto :goto_0

    .line 233
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->eQ:I

    if-ne v1, v2, :cond_4

    .line 235
    sget-object v0, Lccc71/pmw/a/y;->d:Lccc71/pmw/a/y;

    invoke-direct {p0, v0, v3}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/a/y;Z)V

    goto :goto_0

    .line 237
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->eP:I

    if-ne v1, v2, :cond_5

    .line 239
    sget-object v0, Lccc71/pmw/a/y;->d:Lccc71/pmw/a/y;

    invoke-direct {p0, v0, v7}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/a/y;Z)V

    goto :goto_0

    .line 241
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->eU:I

    if-ne v1, v2, :cond_6

    .line 243
    sget-object v0, Lccc71/pmw/a/y;->c:Lccc71/pmw/a/y;

    invoke-direct {p0, v0, v7}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/a/y;Z)V

    goto :goto_0

    .line 245
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->eS:I

    if-ne v1, v2, :cond_7

    .line 247
    sget-object v0, Lccc71/pmw/a/y;->b:Lccc71/pmw/a/y;

    invoke-direct {p0, v0, v7}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/a/y;Z)V

    goto :goto_0

    .line 249
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->eR:I

    if-ne v1, v2, :cond_8

    .line 251
    sget-object v0, Lccc71/pmw/a/y;->e:Lccc71/pmw/a/y;

    invoke-direct {p0, v0, v7}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/a/y;Z)V

    goto :goto_0

    .line 253
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->fl:I

    if-ne v1, v2, :cond_9

    .line 255
    sget v1, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lccc71/pmw/lib/g;->bO:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 256
    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 257
    new-instance v1, Lccc71/pmw/lib/db;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/db;-><init>(Lccc71/pmw/lib/pmw_backuplist;Landroid/widget/TableLayout;)V

    new-array v0, v3, [Ljava/lang/Void;

    .line 265
    invoke-virtual {v1, v0}, Lccc71/pmw/lib/db;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    goto/16 :goto_0

    .line 267
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->fp:I

    if-ne v1, v2, :cond_a

    .line 269
    sget v1, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lccc71/pmw/lib/g;->bS:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 270
    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 271
    new-instance v1, Lccc71/pmw/lib/dc;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/dc;-><init>(Lccc71/pmw/lib/pmw_backuplist;Landroid/widget/TableLayout;)V

    new-array v0, v3, [Ljava/lang/Void;

    .line 279
    invoke-virtual {v1, v0}, Lccc71/pmw/lib/dc;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    goto/16 :goto_0

    .line 281
    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->fn:I

    if-ne v1, v2, :cond_b

    .line 283
    sget v1, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lccc71/pmw/lib/g;->bQ:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 284
    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 285
    new-instance v1, Lccc71/pmw/lib/dd;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/dd;-><init>(Lccc71/pmw/lib/pmw_backuplist;Landroid/widget/TableLayout;)V

    new-array v0, v3, [Ljava/lang/Void;

    .line 293
    invoke-virtual {v1, v0}, Lccc71/pmw/lib/dd;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    goto/16 :goto_0

    .line 295
    :cond_b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->eX:I

    if-ne v1, v2, :cond_d

    .line 297
    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v3

    .line 298
    :goto_2
    if-ge v1, v5, :cond_0

    .line 300
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 302
    const-class v4, Landroid/widget/TableRow;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 304
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_c

    .line 306
    iget-object v4, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    sget v4, Lccc71/pmw/lib/pmw_backuplist;->e:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 298
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 312
    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->fc:I

    if-ne v1, v2, :cond_f

    .line 314
    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v3

    .line 315
    :goto_3
    if-ge v1, v5, :cond_0

    .line 317
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 318
    div-int/lit8 v4, v1, 0x2

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_e

    .line 320
    iget v4, p0, Lccc71/pmw/lib/pmw_backuplist;->H:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 315
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 324
    :cond_e
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 328
    :cond_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->eZ:I

    if-ne v1, v2, :cond_13

    .line 330
    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v4, v3

    .line 331
    :goto_5
    if-ge v4, v5, :cond_0

    .line 333
    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 335
    const-class v2, Landroid/widget/TableRow;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 337
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    .line 339
    check-cast v1, Landroid/widget/TableRow;

    .line 340
    sget v2, Lccc71/pmw/lib/pmw_backuplist;->j:I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 341
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 342
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 344
    iget v6, p0, Lccc71/pmw/lib/pmw_backuplist;->J:I

    if-ne v2, v6, :cond_11

    .line 346
    iget-object v2, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    sget v2, Lccc71/pmw/lib/pmw_backuplist;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 331
    :cond_10
    :goto_6
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    .line 351
    :cond_11
    div-int/lit8 v2, v4, 0x2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_12

    .line 353
    iget v2, p0, Lccc71/pmw/lib/pmw_backuplist;->H:I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    goto :goto_6

    .line 357
    :cond_12
    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    goto :goto_6

    .line 364
    :cond_13
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->eY:I

    if-ne v1, v2, :cond_17

    .line 366
    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v4, v3

    .line 367
    :goto_7
    if-ge v4, v5, :cond_0

    .line 369
    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 371
    const-class v2, Landroid/widget/TableRow;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 373
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_14

    .line 375
    check-cast v1, Landroid/widget/TableRow;

    .line 376
    sget v2, Lccc71/pmw/lib/pmw_backuplist;->j:I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 378
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 379
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 381
    iget v6, p0, Lccc71/pmw/lib/pmw_backuplist;->I:I

    if-ne v2, v6, :cond_15

    .line 383
    iget-object v2, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    sget v2, Lccc71/pmw/lib/pmw_backuplist;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 367
    :cond_14
    :goto_8
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_7

    .line 388
    :cond_15
    div-int/lit8 v2, v4, 0x2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_16

    .line 390
    iget v2, p0, Lccc71/pmw/lib/pmw_backuplist;->H:I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    goto :goto_8

    .line 394
    :cond_16
    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    goto :goto_8

    .line 401
    :cond_17
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lccc71/pmw/lib/d;->fb:I

    if-ne v1, v2, :cond_0

    .line 403
    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v2, v3

    .line 404
    :goto_9
    if-ge v2, v5, :cond_0

    .line 406
    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 408
    const-class v4, Landroid/widget/TableRow;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 410
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_18

    .line 412
    check-cast v1, Landroid/widget/TableRow;

    .line 413
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 414
    const-class v6, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 416
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-lez v4, :cond_19

    .line 418
    iget-object v4, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    sget v4, Lccc71/pmw/lib/pmw_backuplist;->e:I

    invoke-virtual {v1, v4}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 404
    :cond_18
    :goto_a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9

    .line 423
    :cond_19
    div-int/lit8 v4, v2, 0x2

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1a

    .line 425
    iget v4, p0, Lccc71/pmw/lib/pmw_backuplist;->H:I

    invoke-virtual {v1, v4}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    goto :goto_a

    .line 429
    :cond_1a
    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    goto :goto_a

    .line 445
    :cond_1b
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->z:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 446
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->y:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 116
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_backuplist;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->S:Landroid/os/Handler;

    invoke-static {p0, v0}, Lccc71/pmw/lib/gh;->a(Landroid/content/Context;Landroid/os/Handler;)Z

    .line 125
    sget v0, Lccc71/pmw/lib/e;->bf:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_backuplist;->setContentView(I)V

    .line 127
    sget v0, Lccc71/pmw/lib/d;->ac:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->y:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->y:Landroid/view/View;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->y:Landroid/view/View;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->M:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 131
    :cond_1
    sget v0, Lccc71/pmw/lib/d;->w:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->z:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->z:Landroid/view/View;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    sget v0, Lccc71/pmw/lib/d;->Q:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->A:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->A:Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->A:Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->N:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 136
    sget v0, Lccc71/pmw/lib/d;->ak:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->B:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->B:Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    sget v0, Lccc71/pmw/lib/d;->am:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->C:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->C:Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_backuplist;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-static {p0}, Lccc71/pmw/a/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    sget v0, Lccc71/pmw/lib/g;->dG:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_backuplist;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    :cond_2
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_backuplist;->G:F

    .line 148
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aC(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_backuplist;->H:I

    .line 149
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->az(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_backuplist;->J:I

    .line 150
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aA(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_backuplist;->I:I

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 454
    invoke-super {p0, p1, p2, p3}, Lccc71/pmw/lib/pmw_activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 456
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->A:Landroid/widget/Button;

    if-ne p2, v0, :cond_1

    .line 458
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_backuplist;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/f;->l:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->y:Landroid/view/View;

    if-ne p2, v0, :cond_3

    .line 462
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_backuplist;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/f;->i:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 463
    invoke-static {p0}, Lccc71/pmw/a/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 465
    sget v0, Lccc71/pmw/lib/d;->eP:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 466
    sget v0, Lccc71/pmw/lib/d;->eQ:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 468
    :cond_2
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    sget v0, Lccc71/pmw/lib/d;->eO:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0

    .line 475
    :cond_3
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_backuplist;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/f;->n:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 476
    sget v0, Lccc71/pmw/lib/d;->fh:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 477
    sget v0, Lccc71/pmw/lib/d;->fm:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 478
    sget v0, Lccc71/pmw/lib/d;->fg:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 479
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-nez v0, :cond_0

    .line 481
    sget v0, Lccc71/pmw/lib/d;->fl:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 207
    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->E:Lccc71/pmw/b/m;

    .line 208
    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->v:[Ljava/lang/String;

    .line 209
    iput-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->w:[Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backuplist;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 213
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onNewIntent(Landroid/content/Intent;)V

    .line 181
    invoke-virtual {p0, p1}, Lccc71/pmw/lib/pmw_backuplist;->setIntent(Landroid/content/Intent;)V

    .line 182
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 156
    sget v0, Lccc71/pmw/lib/d;->iw:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_backuplist;->m:I

    .line 160
    :cond_0
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onPause()V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_backuplist;->D:Z

    .line 163
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onResume()V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_backuplist;->D:Z

    .line 172
    sget-boolean v0, Lccc71/pmw/lib/pmw_backuplist;->a:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_backuplist;->m()V

    .line 174
    :cond_0
    return-void
.end method
