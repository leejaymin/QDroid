.class public final Lccc71/pmw/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/b/l;->a:Ljava/util/ArrayList;

    .line 24
    invoke-direct {p0}, Lccc71/pmw/b/l;->b()V

    .line 25
    return-void
.end method

.method private b()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lccc71/pmw/b/h;

    const-string v1, "mount"

    move-object v4, v2

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 31
    invoke-virtual {v0}, Lccc71/pmw/b/h;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/b/l;->a:Ljava/util/ArrayList;

    .line 33
    iget-object v0, p0, Lccc71/pmw/b/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 34
    :goto_0
    if-lt v3, v1, :cond_0

    .line 46
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lccc71/pmw/b/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, " +"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 37
    array-length v2, v0

    if-lt v2, v8, :cond_1

    .line 39
    aget-object v2, v0, v7

    const-string v4, "on"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v0, v0, v8

    .line 40
    :goto_1
    const-string v2, "/."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 42
    iget-object v2, p0, Lccc71/pmw/b/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    :cond_2
    aget-object v0, v0, v7

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lccc71/pmw/b/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 19
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 11
    iget-object v0, p0, Lccc71/pmw/b/l;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
