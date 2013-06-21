.class public final Lccc71/utils/h;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static k:Ljava/lang/Process;

.field private static l:Ljava/io/BufferedWriter;

.field private static m:Ljava/io/BufferedReader;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lccc71/utils/m;

.field private g:Ljava/lang/String;

.field private h:Ljava/io/File;

.field private i:Ljava/util/ArrayList;

.field private j:Landroid/widget/GridView;

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLccc71/utils/m;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v1, p0, Lccc71/utils/h;->a:Landroid/content/Context;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccc71/utils/h;->b:Z

    .line 28
    iput-boolean v2, p0, Lccc71/utils/h;->c:Z

    .line 29
    iput-boolean v2, p0, Lccc71/utils/h;->d:Z

    .line 30
    iput-object v1, p0, Lccc71/utils/h;->e:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lccc71/utils/h;->f:Lccc71/utils/m;

    .line 32
    iput-object v1, p0, Lccc71/utils/h;->g:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/utils/h;->i:Ljava/util/ArrayList;

    .line 298
    new-instance v0, Lccc71/utils/i;

    invoke-direct {v0, p0}, Lccc71/utils/i;-><init>(Lccc71/utils/h;)V

    iput-object v0, p0, Lccc71/utils/h;->n:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lccc71/utils/h;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lccc71/utils/h;->e:Ljava/lang/String;

    .line 47
    iput-boolean v2, p0, Lccc71/utils/h;->c:Z

    .line 48
    iput-object p5, p0, Lccc71/utils/h;->f:Lccc71/utils/m;

    .line 49
    iput-object p3, p0, Lccc71/utils/h;->g:Ljava/lang/String;

    .line 50
    iput-boolean p4, p0, Lccc71/utils/h;->d:Z

    .line 52
    invoke-direct {p0}, Lccc71/utils/h;->g()V

    .line 53
    return-void
.end method

