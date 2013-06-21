.class public Lccc71/bmw/lib/bmw_calibration;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private c:Lccc71/bmw/data/a/a;

.field private d:Landroid/os/Handler;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0xa

    sput v0, Lccc71/bmw/lib/bmw_calibration;->a:I

    .line 44
    const/16 v0, 0xfa

    sput v0, Lccc71/bmw/lib/bmw_calibration;->b:I

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 633
    new-instance v0, Lccc71/bmw/lib/o;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/o;-><init>(Lccc71/bmw/lib/bmw_calibration;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->d:Landroid/os/Handler;

    .line 721
    new-instance v0, Lccc71/bmw/lib/t;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/t;-><init>(Lccc71/bmw/lib/bmw_calibration;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->e:Landroid/view/View$OnClickListener;

    .line 787
    new-instance v0, Lccc71/bmw/lib/w;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/w;-><init>(Lccc71/bmw/lib/bmw_calibration;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->f:Landroid/view/View$OnClickListener;

    .line 979
    new-instance v0, Lccc71/bmw/lib/aa;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/aa;-><init>(Lccc71/bmw/lib/bmw_calibration;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->g:Landroid/view/View$OnClickListener;

    .line 1075
    new-instance v0, Lccc71/bmw/lib/af;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/af;-><init>(Lccc71/bmw/lib/bmw_calibration;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->h:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lccc71/bmw/lib/bmw_calibration;->a:I

    return v0
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_calibration;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 633
    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_calibration;Lccc71/bmw/data/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    return-void
.end method

.method static synthetic b()Ljava/util/Date;
    .locals 1

    .prologue
    .line 971
    invoke-static {}, Lccc71/bmw/lib/bmw_calibration;->e()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lccc71/bmw/lib/bmw_calibration;)V
    .locals 3
    .parameter

    .prologue
    .line 177
    :try_start_0
    const-string v0, "http://www.3c71.com/android/?q=node/273#main-content-area"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_calibration;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lccc71/bmw/lib/bmw_calibration;->b:I

    return v0
.end method

.method static synthetic c(Lccc71/bmw/lib/bmw_calibration;)V
    .locals 0
    .parameter

    .prologue
    .line 1102
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_calibration;->f()V

    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    .line 113
    :try_start_0
    new-instance v0, Lccc71/bmw/data/a/b;

    invoke-direct {v0, p0}, Lccc71/bmw/data/a/b;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->a()V

    .line 116
    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->d()I

    move-result v1

    .line 117
    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->c()I

    move-result v2

    .line 118
    if-eqz v1, :cond_1

    if-ltz v2, :cond_1

    .line 120
    invoke-virtual {v0, v2}, Lccc71/bmw/data/a/b;->d(I)Lccc71/bmw/data/a/a;

    move-result-object v3

    iput-object v3, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    .line 121
    iget-object v3, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    if-nez v3, :cond_0

    .line 123
    new-instance v3, Lccc71/bmw/data/a/a;

    invoke-direct {v3}, Lccc71/bmw/data/a/a;-><init>()V

    iput-object v3, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    .line 124
    iget-object v3, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    const-string v4, "Unnamed"

    iput-object v4, v3, Lccc71/bmw/data/a/a;->b:Ljava/lang/String;

    .line 125
    iget-object v3, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    iput v2, v3, Lccc71/bmw/data/a/a;->a:I

    .line 126
    const-string v3, "battery_widget_monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to load battery "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - creating new battery"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->b()V

    .line 140
    if-nez v1, :cond_2

    .line 142
    sget v0, Lccc71/bmw/lib/d;->cf:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 144
    iget-object v1, p0, Lccc71/bmw/lib/bmw_calibration;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    sget v0, Lccc71/bmw/lib/d;->ce:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 147
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 149
    sget v0, Lccc71/bmw/lib/d;->bo:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :goto_1
    return-void

    .line 130
    :cond_0
    const-string v3, "battery_widget_monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loaded battery "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " named "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    iget-object v4, v4, Lccc71/bmw/data/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    sget v0, Lccc71/bmw/lib/d;->bo:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    const-string v1, "Bad Permissions"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 135
    :cond_1
    :try_start_1
    new-instance v2, Lccc71/bmw/data/a/a;

    invoke-direct {v2}, Lccc71/bmw/data/a/a;-><init>()V

    iput-object v2, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 172
    :catch_1
    move-exception v0

    sget v0, Lccc71/bmw/lib/d;->bo:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    const-string v1, "Bad Permissions"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 154
    :cond_2
    :try_start_2
    sget v0, Lccc71/bmw/lib/d;->cf:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 155
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    sget v0, Lccc71/bmw/lib/d;->ce:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lccc71/bmw/lib/bmw_calibration;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    sget v0, Lccc71/bmw/lib/d;->bo:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    iget-object v1, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    iget-object v1, v1, Lccc71/bmw/data/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method static synthetic d(Lccc71/bmw/lib/bmw_calibration;)V
    .locals 2
    .parameter

    .prologue
    .line 194
    new-instance v0, Lccc71/bmw/lib/ah;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/ah;-><init>(Lccc71/bmw/lib/bmw_calibration;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic e(Lccc71/bmw/lib/bmw_calibration;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 787
    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->f:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private static e()Ljava/util/Date;
    .locals 6

    .prologue
    .line 973
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 974
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 975
    const/16 v3, 0xd

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    neg-long v0, v0

    long-to-int v0, v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 976
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 1104
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1105
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1106
    sget v1, Lccc71/bmw/lib/g;->c:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_calibration;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    iget v2, v2, Lccc71/bmw/data/a/a;->h:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1107
    sget v1, Lccc71/bmw/lib/g;->b:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_calibration;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    iget v2, v2, Lccc71/bmw/data/a/a;->i:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1108
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1110
    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    iget v0, v0, Lccc71/bmw/data/a/a;->h:I

    sput v0, Lccc71/bmw/lib/bmw_watcher;->u:I

    .line 1111
    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    iget v0, v0, Lccc71/bmw/data/a/a;->i:I

    sput v0, Lccc71/bmw/lib/bmw_watcher;->v:I

    .line 1112
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 1116
    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    if-nez v0, :cond_0

    .line 1117
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_calibration;->d()V

    .line 1119
    :cond_0
    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    if-eqz v0, :cond_2

    .line 1121
    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    iget v0, v0, Lccc71/bmw/data/a/a;->h:I

    if-eqz v0, :cond_1

    .line 1123
    sget v0, Lccc71/bmw/lib/d;->co:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1124
    iget-object v1, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    iget v1, v1, Lccc71/bmw/data/a/a;->h:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    :cond_1
    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    iget v0, v0, Lccc71/bmw/data/a/a;->i:I

    if-eqz v0, :cond_2

    .line 1129
    sget v0, Lccc71/bmw/lib/d;->cn:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1130
    iget-object v1, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    iget v1, v1, Lccc71/bmw/data/a/a;->i:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    :cond_2
    return-void
.end method

.method static synthetic g(Lccc71/bmw/lib/bmw_calibration;)V
    .locals 2
    .parameter

    .prologue
    .line 959
    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;)Lccc71/bmw/data/a;

    move-result-object v1

    iput-object v1, v0, Lccc71/bmw/data/a/a;->n:Lccc71/bmw/data/a;

    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    invoke-static {}, Lccc71/bmw/lib/bmw_calibration;->e()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lccc71/bmw/data/a/a;->p:Ljava/util/Date;

    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    iget-object v1, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    iget-object v1, v1, Lccc71/bmw/data/a/a;->q:Ljava/util/Date;

    iput-object v1, v0, Lccc71/bmw/data/a/a;->o:Ljava/util/Date;

    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    sget v1, Lccc71/bmw/lib/bmw_watcher;->m:I

    iput v1, v0, Lccc71/bmw/data/a/a;->k:I

    new-instance v0, Lccc71/bmw/data/a/b;

    invoke-direct {v0, p0}, Lccc71/bmw/data/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->a()V

    iget-object v1, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    invoke-virtual {v0, v1}, Lccc71/bmw/data/a/b;->b(Lccc71/bmw/data/a/a;)V

    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->b()V

    return-void
.end method

.method static synthetic h(Lccc71/bmw/lib/bmw_calibration;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_calibration;->d()V

    return-void
.end method

.method static synthetic i(Lccc71/bmw/lib/bmw_calibration;)V
    .locals 0
    .parameter

    .prologue
    .line 1114
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_calibration;->g()V

    return-void
.end method

.method static synthetic j(Lccc71/bmw/lib/bmw_calibration;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 979
    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->g:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic k(Lccc71/bmw/lib/bmw_calibration;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 1075
    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->h:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 1151
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1153
    sget v0, Lccc71/bmw/lib/e;->ba:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_calibration;->setContentView(I)V

    .line 1154
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lccc71/utils/al;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 65
    sget v0, Lccc71/bmw/lib/e;->ba:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_calibration;->setContentView(I)V

    .line 67
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_calibration;->d()V

    .line 69
    sget v0, Lccc71/bmw/lib/d;->dl:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    sget v1, Lccc71/bmw/lib/bmw_watcher;->m:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    sget v1, Lccc71/bmw/lib/bmw_watcher;->m:I

    iput v1, v0, Lccc71/bmw/data/a/a;->k:I

    .line 76
    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->e(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lccc71/bmw/data/a/a;->h:I

    .line 77
    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->f(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lccc71/bmw/data/a/a;->i:I

    .line 79
    new-instance v0, Lccc71/bmw/data/a/b;

    invoke-direct {v0, p0}, Lccc71/bmw/data/a/b;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->a()V

    .line 81
    iget-object v1, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    invoke-virtual {v0, v1}, Lccc71/bmw/data/a/b;->b(Lccc71/bmw/data/a/a;)V

    .line 82
    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->b()V

    .line 85
    :cond_0
    sget v0, Lccc71/bmw/lib/d;->db:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    new-instance v1, Lccc71/bmw/lib/ag;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/ag;-><init>(Lccc71/bmw/lib/bmw_calibration;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_calibration;->g()V

    .line 96
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 1159
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1160
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1138
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1140
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_calibration;->f()V

    .line 1142
    new-instance v0, Lccc71/bmw/data/a/b;

    invoke-direct {v0, p0}, Lccc71/bmw/data/a/b;-><init>(Landroid/content/Context;)V

    .line 1143
    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->a()V

    .line 1144
    iget-object v1, p0, Lccc71/bmw/lib/bmw_calibration;->c:Lccc71/bmw/data/a/a;

    invoke-virtual {v0, v1}, Lccc71/bmw/data/a/b;->b(Lccc71/bmw/data/a/a;)V

    .line 1145
    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->b()V

    .line 1146
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 103
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_calibration;->d()V

    .line 104
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_calibration;->g()V

    .line 106
    iget-object v0, p0, Lccc71/bmw/lib/bmw_calibration;->d:Landroid/os/Handler;

    sget v1, Lccc71/bmw/lib/bmw_calibration;->a:I

    sget v2, Lccc71/bmw/lib/bmw_calibration;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 107
    return-void
.end method
