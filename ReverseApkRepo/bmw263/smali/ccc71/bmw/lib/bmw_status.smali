.class public Lccc71/bmw/lib/bmw_status;
.super Lccc71/utils/ccc71_license_activity;
.source "SourceFile"


# static fields
.field public static a:Lccc71/bmw/lib/ed;

.field private static z:Z


# instance fields
.field private A:I

.field private B:Z

.field private C:Lccc71/utils/ccc71_graph_view;

.field private D:Lccc71/utils/ccc71_graph_view;

.field private E:Lccc71/utils/ccc71_graph_view;

.field b:Landroid/view/View$OnClickListener;

.field c:Landroid/view/View$OnClickListener;

.field d:Landroid/view/View$OnClickListener;

.field e:Landroid/view/View$OnClickListener;

.field f:Landroid/view/View$OnClickListener;

.field g:Landroid/view/View$OnClickListener;

.field h:Landroid/view/View$OnClickListener;

.field i:Landroid/view/View$OnClickListener;

.field j:Landroid/view/View$OnClickListener;

.field k:Landroid/view/View$OnClickListener;

.field l:Landroid/view/View$OnTouchListener;

.field m:Landroid/view/View$OnClickListener;

.field n:Landroid/view/View$OnLongClickListener;

.field o:Landroid/view/View$OnClickListener;

.field p:Lccc71/utils/q;

.field private final w:I

.field private final x:I

