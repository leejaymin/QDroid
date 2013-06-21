.class final Lccc71/pmw/lib/dh;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_backuplist;

.field private final synthetic b:I

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:Ljava/util/ArrayList;

.field private final synthetic e:Lccc71/pmw/a/y;

.field private final synthetic f:Z


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_backuplist;ILjava/util/ArrayList;Ljava/util/ArrayList;Lccc71/pmw/a/y;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/dh;->a:Lccc71/pmw/lib/pmw_backuplist;

    iput p2, p0, Lccc71/pmw/lib/dh;->b:I

    iput-object p3, p0, Lccc71/pmw/lib/dh;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lccc71/pmw/lib/dh;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lccc71/pmw/lib/dh;->e:Lccc71/pmw/a/y;

    iput-boolean p6, p0, Lccc71/pmw/lib/dh;->f:Z

    .line 1117
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/dh;)Lccc71/pmw/lib/pmw_backuplist;
    .locals 1
    .parameter

    .prologue
    .line 1117
    iget-object v0, p0, Lccc71/pmw/lib/dh;->a:Lccc71/pmw/lib/pmw_backuplist;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1122
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1124
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p0, Lccc71/pmw/lib/dh;->b:I

    if-lt v6, v0, :cond_0

    .line 1139
    iget-object v0, p0, Lccc71/pmw/lib/dh;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->n(Lccc71/pmw/lib/pmw_backuplist;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccc71/pmw/lib/di;

    iget-object v2, p0, Lccc71/pmw/lib/dh;->c:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lccc71/pmw/lib/di;-><init>(Lccc71/pmw/lib/dh;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1161
    return-void

    .line 1126
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/dh;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1127
    iget-object v0, p0, Lccc71/pmw/lib/dh;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 1128
    iget-object v0, p0, Lccc71/pmw/lib/dh;->e:Lccc71/pmw/a/y;

    sget-object v3, Lccc71/pmw/a/y;->e:Lccc71/pmw/a/y;

    if-ne v0, v3, :cond_1

    .line 1130
    if-eqz v2, :cond_3

    sget-object v0, Lccc71/pmw/a/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1131
    sput-boolean v7, Lccc71/pmw/lib/pmw_applist;->b:Z

    .line 1136
    :cond_1
    :goto_1
    iget-object v0, p0, Lccc71/pmw/lib/dh;->a:Lccc71/pmw/lib/pmw_backuplist;

    iget-object v3, p0, Lccc71/pmw/lib/dh;->e:Lccc71/pmw/a/y;

    sget-object v4, Lccc71/pmw/a/y;->e:Lccc71/pmw/a/y;

    if-ne v3, v4, :cond_2

    const/4 v2, 0x0

    :cond_2
    iget-object v3, p0, Lccc71/pmw/lib/dh;->e:Lccc71/pmw/a/y;

    iget-boolean v4, p0, Lccc71/pmw/lib/dh;->f:Z

    iget-object v5, p0, Lccc71/pmw/lib/dh;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_backuplist;->A(Lccc71/pmw/lib/pmw_backuplist;)Landroid/os/Handler;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lccc71/pmw/a/y;ZLandroid/os/Handler;)V

    .line 1124
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1133
    :cond_3
    sput-boolean v7, Lccc71/pmw/lib/pmw_applist;->c:Z

    goto :goto_1
.end method
