.class public final Lcom/kaspersky/components/urlfilter/ExclusionList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/kaspersky/components/urlfilter/ExclusionList;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/Vector;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/kaspersky/components/urlfilter/ExclusionList;->b:Landroid/content/Context;

    .line 132
    invoke-direct {p0}, Lcom/kaspersky/components/urlfilter/ExclusionList;->a()V

    .line 133
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/kaspersky/components/urlfilter/ExclusionList;
    .locals 2
    .parameter

    .prologue
    .line 122
    const-class v1, Lcom/kaspersky/components/urlfilter/ExclusionList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kaspersky/components/urlfilter/ExclusionList;->a:Lcom/kaspersky/components/urlfilter/ExclusionList;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/kaspersky/components/urlfilter/ExclusionList;

    invoke-direct {v0, p0}, Lcom/kaspersky/components/urlfilter/ExclusionList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kaspersky/components/urlfilter/ExclusionList;->a:Lcom/kaspersky/components/urlfilter/ExclusionList;

    .line 126
    :cond_0
    sget-object v0, Lcom/kaspersky/components/urlfilter/ExclusionList;->a:Lcom/kaspersky/components/urlfilter/ExclusionList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kaspersky/components/urlfilter/ExclusionList;->b()Ljava/io/File;

    move-result-object v0

    .line 183
    invoke-static {v0}, LS;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iput-object v0, p0, Lcom/kaspersky/components/urlfilter/ExclusionList;->c:Ljava/util/Vector;

    .line 184
    iget-object v0, p0, Lcom/kaspersky/components/urlfilter/ExclusionList;->c:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/components/urlfilter/ExclusionList;->c:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()Ljava/io/File;
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/kaspersky/components/urlfilter/ExclusionList;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/io/File;

    const-string v2, "wfexcl.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kaspersky/components/urlfilter/ExclusionList;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    move v2, v1

    .line 172
    :goto_0
    if-ge v2, v3, :cond_1

    .line 174
    iget-object v0, p0, Lcom/kaspersky/components/urlfilter/ExclusionList;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;

    invoke-virtual {v0, p1}, Lcom/kaspersky/components/urlfilter/ExclusionList$Exclusion;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x1

    .line 177
    :goto_1
    monitor-exit p0

    return v0

    .line 172
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 177
    goto :goto_1

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
