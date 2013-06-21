.class final Lccc71/pmw/lib/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/av;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:Ljava/util/ArrayList;

.field private final synthetic e:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/av;IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ay;->a:Lccc71/pmw/lib/av;

    iput p2, p0, Lccc71/pmw/lib/ay;->b:I

    iput p3, p0, Lccc71/pmw/lib/ay;->c:I

    iput-object p4, p0, Lccc71/pmw/lib/ay;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lccc71/pmw/lib/ay;->e:Ljava/util/ArrayList;

    .line 2129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/ay;)Lccc71/pmw/lib/av;
    .locals 1
    .parameter

    .prologue
    .line 2129
    iget-object v0, p0, Lccc71/pmw/lib/ay;->a:Lccc71/pmw/lib/av;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2134
    sput-boolean v4, Lccc71/pmw/lib/pmw_easy_apps;->a:Z

    .line 2135
    sput-boolean v4, Lccc71/pmw/lib/pmw_event_apps;->b:Z

    .line 2136
    sput-boolean v4, Lccc71/pmw/lib/pmw_backuplist;->a:Z

    .line 2138
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lccc71/pmw/lib/ay;->a:Lccc71/pmw/lib/av;

    invoke-static {v1}, Lccc71/pmw/lib/av;->a(Lccc71/pmw/lib/av;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->a(Landroid/app/ProgressDialog;)V

    .line 2139
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ay;->a:Lccc71/pmw/lib/av;

    invoke-static {v1}, Lccc71/pmw/lib/av;->a(Lccc71/pmw/lib/av;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 2140
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 2141
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->fP:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 2142
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ay;->a:Lccc71/pmw/lib/av;

    invoke-static {v1}, Lccc71/pmw/lib/av;->a(Lccc71/pmw/lib/av;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ey:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2143
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2144
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/c;->n:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 2145
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lccc71/pmw/lib/ay;->b:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 2146
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 2147
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2149
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2150
    if-eqz v0, :cond_0

    .line 2152
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2153
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 2156
    :cond_0
    new-instance v0, Lccc71/pmw/lib/az;

    iget v1, p0, Lccc71/pmw/lib/ay;->c:I

    iget-object v2, p0, Lccc71/pmw/lib/ay;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Lccc71/pmw/lib/ay;->e:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lccc71/pmw/lib/az;-><init>(Lccc71/pmw/lib/ay;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2200
    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 2201
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2202
    return-void
.end method
