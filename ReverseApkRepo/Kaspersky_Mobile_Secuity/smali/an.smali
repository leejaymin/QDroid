.class public final Lan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field private e:I

.field private f:I

.field private g:Ljava/util/List;

.field private h:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lan;->e:I

    .line 21
    iput v0, p0, Lan;->f:I

    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/content/Context;)Lan;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 45
    new-instance v3, Lan;

    invoke-direct {v3}, Lan;-><init>()V

    .line 46
    invoke-static {p0}, Lfp;->b(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v3, Lan;->g:Ljava/util/List;

    .line 47
    invoke-static {p0}, Lfp;->a(Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, v3, Lan;->h:Landroid/content/pm/ResolveInfo;

    move v1, v2

    .line 49
    :goto_0
    iget-object v0, v3, Lan;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 51
    iget-object v0, v3, Lan;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 52
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 53
    invoke-static {v4}, Lan;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    iput v1, v3, Lan;->f:I

    .line 57
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v3, Lan;->h:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, v3, Lan;->h:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v3, Lan;->a:Ljava/lang/String;

    .line 60
    iput v1, v3, Lan;->e:I

    .line 49
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 64
    :cond_2
    iget v0, v3, Lan;->e:I

    if-eq v0, v5, :cond_3

    .line 66
    iget-object v0, v3, Lan;->g:Ljava/util/List;

    iget v1, v3, Lan;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lan;->b:Ljava/lang/String;

    .line 77
    :goto_1
    iget v0, v3, Lan;->f:I

    if-eq v0, v5, :cond_5

    .line 79
    iget-object v0, v3, Lan;->g:Ljava/util/List;

    iget v1, v3, Lan;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lan;->c:Ljava/lang/String;

    .line 87
    :goto_2
    iget v0, v3, Lan;->f:I

    if-ne v0, v5, :cond_6

    .line 90
    const/4 v0, 0x3

    iput v0, v3, Lan;->d:I

    .line 106
    :goto_3
    return-object v3

    .line 68
    :cond_3
    iget-object v0, v3, Lan;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 70
    iget-object v0, v3, Lan;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lan;->b:Ljava/lang/String;

    goto :goto_1

    .line 74
    :cond_4
    const v0, 0x7f0802c5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lan;->b:Ljava/lang/String;

    goto :goto_1

    .line 83
    :cond_5
    const v0, 0x7f0802c4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lan;->c:Ljava/lang/String;

    goto :goto_2

    .line 92
    :cond_6
    iget v0, v3, Lan;->e:I

    if-ne v0, v5, :cond_7

    iget-object v0, v3, Lan;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_7

    .line 94
    iput v6, v3, Lan;->d:I

    goto :goto_3

    .line 96
    :cond_7
    iget v0, v3, Lan;->e:I

    iget v1, v3, Lan;->f:I

    if-eq v0, v1, :cond_8

    .line 98
    const/4 v0, 0x2

    iput v0, v3, Lan;->d:I

    goto :goto_3

    .line 103
    :cond_8
    iput v2, v3, Lan;->d:I

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 31
    if-eqz p0, :cond_0

    move v0, v1

    .line 33
    :goto_0
    sget-object v2, Laa;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 35
    sget-object v2, Laa;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    const/4 v1, 0x1

    .line 41
    :cond_0
    return v1

    .line 33
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