.field private y:Lccc71/bmw/lib/bmw_innner_estimates;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/bmw/lib/bmw_status;->z:Z

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lccc71/utils/ccc71_license_activity;-><init>()V

    .line 51
    const/16 v0, -0x7f80

    iput v0, p0, Lccc71/bmw/lib/bmw_status;->w:I

    .line 52
    const v0, -0x7f0080

    iput v0, p0, Lccc71/bmw/lib/bmw_status;->x:I

    .line 54
    iput-object v1, p0, Lccc71/bmw/lib/bmw_status;->y:Lccc71/bmw/lib/bmw_innner_estimates;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lccc71/bmw/lib/bmw_status;->A:I

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/bmw/lib/bmw_status;->B:Z

    .line 64
    iput-object v1, p0, Lccc71/bmw/lib/bmw_status;->C:Lccc71/utils/ccc71_graph_view;

    .line 65
    iput-object v1, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    .line 66
    iput-object v1, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    .line 1060
    new-instance v0, Lccc71/bmw/lib/dc;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/dc;-><init>(Lccc71/bmw/lib/bmw_status;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_status;->b:Landroid/view/View$OnClickListener;

    .line 1069
    new-instance v0, Lccc71/bmw/lib/dp;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/dp;-><init>(Lccc71/bmw/lib/bmw_status;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_status;->c:Landroid/view/View$OnClickListener;

    .line 1078
    new-instance v0, Lccc71/bmw/lib/ds;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/ds;-><init>(Lccc71/bmw/lib/bmw_status;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_status;->d:Landroid/view/View$OnClickListener;

    .line 1108
    new-instance v0, Lccc71/bmw/lib/du;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/du;-><init>(Lccc71/bmw/lib/bmw_status;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_status;->e:Landroid/view/View$OnClickListener;

    .line 1142
    new-instance v0, Lccc71/bmw/lib/dw;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/dw;-><init>(Lccc71/bmw/lib/bmw_status;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_status;->f:Landroid/view/View$OnClickListener;

    .line 1215
    new-instance v0, Lccc71/bmw/lib/dy;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/dy;-><init>(Lccc71/bmw/lib/bmw_status;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_status;->g:Landroid/view/View$OnClickListener;

    .line 1232
    new-instance v0, Lccc71/bmw/lib/dz;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/dz;-><init>(Lccc71/bmw/lib/bmw_status;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_status;->h:Landroid/view/View$OnClickListener;

    .line 1247
    new-instance v0, Lccc71/bmw/lib/ea;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/ea;-><init>(Lccc71/bmw/lib/bmw_status;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_status;->i:Landroid/view/View$OnClickListener;

    .line 1256
    new-instance v0, Lccc71/bmw/lib/eb;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/eb;-><init>(Lccc71/bmw/lib/bmw_status;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_status;->j:Landroid/view/View$OnClickListener;

    .line 1283
    new-instance v0, Lccc71/bmw/lib/dd;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/dd;-><init>(Lccc71/bmw/lib/bmw_status;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_status;->k:Landroid/view/View$OnClickListener;

    .line 1310
    new-instance v0, Lccc71/bmw/lib/df;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/df;-><init>(Lccc71/bmw/lib/bmw_status;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_status;->l:Landroid/view/View$OnTouchListener;

    .line 1319
    new-instance v0, Lccc71/bmw/lib/dg;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/dg;-><init>(Lccc71/bmw/lib/bmw_status;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_status;->m:Landroid/view/View$OnClickListener;

    .line 1348
    new-instance v0, Lccc71/bmw/lib/dh;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/dh;-><init>(Lccc71/bmw/lib/bmw_status;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_status;->n:Landroid/view/View$OnLongClickListener;

    .line 1374
    new-instance v0, Lccc71/bmw/lib/di;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/di;-><init>(Lccc71/bmw/lib/bmw_status;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_status;->o:Landroid/view/View$OnClickListener;

    .line 1383
    new-instance v0, Lccc71/bmw/lib/dj;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/dj;-><init>(Lccc71/bmw/lib/bmw_status;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_status;->p:Lccc71/utils/q;

    .line 49
    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v7, 0x8

    .line 147
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lccc71/utils/al;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 149
    sget v2, Lccc71/bmw/lib/e;->bi:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->setContentView(I)V

    .line 151
    const/4 v2, 0x0

    iput-object v2, p0, Lccc71/bmw/lib/bmw_status;->y:Lccc71/bmw/lib/bmw_innner_estimates;

    .line 153
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_status;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 154
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.battery_history.BatteryHistory"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {v3, v2}, Lccc71/utils/al;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    .line 155
    sget v2, Lccc71/bmw/lib/d;->dk:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.TestingSettings"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {v3, v2}, Lccc71/utils/al;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_2
    if-nez v2, :cond_3

    .line 160
    sget v2, Lccc71/bmw/lib/d;->dm:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lccc71/utils/al;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_4
    if-nez v0, :cond_5

    .line 165
    sget v0, Lccc71/bmw/lib/d;->dr:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :goto_5
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    sget v0, Lccc71/bmw/lib/d;->cl:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/bmw_status;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :goto_6
    sget v0, Lccc71/bmw/lib/d;->cs:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/bmw_status;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    sget v0, Lccc71/bmw/lib/d;->cp:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/bmw_status;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    sget v0, Lccc71/bmw/lib/d;->de:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/bmw_status;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    sget v0, Lccc71/bmw/lib/d;->da:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/bmw_status;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    sget v0, Lccc71/bmw/lib/d;->bC:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/bmw_status;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    sget v0, Lccc71/bmw/lib/d;->bD:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/bmw_status;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-void

    :cond_0
    move v2, v1

    .line 154
    goto/16 :goto_0

    .line 157
    :cond_1
    sget v2, Lccc71/bmw/lib/d;->dk:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lccc71/bmw/lib/bmw_status;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_2
    move v2, v1

    .line 159
    goto/16 :goto_2

    .line 162
    :cond_3
    sget v2, Lccc71/bmw/lib/d;->dm:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lccc71/bmw/lib/bmw_status;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_4
    move v0, v1

    .line 164
    goto :goto_4

    .line 167
    :cond_5
    sget v0, Lccc71/bmw/lib/d;->dr:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/bmw_status;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 172
    :cond_6
    sget v0, Lccc71/bmw/lib/d;->cl:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method private a(F)V
    .locals 1
    .parameter

    .prologue
    .line 644
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v0, p1}, Lccc71/utils/ccc71_graph_view;->setZoomFactor(F)V

    .line 645
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v0, p1}, Lccc71/utils/ccc71_graph_view;->setZoomFactor(F)V

    .line 648
    :cond_0
    invoke-static {p0, p1}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;F)V

    .line 650
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->d()V

    .line 651
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/view/SubMenu;I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x18

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1031
    const/4 v0, 0x5

    move v1, v0

    move v0, p2

    .line 1032
    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-gtz v1, :cond_1

    .line 1058
    :cond_0
    return-void

    .line 1034
    :cond_1
    if-lt v0, v7, :cond_3

    .line 1036
    int-to-float v0, v0

    const/high16 v1, 0x41c0

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 1037
    mul-int/lit8 v0, v1, 0x18

    .line 1039
    if-ne v1, v6, :cond_2

    .line 1040
    rsub-int/lit8 v3, v2, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lccc71/bmw/lib/g;->bP:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v0, v3, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1052
    :goto_1
    shr-int/lit8 v0, v0, 0x1

    .line 1053
    if-le v0, v7, :cond_5

    .line 1055
    rem-int/lit8 v1, v0, 0x18

    sub-int/2addr v0, v1

    move v1, v2

    goto :goto_0

    .line 1042
    :cond_2
    rsub-int/lit8 v3, v2, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lccc71/bmw/lib/g;->bQ:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v0, v3, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    .line 1046
    :cond_3
    if-ne v0, v6, :cond_4

    .line 1047
    rsub-int/lit8 v1, v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lccc71/bmw/lib/g;->cb:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v0, v1, v3}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    .line 1049
    :cond_4
    rsub-int/lit8 v1, v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lccc71/bmw/lib/g;->cc:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v0, v1, v3}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_5
    move v1, v2

    goto/16 :goto_0
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_status;)V
    .locals 0
    .parameter

    .prologue
    .line 1177
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->e()V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_status;Lccc71/utils/ccc71_graph_view;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lccc71/bmw/lib/bmw_status;->C:Lccc71/utils/ccc71_graph_view;

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 56
    sput-boolean p0, Lccc71/bmw/lib/bmw_status;->z:Z

    return-void
.end method

.method private b()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/high16 v5, 0x3f80

    const/4 v3, 0x1

    const/16 v13, 0x8

    const/4 v4, 0x0

    .line 267
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/a/k;->a(Landroid/content/Context;)Z

    move-result v7

    .line 269
    sget v6, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 270
    sget v8, Lccc71/bmw/lib/bmw_watcher;->h:I

    .line 271
    sget v9, Lccc71/bmw/lib/bmw_watcher;->m:I

    .line 272
    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-eqz v0, :cond_6

    move v2, v3

    .line 274
    :goto_0
    sget v0, Lccc71/bmw/lib/d;->bJ:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 276
    if-eqz v2, :cond_7

    .line 277
    sget v1, Lccc71/bmw/lib/g;->bV:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lccc71/bmw/lib/bmw_watcher;->e(Landroid/content/Context;)I

    move-result v1

    int-to-long v11, v1

    invoke-static {v11, v12}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->d()I

    move-result v10

    int-to-long v10, v10

    invoke-static {v10, v11}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v1, p0, Lccc71/bmw/lib/bmw_status;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->e()V

    .line 288
    sget v1, Lccc71/bmw/lib/d;->bC:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 289
    if-eqz v2, :cond_8

    .line 291
    sget v2, Lccc71/bmw/lib/c;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    sget v1, Lccc71/bmw/lib/d;->bW:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, -0x7f0080

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    sget v1, Lccc71/bmw/lib/d;->bU:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, -0x7f0080

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    :goto_2
    sget v1, Lccc71/bmw/lib/bmw_watcher;->p:I

    packed-switch v1, :pswitch_data_0

    .line 314
    :pswitch_0
    sget v1, Lccc71/bmw/lib/d;->bU:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lccc71/bmw/lib/g;->aN:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :goto_3
    sget v1, Lccc71/bmw/lib/d;->bV:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    sget v6, Lccc71/bmw/lib/g;->aZ:I

    invoke-virtual {p0, v6}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lccc71/bmw/lib/bmw_watcher;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    sget v1, Lccc71/bmw/lib/d;->bW:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_watcher;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    sget v1, Lccc71/bmw/lib/d;->bX:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    sget v6, Lccc71/bmw/lib/g;->ba:I

    invoke-virtual {p0, v6}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lccc71/bmw/lib/bmw_watcher;->l:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    sget v1, Lccc71/bmw/lib/d;->bY:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    sget v6, Lccc71/bmw/lib/bmw_watcher;->k:F

    invoke-static {p0, v6}, Lccc71/bmw/lib/bmw_settings;->b(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " / "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v6, Lccc71/bmw/lib/bmw_watcher;->i:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "mV"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    sget v1, Lccc71/bmw/lib/d;->bZ:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    mul-int v6, v9, v8

    div-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " / "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "mAh"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    sget v1, Lccc71/bmw/lib/d;->bA:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    sget v6, Lccc71/bmw/lib/g;->aX:I

    invoke-virtual {p0, v6}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "%"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    sget-boolean v1, Lccc71/bmw/lib/bmw_status;->z:Z

    if-eqz v1, :cond_25

    .line 327
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->O(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 331
    sget v1, Lccc71/bmw/lib/d;->bM:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 332
    sget v1, Lccc71/bmw/lib/d;->bN:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 333
    sget v1, Lccc71/bmw/lib/d;->bO:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 335
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->S(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v2, v3

    .line 336
    :goto_4
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->T(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v6, v4

    .line 337
    :goto_5
    if-eqz v2, :cond_1

    .line 341
    invoke-static {p0, v5}, Lccc71/utils/ccc71_scale_view;->setFontSize(Landroid/content/Context;F)V

    .line 342
    sget v1, Lccc71/bmw/lib/d;->bQ:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lccc71/utils/ccc71_list_view;

    .line 343
    invoke-virtual {v1, v4}, Lccc71/utils/ccc71_list_view;->setVisibility(I)V

    .line 344
    invoke-static {}, Lccc71/bmw/lib/bi;->d()Ljava/util/ArrayList;

    move-result-object v8

    .line 345
    if-eqz v8, :cond_0

    invoke-static {}, Lccc71/bmw/lib/bi;->e()Z

    move-result v9

    if-nez v9, :cond_c

    .line 347
    :cond_0
    sget-object v3, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    invoke-static {p0, v3}, Lccc71/bmw/lib/bi;->c(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 348
    sget v3, Lccc71/bmw/lib/g;->cd:I

    invoke-virtual {p0, v3}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lccc71/utils/ccc71_list_view;->setText(Ljava/lang/String;)V

    .line 349
    sget v1, Lccc71/bmw/lib/d;->bO:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v3, Lccc71/bmw/lib/g;->cd:I

    invoke-virtual {p0, v3}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    :cond_1
    :goto_6
    if-eqz v6, :cond_4

    .line 371
    sget v1, Lccc71/bmw/lib/d;->bH:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 373
    iget-object v3, p0, Lccc71/bmw/lib/bmw_status;->y:Lccc71/bmw/lib/bmw_innner_estimates;

    if-nez v3, :cond_3

    .line 375
    new-instance v3, Lccc71/bmw/lib/bmw_innner_estimates;

    const/4 v8, 0x0

    invoke-direct {v3, p0, v8}, Lccc71/bmw/lib/bmw_innner_estimates;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lccc71/bmw/lib/bmw_status;->y:Lccc71/bmw/lib/bmw_innner_estimates;

    .line 376
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v7, :cond_f

    const/high16 v3, 0x3f00

    :goto_7
    invoke-direct {v8, v14, v14, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 377
    iget-object v3, p0, Lccc71/bmw/lib/bmw_status;->y:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-virtual {v3, v8}, Lccc71/bmw/lib/bmw_innner_estimates;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    if-eqz v2, :cond_10

    .line 380
    if-nez v7, :cond_2

    .line 381
    iget-object v3, p0, Lccc71/bmw/lib/bmw_status;->y:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-virtual {v3}, Lccc71/bmw/lib/bmw_innner_estimates;->a()V

    .line 382
    :cond_2
    iget-object v3, p0, Lccc71/bmw/lib/bmw_status;->y:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 389
    :cond_3
    :goto_8
    iget-object v1, p0, Lccc71/bmw/lib/bmw_status;->y:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-virtual {v1}, Lccc71/bmw/lib/bmw_innner_estimates;->b()V

    .line 392
    :cond_4
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 394
    if-eqz v6, :cond_12

    if-eqz v2, :cond_12

    .line 398
    if-eqz v7, :cond_11

    .line 400
    sget v1, Lccc71/bmw/lib/d;->cp:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 401
    sget v1, Lccc71/bmw/lib/d;->cs:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 408
    :goto_9
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 569
    :cond_5
    :goto_a
    return-void

    :cond_6
    move v2, v4

    .line 272
    goto/16 :goto_0

    .line 279
    :cond_7
    sget v1, Lccc71/bmw/lib/g;->bU:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 297
    :cond_8
    sget v2, Lccc71/bmw/lib/c;->b:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    sget v1, Lccc71/bmw/lib/d;->bW:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, -0x7f80

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    sget v1, Lccc71/bmw/lib/d;->bU:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, -0x7f80

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 305
    :pswitch_1
    if-ltz v6, :cond_9

    .line 306
    sget v1, Lccc71/bmw/lib/d;->bU:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lccc71/bmw/lib/g;->aM:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 308
    :cond_9
    sget v1, Lccc71/bmw/lib/d;->bU:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lccc71/bmw/lib/g;->aN:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 311
    :pswitch_2
    sget v1, Lccc71/bmw/lib/d;->bU:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lccc71/bmw/lib/g;->aO:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_a
    move v2, v4

    .line 335
    goto/16 :goto_4

    :cond_b
    move v6, v3

    .line 336
    goto/16 :goto_5

    .line 353
    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_d

    .line 354
    sget v3, Lccc71/bmw/lib/g;->cu:I

    invoke-virtual {p0, v3}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lccc71/utils/ccc71_list_view;->setText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 357
    :cond_d
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->h(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 358
    iput-boolean v4, v1, Lccc71/utils/ccc71_list_view;->a:Z

    .line 362
    :goto_b
    invoke-virtual {v1, v8, v4}, Lccc71/utils/ccc71_list_view;->setHistoryData(Ljava/util/ArrayList;Z)V

    goto/16 :goto_6

    .line 360
    :cond_e
    iput-boolean v3, v1, Lccc71/utils/ccc71_list_view;->a:Z

    goto :goto_b

    :cond_f
    move v3, v5

    .line 376
    goto/16 :goto_7

    .line 386
    :cond_10
    iget-object v3, p0, Lccc71/bmw/lib/bmw_status;->y:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_8

    .line 405
    :cond_11
    sget v1, Lccc71/bmw/lib/d;->cp:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 406
    sget v1, Lccc71/bmw/lib/d;->cs:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 412
    :cond_12
    if-eqz v6, :cond_13

    .line 416
    sget v1, Lccc71/bmw/lib/d;->cp:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 417
    sget v1, Lccc71/bmw/lib/d;->cs:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 418
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 424
    :cond_13
    sget v1, Lccc71/bmw/lib/d;->cp:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 425
    sget v1, Lccc71/bmw/lib/d;->cs:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 426
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 433
    :cond_14
    sget v0, Lccc71/bmw/lib/d;->cs:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 441
    :cond_15
    sget v1, Lccc71/bmw/lib/d;->bH:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 443
    sget v2, Lccc71/bmw/lib/d;->bO:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 444
    sget v2, Lccc71/bmw/lib/d;->bQ:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 446
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 448
    sget v2, Lccc71/bmw/lib/d;->cs:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 455
    :goto_c
    sget v2, Lccc71/bmw/lib/d;->bM:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lccc71/utils/ccc71_graph_view;

    iput-object v2, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    .line 456
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v2, v4}, Lccc71/utils/ccc71_graph_view;->setVisibility(I)V

    .line 457
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    iget-object v6, p0, Lccc71/bmw/lib/bmw_status;->l:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v6}, Lccc71/utils/ccc71_graph_view;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 458
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    iget-object v6, p0, Lccc71/bmw/lib/bmw_status;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Lccc71/utils/ccc71_graph_view;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    iget-object v6, p0, Lccc71/bmw/lib/bmw_status;->n:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v6}, Lccc71/utils/ccc71_graph_view;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 460
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    iget-object v6, p0, Lccc71/bmw/lib/bmw_status;->p:Lccc71/utils/q;

    invoke-virtual {v2, v6}, Lccc71/utils/ccc71_graph_view;->setOnEvent(Lccc71/utils/q;)V

    .line 461
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->aj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lccc71/utils/ccc71_graph_view;->setTemperatureUnit(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->R(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v2, v6}, Lccc71/utils/ccc71_graph_view;->setCurves(Z)V

    .line 464
    sget v2, Lccc71/bmw/lib/d;->bN:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lccc71/utils/ccc71_graph_view;

    iput-object v2, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    .line 466
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->U(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 468
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->R(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v2, v6}, Lccc71/utils/ccc71_graph_view;->setCurves(Z)V

    .line 469
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v2, v4}, Lccc71/utils/ccc71_graph_view;->setVisibility(I)V

    .line 470
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    iget-object v6, p0, Lccc71/bmw/lib/bmw_status;->l:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v6}, Lccc71/utils/ccc71_graph_view;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 471
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    iget-object v6, p0, Lccc71/bmw/lib/bmw_status;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Lccc71/utils/ccc71_graph_view;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    iget-object v6, p0, Lccc71/bmw/lib/bmw_status;->n:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v6}, Lccc71/utils/ccc71_graph_view;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 473
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    iget-object v6, p0, Lccc71/bmw/lib/bmw_status;->p:Lccc71/utils/q;

    invoke-virtual {v2, v6}, Lccc71/utils/ccc71_graph_view;->setOnEvent(Lccc71/utils/q;)V

    .line 474
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->aj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lccc71/utils/ccc71_graph_view;->setTemperatureUnit(Ljava/lang/String;)V

    .line 476
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {}, Lccc71/bmw/lib/bi;->e()Z

    move-result v2

    if-nez v2, :cond_16

    .line 478
    sget-object v2, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    invoke-static {p0, v2}, Lccc71/bmw/lib/bi;->c(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 479
    sget v2, Lccc71/bmw/lib/d;->bO:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v6, Lccc71/bmw/lib/g;->cd:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 488
    :cond_16
    :goto_d
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->S(Landroid/content/Context;)Z

    move-result v8

    .line 489
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->T(Landroid/content/Context;)Z

    move-result v9

    .line 490
    if-eqz v8, :cond_23

    .line 492
    sget v2, Lccc71/bmw/lib/d;->bQ:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lccc71/utils/ccc71_list_view;

    .line 493
    if-eqz v7, :cond_17

    .line 495
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    if-eqz v7, :cond_1f

    const/high16 v6, 0x4000

    :goto_e
    invoke-direct {v10, v11, v14, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 496
    invoke-virtual {v2, v10}, Lccc71/utils/ccc71_list_view;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    :cond_17
    invoke-virtual {v2, v4}, Lccc71/utils/ccc71_list_view;->setVisibility(I)V

    .line 500
    invoke-static {}, Lccc71/bmw/lib/bi;->d()Ljava/util/ArrayList;

    move-result-object v6

    .line 501
    if-eqz v6, :cond_18

    invoke-static {}, Lccc71/bmw/lib/bi;->e()Z

    move-result v10

    if-nez v10, :cond_20

    .line 503
    :cond_18
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 505
    sget-object v6, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    invoke-static {p0, v6}, Lccc71/bmw/lib/bi;->c(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 506
    sget v6, Lccc71/bmw/lib/g;->cd:I

    invoke-virtual {p0, v6}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lccc71/utils/ccc71_list_view;->setText(Ljava/lang/String;)V

    .line 507
    sget v2, Lccc71/bmw/lib/d;->bO:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v6, Lccc71/bmw/lib/g;->cd:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 535
    :cond_19
    :goto_f
    if-eqz v9, :cond_1c

    .line 539
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->y:Lccc71/bmw/lib/bmw_innner_estimates;

    if-nez v2, :cond_1b

    .line 541
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    new-instance v0, Lccc71/bmw/lib/bmw_innner_estimates;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lccc71/bmw/lib/bmw_innner_estimates;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_status;->y:Lccc71/bmw/lib/bmw_innner_estimates;

    .line 544
    if-nez v7, :cond_1a

    .line 545
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->y:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_innner_estimates;->a()V

    .line 546
    :cond_1a
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v14, v14, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 547
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->y:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-virtual {v2, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->y:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 551
    :cond_1b
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->y:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_innner_estimates;->b()V

    .line 554
    :cond_1c
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ne v0, v3, :cond_24

    if-eqz v7, :cond_24

    if-nez v8, :cond_24

    if-nez v9, :cond_24

    .line 555
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 559
    :goto_10
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->c()V

    goto/16 :goto_a

    .line 452
    :cond_1d
    sget v2, Lccc71/bmw/lib/d;->cs:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 484
    :cond_1e
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v2, v13}, Lccc71/utils/ccc71_graph_view;->setVisibility(I)V

    .line 485
    const/4 v2, 0x0

    iput-object v2, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    goto/16 :goto_d

    :cond_1f
    move v6, v5

    .line 495
    goto/16 :goto_e

    .line 512
    :cond_20
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_21

    .line 513
    sget v6, Lccc71/bmw/lib/g;->cu:I

    invoke-virtual {p0, v6}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lccc71/utils/ccc71_list_view;->setText(Ljava/lang/String;)V

    goto :goto_f

    .line 516
    :cond_21
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->h(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 517
    iput-boolean v4, v2, Lccc71/utils/ccc71_list_view;->a:Z

    .line 521
    :goto_11
    invoke-static {p0, v5}, Lccc71/utils/ccc71_scale_view;->setFontSize(Landroid/content/Context;F)V

    .line 522
    invoke-virtual {v2, v6, v4}, Lccc71/utils/ccc71_list_view;->setHistoryData(Ljava/util/ArrayList;Z)V

    goto :goto_f

    .line 519
    :cond_22
    iput-boolean v3, v2, Lccc71/utils/ccc71_list_view;->a:Z

    goto :goto_11

    .line 528
    :cond_23
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {}, Lccc71/bmw/lib/bi;->e()Z

    move-result v2

    if-nez v2, :cond_19

    .line 530
    sget-object v2, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    invoke-static {p0, v2}, Lccc71/bmw/lib/bi;->c(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 531
    sget v2, Lccc71/bmw/lib/d;->bO:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v6, Lccc71/bmw/lib/g;->cd:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_f

    .line 557
    :cond_24
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_10

    .line 566
    :cond_25
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->y:Lccc71/bmw/lib/bmw_innner_estimates;

    if-eqz v0, :cond_5

    .line 567
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->y:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_innner_estimates;->b()V

    goto/16 :goto_a

    .line 302
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lccc71/bmw/lib/bmw_status;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->b()V

    return-void
.end method

.method static synthetic c(Lccc71/bmw/lib/bmw_status;)Lccc71/utils/ccc71_graph_view;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    return-object v0
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 573
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->P(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->setVGrid(I)V

    .line 574
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->J(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->setRevertMA(Z)V

    .line 575
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->F(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->setVisibleMinMax(Z)V

    .line 576
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->R(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->setCurves(Z)V

    .line 579
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->K(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 581
    new-instance v1, Lccc71/bmw/data/a/e;

    invoke-direct {v1, p0}, Lccc71/bmw/data/a/e;-><init>(Landroid/content/Context;)V

    .line 582
    invoke-virtual {v1}, Lccc71/bmw/data/a/e;->a()V

    .line 586
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 587
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    const-wide/16 v7, 0xb40

    mul-long/2addr v5, v7

    sub-long v5, v3, v5

    invoke-virtual {v1, v5, v6, v3, v4}, Lccc71/bmw/data/a/e;->a(JJ)[Lccc71/bmw/data/a/d;

    move-result-object v0

    .line 589
    invoke-virtual {v1}, Lccc71/bmw/data/a/e;->b()V

    .line 592
    iget-object v1, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lccc71/utils/ccc71_graph_view;->setMarkers([Lccc71/bmw/data/a/d;Z)V

    move-object v7, v0

    .line 595
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 596
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 597
    invoke-static {v0, v3}, Lccc71/bmw/lib/bi;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 599
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->U(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->ae(Landroid/content/Context;)I

    move-result v5

    .line 602
    invoke-static {}, Lccc71/bmw/lib/ak;->values()[Lccc71/bmw/lib/ak;

    move-result-object v1

    aget-object v1, v1, v5

    .line 604
    iget-object v4, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->P(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v4, v6}, Lccc71/utils/ccc71_graph_view;->setVGrid(I)V

    .line 605
    iget-object v4, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->J(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lccc71/utils/ccc71_graph_view;->setRevertMA(Z)V

    .line 606
    iget-object v4, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->F(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lccc71/utils/ccc71_graph_view;->setVisibleMinMax(Z)V

    .line 607
    iget-object v4, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v4, v2, v3}, Lccc71/utils/ccc71_graph_view;->setStates(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 608
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v2, v0, v3}, Lccc71/utils/ccc71_graph_view;->setStates(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 610
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->R(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_graph_view;->setCurves(Z)V

    .line 611
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    .line 612
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->J(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lccc71/bmw/lib/bi;->a(Lccc71/bmw/lib/ak;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 613
    invoke-static {}, Lccc71/bmw/lib/bi;->i()Ljava/util/ArrayList;

    move-result-object v3

    .line 614
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v4

    .line 615
    sget-object v6, Lccc71/bmw/lib/aj;->b:[I

    aget v5, v6, v5

    .line 616
    invoke-static {}, Lccc71/bmw/lib/bi;->c()Ljava/util/Date;

    move-result-object v6

    .line 611
    invoke-virtual/range {v0 .. v6}, Lccc71/utils/ccc71_graph_view;->setData(Lccc71/bmw/lib/ak;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/Date;)V

    .line 617
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->E(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->setZoomFactor(F)V

    .line 619
    if-eqz v7, :cond_0

    .line 620
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lccc71/utils/ccc71_graph_view;->setMarkers([Lccc71/bmw/data/a/d;Z)V

    .line 627
    :cond_0
    :goto_1
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->ac(Landroid/content/Context;)I

    move-result v5

    .line 628
    invoke-static {}, Lccc71/bmw/lib/ak;->values()[Lccc71/bmw/lib/ak;

    move-result-object v0

    aget-object v1, v0, v5

    .line 630
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    .line 632
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->J(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lccc71/bmw/lib/bi;->a(Lccc71/bmw/lib/ak;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 633
    invoke-static {}, Lccc71/bmw/lib/bi;->i()Ljava/util/ArrayList;

    move-result-object v3

    .line 634
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v4

    .line 635
    sget-object v6, Lccc71/bmw/lib/aj;->b:[I

    aget v5, v6, v5

    .line 636
    invoke-static {}, Lccc71/bmw/lib/bi;->c()Ljava/util/Date;

    move-result-object v6

    .line 630
    invoke-virtual/range {v0 .. v6}, Lccc71/utils/ccc71_graph_view;->setData(Lccc71/bmw/lib/ak;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/Date;)V

    .line 637
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->E(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->setZoomFactor(F)V

    .line 639
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->d()V

    .line 640
    return-void

    .line 624
    :cond_1
    iget-object v1, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v1, v0, v3}, Lccc71/utils/ccc71_graph_view;->setStates(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    move-object v7, v2

    goto/16 :goto_0
.end method

.method static synthetic d(Lccc71/bmw/lib/bmw_status;)Lccc71/utils/ccc71_graph_view;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 655
    invoke-static {}, Lccc71/bmw/lib/bi;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    :goto_0
    return-void

    .line 658
    :cond_0
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 660
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->P(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    sget v0, Lccc71/bmw/lib/d;->bO:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->aQ:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 664
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_graph_view;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 665
    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lccc71/bmw/lib/g;->bY:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 666
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_graph_view;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 663
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 670
    :cond_1
    sget v0, Lccc71/bmw/lib/d;->bO:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->aQ:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 671
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_graph_view;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 676
    :cond_2
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->P(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 678
    sget v0, Lccc71/bmw/lib/d;->bO:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->aQ:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_graph_view;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 680
    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lccc71/bmw/lib/g;->bY:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 681
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_graph_view;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 683
    :cond_3
    sget v0, Lccc71/bmw/lib/d;->bO:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->aQ:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 684
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_graph_view;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 683
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private e()V
    .locals 9

    .prologue
    const/16 v2, 0x5dc

    const/high16 v8, 0x42c8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1179
    sget v5, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 1180
    sget v0, Lccc71/bmw/lib/d;->bD:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1181
    if-gez v5, :cond_0

    move v1, v3

    .line 1182
    :goto_0
    if-eqz v1, :cond_1

    .line 1184
    const/16 v6, -0x7f80

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1191
    :goto_1
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->h(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1193
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1195
    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lccc71/bmw/lib/g;->aY:I

    invoke-virtual {p0, v3}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    :goto_3
    return-void

    :cond_0
    move v1, v4

    .line 1181
    goto :goto_0

    .line 1188
    :cond_1
    const v6, -0x7f0080

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1195
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1199
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1204
    :cond_5
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->e()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1206
    new-instance v6, Ljava/lang/StringBuilder;

    sget v7, Lccc71/bmw/lib/g;->aY:I

    invoke-virtual {p0, v7}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    const-string v1, ""

    :goto_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%.02f"

    new-array v3, v3, [Ljava/lang/Object;

    int-to-float v1, v5

    mul-float v5, v1, v8

    sget v1, Lccc71/bmw/lib/bmw_watcher;->m:I

    if-eqz v1, :cond_7

    sget v1, Lccc71/bmw/lib/bmw_watcher;->m:I

    :goto_6
    int-to-float v1, v1

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_6
    const-string v1, "+"

    goto :goto_5

    :cond_7
    move v1, v2

    goto :goto_6

    .line 1210
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_a

    const-string v1, ""

    :goto_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%.02f"

    new-array v3, v3, [Ljava/lang/Object;

    int-to-float v5, v5

    mul-float/2addr v5, v8

    sget v7, Lccc71/bmw/lib/bmw_watcher;->m:I

    if-eqz v7, :cond_9

    sget v2, Lccc71/bmw/lib/bmw_watcher;->m:I

    :cond_9
    int-to-float v2, v2

    div-float v2, v5, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_a
    const-string v1, "+"

    goto :goto_7
.end method

.method static synthetic e(Lccc71/bmw/lib/bmw_status;)V
    .locals 0
    .parameter

    .prologue
    .line 653
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->d()V

    return-void
.end method

.method static synthetic f(Lccc71/bmw/lib/bmw_status;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/bmw/lib/bmw_status;->B:Z

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 136
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_status - onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-super {p0, p1}, Lccc71/utils/ccc71_license_activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 139
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/bmw/lib/bmw_status;->z:Z

    .line 141
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->a()V

    .line 142
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->b()V

    .line 143
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 834
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 836
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->C:Lccc71/utils/ccc71_graph_view;

    if-eqz v2, :cond_1a

    .line 838
    sget v2, Lccc71/bmw/lib/d;->cG:I

    if-ne v0, v2, :cond_1

    .line 841
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->C:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_graph_view;->getId()I

    move-result v0

    sget v2, Lccc71/bmw/lib/d;->bM:I

    if-ne v0, v2, :cond_0

    .line 842
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->C:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_graph_view;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->ac(Landroid/content/Context;)I

    move-result v0

    .line 845
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lccc71/bmw/lib/bmw_full_graph;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 846
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccc71/bmw/lib/bmw_status;->C:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v4}, Lccc71/utils/ccc71_graph_view;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".gfx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 847
    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 977
    :goto_1
    return v0

    .line 844
    :cond_0
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->C:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_graph_view;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->ae(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 850
    :cond_1
    sget v2, Lccc71/bmw/lib/d;->cH:I

    if-ne v0, v2, :cond_3

    .line 853
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_graph_view;->h()Z

    move-result v0

    .line 852
    invoke-static {p0, v0}, Lccc71/bmw/lib/bmw_settings;->c(Landroid/content/Context;Z)V

    .line 854
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    if-eqz v0, :cond_2

    .line 855
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->E:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_graph_view;->h()Z

    :cond_2
    move v0, v1

    .line 856
    goto :goto_1

    .line 858
    :cond_3
    sget v2, Lccc71/bmw/lib/d;->cA:I

    if-ne v0, v2, :cond_5

    .line 860
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->C:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_graph_view;->getId()I

    move-result v0

    sget v2, Lccc71/bmw/lib/d;->bM:I

    if-ne v0, v2, :cond_4

    .line 861
    invoke-static {p0, v3}, Lccc71/bmw/lib/bmw_settings;->t(Landroid/content/Context;I)V

    .line 864
    :goto_2
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->c()V

    move v0, v1

    .line 865
    goto :goto_1

    .line 863
    :cond_4
    invoke-static {p0, v3}, Lccc71/bmw/lib/bmw_settings;->v(Landroid/content/Context;I)V

    goto :goto_2

    .line 867
    :cond_5
    sget v2, Lccc71/bmw/lib/d;->cB:I

    if-ne v0, v2, :cond_7

    .line 869
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->C:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_graph_view;->getId()I

    move-result v0

    sget v2, Lccc71/bmw/lib/d;->bM:I

    if-ne v0, v2, :cond_6

    .line 870
    invoke-static {p0, v1}, Lccc71/bmw/lib/bmw_settings;->t(Landroid/content/Context;I)V

    .line 873
    :goto_3
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->c()V

    move v0, v1

    .line 874
    goto :goto_1

    .line 872
    :cond_6
    invoke-static {p0, v1}, Lccc71/bmw/lib/bmw_settings;->v(Landroid/content/Context;I)V

    goto :goto_3

    .line 876
    :cond_7
    sget v2, Lccc71/bmw/lib/d;->cC:I

    if-ne v0, v2, :cond_9

    .line 878
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->C:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_graph_view;->getId()I

    move-result v0

    sget v2, Lccc71/bmw/lib/d;->bM:I

    if-ne v0, v2, :cond_8

    .line 879
    invoke-static {p0, v6}, Lccc71/bmw/lib/bmw_settings;->t(Landroid/content/Context;I)V

    .line 882
    :goto_4
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->c()V

    move v0, v1

    .line 883
    goto :goto_1

    .line 881
    :cond_8
    invoke-static {p0, v6}, Lccc71/bmw/lib/bmw_settings;->v(Landroid/content/Context;I)V

    goto :goto_4

    .line 885
    :cond_9
    sget v2, Lccc71/bmw/lib/d;->cE:I

    if-ne v0, v2, :cond_b

    .line 887
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->C:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_graph_view;->getId()I

    move-result v0

    sget v2, Lccc71/bmw/lib/d;->bM:I

    if-ne v0, v2, :cond_a

    .line 888
    invoke-static {p0, v4}, Lccc71/bmw/lib/bmw_settings;->t(Landroid/content/Context;I)V

    .line 891
    :goto_5
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->c()V

    move v0, v1

    .line 892
    goto/16 :goto_1

    .line 890
    :cond_a
    invoke-static {p0, v4}, Lccc71/bmw/lib/bmw_settings;->v(Landroid/content/Context;I)V

    goto :goto_5

    .line 894
    :cond_b
    sget v2, Lccc71/bmw/lib/d;->cF:I

    if-ne v0, v2, :cond_d

    .line 896
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->C:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_graph_view;->getId()I

    move-result v0

    sget v2, Lccc71/bmw/lib/d;->bM:I

    if-ne v0, v2, :cond_c

    .line 897
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lccc71/bmw/lib/bmw_settings;->t(Landroid/content/Context;I)V

    .line 900
    :goto_6
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->c()V

    move v0, v1

    .line 901
    goto/16 :goto_1

    .line 899
    :cond_c
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lccc71/bmw/lib/bmw_settings;->v(Landroid/content/Context;I)V

    goto :goto_6

    .line 903
    :cond_d
    sget v2, Lccc71/bmw/lib/d;->cD:I

    if-ne v0, v2, :cond_f

    .line 905
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->C:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_graph_view;->getId()I

    move-result v0

    sget v2, Lccc71/bmw/lib/d;->bM:I

    if-ne v0, v2, :cond_e

    .line 906
    invoke-static {p0, v5}, Lccc71/bmw/lib/bmw_settings;->t(Landroid/content/Context;I)V

    .line 909
    :goto_7
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->c()V

    move v0, v1

    .line 910
    goto/16 :goto_1

    .line 908
    :cond_e
    invoke-static {p0, v5}, Lccc71/bmw/lib/bmw_settings;->v(Landroid/content/Context;I)V

    goto :goto_7

    .line 912
    :cond_f
    sget v2, Lccc71/bmw/lib/d;->cI:I

    if-ne v0, v2, :cond_10

    .line 914
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_status;->a(F)V

    move v0, v1

    .line 915
    goto/16 :goto_1

    .line 917
    :cond_10
    sget v2, Lccc71/bmw/lib/d;->cK:I

    if-ne v0, v2, :cond_11

    .line 919
    const/high16 v0, 0x4000

    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_status;->a(F)V

    move v0, v1

    .line 920
    goto/16 :goto_1

    .line 922
    :cond_11
    sget v2, Lccc71/bmw/lib/d;->cL:I

    if-ne v0, v2, :cond_12

    .line 924
    const/high16 v0, 0x4040

    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_status;->a(F)V

    move v0, v1

    .line 925
    goto/16 :goto_1

    .line 927
    :cond_12
    sget v2, Lccc71/bmw/lib/d;->cM:I

    if-ne v0, v2, :cond_13

    .line 929
    const/high16 v0, 0x4080

    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_status;->a(F)V

    move v0, v1

    .line 930
    goto/16 :goto_1

    .line 932
    :cond_13
    sget v2, Lccc71/bmw/lib/d;->cN:I

    if-ne v0, v2, :cond_14

    .line 934
    const/high16 v0, 0x40a0

    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_status;->a(F)V

    move v0, v1

    .line 935
    goto/16 :goto_1

    .line 937
    :cond_14
    sget v2, Lccc71/bmw/lib/d;->cO:I

    if-ne v0, v2, :cond_15

    .line 939
    const/high16 v0, 0x40c0

    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_status;->a(F)V

    move v0, v1

    .line 940
    goto/16 :goto_1

    .line 942
    :cond_15
    sget v2, Lccc71/bmw/lib/d;->cP:I

    if-ne v0, v2, :cond_16

    .line 944
    const/high16 v0, 0x40e0

    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_status;->a(F)V

    move v0, v1

    .line 945
    goto/16 :goto_1

    .line 947
    :cond_16
    sget v2, Lccc71/bmw/lib/d;->cQ:I

    if-ne v0, v2, :cond_17

    .line 949
    const/high16 v0, 0x4100

    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_status;->a(F)V

    move v0, v1

    .line 950
    goto/16 :goto_1

    .line 952
    :cond_17
    sget v2, Lccc71/bmw/lib/d;->cR:I

    if-ne v0, v2, :cond_18

    .line 954
    const/high16 v0, 0x4110

    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_status;->a(F)V

    move v0, v1

    .line 955
    goto/16 :goto_1

    .line 957
    :cond_18
    sget v2, Lccc71/bmw/lib/d;->cJ:I

    if-ne v0, v2, :cond_19

    .line 959
    const/high16 v0, 0x4120

    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_status;->a(F)V

    move v0, v1

    .line 960
    goto/16 :goto_1

    .line 964
    :cond_19
    if-lez v0, :cond_1a

    const/16 v2, 0x258

    if-ge v0, v2, :cond_1a

    .line 968
    iget-object v2, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_graph_view;->b()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4561

    div-float/2addr v2, v3

    .line 970
    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_status;->a(F)V

    move v0, v1

    .line 972
    goto/16 :goto_1

    .line 977
    :cond_1a
    invoke-super {p0, p1}, Lccc71/utils/ccc71_license_activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 71
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_status - onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-super {p0, p1}, Lccc71/utils/ccc71_license_activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    new-instance v0, Lccc71/bmw/lib/ed;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/ed;-><init>(Lccc71/bmw/lib/bmw_status;)V

    sput-object v0, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    .line 76
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_status;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_status;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".current_widget_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lccc71/bmw/lib/bmw_status;->A:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccc71/bmw/lib/bmw_status;->A:I

    .line 78
    iget v0, p0, Lccc71/bmw/lib/bmw_status;->A:I

    invoke-static {p0, v0}, Lccc71/bmw/lib/bmw_widget;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iput v3, p0, Lccc71/bmw/lib/bmw_status;->A:I

    .line 81
    :cond_0
    iget v0, p0, Lccc71/bmw/lib/bmw_status;->A:I

    if-ne v0, v3, :cond_1

    .line 83
    invoke-static {}, Lccc71/bmw/lib/bmw_widget;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 85
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lccc71/bmw/lib/bmw_status;->A:I

    .line 88
    :cond_1
    invoke-static {p0}, Lccc71/bmw/lib/bmw_service;->b(Landroid/content/Context;)V

    .line 90
    const-string v0, "battery_widget_monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Status opened from Widget ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lccc71/bmw/lib/bmw_status;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget v0, p0, Lccc71/bmw/lib/bmw_status;->A:I

    if-eq v0, v3, :cond_2

    .line 94
    invoke-static {p0}, Lccc71/bmw/lib/bmw_widget;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    sget v2, Lccc71/bmw/lib/g;->cR:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    sget v2, Lccc71/bmw/lib/g;->aD:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    sget v2, Lccc71/bmw/lib/g;->cQ:I

    .line 101
    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 104
    const-string v2, "Understood"

    .line 105
    new-instance v3, Lccc71/bmw/lib/dk;

    invoke-direct {v3, p0}, Lccc71/bmw/lib/dk;-><init>(Lccc71/bmw/lib/bmw_status;)V

    .line 104
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 116
    :cond_2
    invoke-static {p0}, Lccc71/utils/am;->a(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1011
    invoke-super {p0, p1, p2, p3}, Lccc71/utils/ccc71_license_activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1012
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_status;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/f;->b:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1016
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    if-nez v0, :cond_0

    .line 1027
    :goto_0
    return-void

    .line 1019
    :cond_0
    iget-object v0, p0, Lccc71/bmw/lib/bmw_status;->D:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_graph_view;->b()I

    move-result v0

    div-int/lit16 v0, v0, 0xe10

    .line 1020
    const/16 v1, 0x18

    if-le v0, v1, :cond_1

    .line 1022
    rem-int/lit8 v1, v0, 0x18

    sub-int/2addr v0, v1

    .line 1024
    :cond_1
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    .line 1026
    invoke-static {p0, v1, v0}, Lccc71/bmw/lib/bmw_status;->a(Landroid/content/Context;Landroid/view/SubMenu;I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 692
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_status;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 693
    sget v1, Lccc71/bmw/lib/f;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 695
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->K(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    sget v0, Lccc71/bmw/lib/d;->cS:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 698
    sget v0, Lccc71/bmw/lib/d;->cT:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 701
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_status - onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {p0}, Lccc71/bmw/lib/bmw_widget;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->I(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_status - stopping monitoring service now"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {p0}, Lccc71/bmw/lib/bmw_service;->c(Landroid/content/Context;)V

    .line 192
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    invoke-static {v0}, Lccc71/bmw/lib/bi;->a(Landroid/os/Handler;)V

    .line 193
    invoke-static {p0}, Lccc71/bmw/lib/bi;->a(Landroid/content/Context;)V

    .line 195
    invoke-super {p0}, Lccc71/utils/ccc71_license_activity;->onDestroy()V

    .line 197
    sget v0, Lccc71/bmw/lib/d;->bQ:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_list_view;

    .line 198
    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_list_view;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    sput-object v2, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    .line 201
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 206
    invoke-static {p0}, Lccc71/bmw/lib/bmw_widget;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->I(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const-string v1, "battery_widget_monitor"

    const-string v2, "bmw_status - no widgets added, monitoring will stop..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lccc71/bmw/lib/bmw_status;->B:Z

    if-nez v1, :cond_0

    .line 211
    iput-boolean v0, p0, Lccc71/bmw/lib/bmw_status;->B:Z

    .line 212
    sget v1, Lccc71/bmw/lib/g;->cy:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 215
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lccc71/bmw/lib/dl;

    invoke-direct {v2, p0}, Lccc71/bmw/lib/dl;-><init>(Lccc71/bmw/lib/bmw_status;)V

    .line 222
    const-wide/16 v3, 0x5dc

    .line 215
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lccc71/utils/ccc71_license_activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const v5, 0x1040013

    const v4, 0x1040009

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 707
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 709
    sget v2, Lccc71/bmw/lib/d;->cz:I

    if-ne v1, v2, :cond_0

    .line 711
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 712
    sget v2, Lccc71/bmw/lib/g;->bM:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 714
    new-instance v2, Lccc71/bmw/lib/dm;

    invoke-direct {v2, p0}, Lccc71/bmw/lib/dm;-><init>(Lccc71/bmw/lib/bmw_status;)V

    .line 713
    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 732
    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 733
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 828
    :goto_0
    return v0

    .line 736
    :cond_0
    sget v2, Lccc71/bmw/lib/d;->cX:I

    if-ne v1, v2, :cond_1

    .line 738
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lccc71/bmw/lib/g;->bN:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 739
    new-instance v2, Lccc71/bmw/lib/dn;

    invoke-direct {v2, p0}, Lccc71/bmw/lib/dn;-><init>(Lccc71/bmw/lib/bmw_status;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 764
    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 767
    :cond_1
    sget v2, Lccc71/bmw/lib/d;->cV:I

    if-ne v1, v2, :cond_2

    .line 769
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 770
    sget v2, Lccc71/bmw/lib/g;->bL:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 771
    new-instance v2, Lccc71/bmw/lib/dq;

    invoke-direct {v2, p0}, Lccc71/bmw/lib/dq;-><init>(Lccc71/bmw/lib/bmw_status;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 798
    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 799
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 802
    :cond_2
    sget v2, Lccc71/bmw/lib/d;->cW:I

    if-ne v1, v2, :cond_3

    .line 804
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 805
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_status;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_status;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".bmw_settings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_status;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".current_widget_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lccc71/bmw/lib/bmw_status;->A:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 807
    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 810
    :cond_3
    sget v2, Lccc71/bmw/lib/d;->cS:I

    if-ne v1, v2, :cond_4

    .line 812
    const v1, -0x55000001

    invoke-static {p0, v3, v1, v0}, Lccc71/bmw/data/a/e;->a(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 814
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->b()V

    goto/16 :goto_0

    .line 818
    :cond_4
    sget v2, Lccc71/bmw/lib/d;->cT:I

    if-ne v1, v2, :cond_5

    .line 820
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lccc71/bmw/lib/bmw_history;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 821
    const-string v2, "ccc71.bmw.lib.EDIT_MARKS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 822
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 823
    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_status;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 828
    :cond_5
    invoke-super {p0, p1}, Lccc71/utils/ccc71_license_activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_status - onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->a()V

    .line 126
    invoke-super {p0}, Lccc71/utils/ccc71_license_activity;->onResume()V

    .line 128
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/bmw/lib/bmw_status;->z:Z

    .line 130
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;->b()V

    .line 131
    return-void
.end method