.method static synthetic a(Lccc71/utils/h;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lccc71/utils/h;->h:Ljava/io/File;

    return-object v0
.end method

.method static synthetic a(Lccc71/utils/h;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lccc71/utils/h;->a(Ljava/io/File;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/io/File;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 107
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lccc71/utils/h;->h:Ljava/io/File;

    .line 108
    iget-object v0, p0, Lccc71/utils/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccc71/utils/h;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lccc71/utils/h;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccc71/utils/h;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccc71/utils/h;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    iget-boolean v0, p0, Lccc71/utils/h;->d:Z

    if-eqz v0, :cond_2

    .line 114
    new-instance v0, Lccc71/utils/j;

    invoke-direct {v0, p0, p1}, Lccc71/utils/j;-><init>(Lccc71/utils/h;Ljava/io/File;)V

    .line 164
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 110
    :cond_1
    :try_start_1
    iget-object v0, p0, Lccc71/utils/h;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lccc71/utils/h;->b:Z

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lccc71/utils/h;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lccc71/utils/h;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 173
    iget-object v0, p0, Lccc71/utils/h;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 174
    iget-boolean v0, p0, Lccc71/utils/h;->b:Z

    if-eqz v0, :cond_5

    .line 176
    if-eqz v5, :cond_4

    .line 178
    array-length v6, v5

    move v3, v2

    :goto_2
    if-lt v3, v6, :cond_8

    .line 196
    :cond_4
    iget-object v0, p0, Lccc71/utils/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 199
    :cond_5
    iget-boolean v0, p0, Lccc71/utils/h;->c:Z

    if-nez v0, :cond_7

    .line 201
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 202
    if-eqz v5, :cond_6

    .line 204
    array-length v6, v5

    move v3, v2

    :goto_3
    if-lt v3, v6, :cond_c

    .line 222
    :cond_6
    iget-object v0, p0, Lccc71/utils/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 225
    :cond_7
    iget-object v0, p0, Lccc71/utils/h;->j:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lccc71/utils/h;->j:Landroid/widget/GridView;

    new-instance v1, Lccc71/utils/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lccc71/utils/l;-><init>(Lccc71/utils/h;B)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 178
    :cond_8
    :try_start_2
    aget-object v7, v5, v3

    .line 180
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 182
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v1, v2

    .line 183
    :goto_4
    if-lt v1, v8, :cond_a

    .line 191
    :goto_5
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 192
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_9
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 185
    :cond_a
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_b

    .line 187
    invoke-virtual {v4, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 183
    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 204
    :cond_c
    aget-object v7, v5, v3

    .line 206
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_d

    .line 208
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v1, v2

    .line 209
    :goto_6
    if-lt v1, v8, :cond_e

    .line 217
    :goto_7
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 218
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 211
    :cond_e
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_f

    .line 213
    invoke-virtual {v4, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 209
    :cond_f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method static synthetic b()Ljava/lang/Process;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lccc71/utils/h;->k:Ljava/lang/Process;

    return-object v0
.end method

.method static synthetic b(Lccc71/utils/h;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lccc71/utils/h;->b:Z

    return v0
.end method

.method static synthetic c(Lccc71/utils/h;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lccc71/utils/h;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c()V
    .locals 3

    .prologue
    .line 279
    const-string v0, "process_monitor_widget"

    const-string v1, "Loading browser shell..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    sput-object v0, Lccc71/utils/h;->k:Ljava/lang/Process;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Lccc71/utils/h;->k:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    sput-object v0, Lccc71/utils/h;->l:Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lccc71/utils/h;->k:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    sput-object v0, Lccc71/utils/h;->m:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lccc71/utils/h;->k:Ljava/lang/Process;

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/utils/h;->k:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    const/4 v0, 0x0

    sput-object v0, Lccc71/utils/h;->k:Ljava/lang/Process;

    goto :goto_0
.end method

.method static synthetic d()Ljava/io/BufferedWriter;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lccc71/utils/h;->l:Ljava/io/BufferedWriter;

    return-object v0
.end method

.method static synthetic d(Lccc71/utils/h;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/utils/h;->d:Z

    return-void
.end method

.method static synthetic e(Lccc71/utils/h;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lccc71/utils/h;->j:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic e()Ljava/io/BufferedReader;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lccc71/utils/h;->m:Ljava/io/BufferedReader;

    return-object v0
.end method

.method static synthetic f(Lccc71/utils/h;)Lccc71/utils/m;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lccc71/utils/h;->f:Lccc71/utils/m;

    return-object v0
.end method

.method static synthetic f()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lccc71/utils/h;->k:Ljava/lang/Process;

    return-void
.end method

.method static synthetic g(Lccc71/utils/h;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lccc71/utils/h;->a:Landroid/content/Context;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lccc71/utils/h;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lccc71/utils/h;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccc71/utils/h;->setCancelable(Z)V

    .line 67
    new-instance v0, Landroid/widget/GridView;

    iget-object v1, p0, Lccc71/utils/h;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lccc71/utils/h;->j:Landroid/widget/GridView;

    .line 68
    iget-object v0, p0, Lccc71/utils/h;->j:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 69
    iget-object v0, p0, Lccc71/utils/h;->j:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    iget-object v0, p0, Lccc71/utils/h;->j:Landroid/widget/GridView;

    invoke-virtual {p0, v0}, Lccc71/utils/h;->setContentView(Landroid/view/View;)V

    .line 73
    iget-object v0, p0, Lccc71/utils/h;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lccc71/utils/h;->a(Ljava/io/File;)V

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lccc71/utils/h;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lccc71/utils/h;->a(Ljava/io/File;)V

    goto :goto_0
.end method

.method static synthetic h(Lccc71/utils/h;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lccc71/utils/h;->n:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/utils/h;->b:Z

    .line 59
    invoke-direct {p0}, Lccc71/utils/h;->g()V

    .line 60
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lccc71/utils/h;->i:Ljava/util/ArrayList;

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    :try_start_0
    invoke-direct {p0, v0}, Lccc71/utils/h;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    iget-object v0, p0, Lccc71/utils/h;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lccc71/utils/h;->a(Ljava/io/File;)V

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lccc71/utils/h;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lccc71/utils/h;->a(Ljava/io/File;)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v1, p0, Lccc71/utils/h;->f:Lccc71/utils/m;

    invoke-virtual {v1, v0}, Lccc71/utils/m;->a(Ljava/io/File;)V

    .line 101
    invoke-virtual {p0}, Lccc71/utils/h;->dismiss()V

    goto :goto_0
.end method
