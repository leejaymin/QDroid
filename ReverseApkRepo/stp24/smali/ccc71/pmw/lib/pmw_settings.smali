.class public Lccc71/pmw/lib/pmw_settings;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# static fields
.field static a:Landroid/content/SharedPreferences;

.field private static c:Lccc71/pmw/lib/pmw_settings;

.field private static d:Z

.field private static e:I


# instance fields
.field public b:Z

.field private f:Ljava/util/List;

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->c:Lccc71/pmw/lib/pmw_settings;

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/pmw/lib/pmw_settings;->d:Z

    .line 75
    const/4 v0, -0x1

    sput v0, Lccc71/pmw/lib/pmw_settings;->e:I

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_settings;->f:Ljava/util/List;

    .line 2795
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_settings;->b:Z

    .line 4156
    new-instance v0, Lccc71/pmw/lib/lh;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/lh;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_settings;->g:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static A(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 496
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 497
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 501
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->s:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 505
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1670
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1671
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1673
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->ba:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1674
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static B(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1699
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 1700
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1702
    :cond_0
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lccc71/pmw/lib/g;->aW:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1703
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1705
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1707
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lccc71/pmw/lib/g;->aZ:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1708
    if-eqz v1, :cond_1

    .line 1714
    :goto_0
    return v0

    .line 1711
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static B(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 511
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 512
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 514
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->u:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 517
    const-string v0, ""

    .line 519
    :cond_1
    return-object v0
.end method

.method public static C(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 524
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 525
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 529
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->E:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 533
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static C(Landroid/content/Context;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1729
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1730
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1732
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aX:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static D(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 539
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 540
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 544
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->D:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 548
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static D(Landroid/content/Context;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1747
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1748
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1750
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->bb:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static E(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 554
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 555
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 559
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->C:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 563
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static F(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 569
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 570
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 574
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->A:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 578
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static G(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 584
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 585
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 589
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->z:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 593
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static H(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 599
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 604
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->B:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 608
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static I(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 614
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 615
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 617
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->q:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static J(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 632
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 633
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 635
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->p:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static K(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 650
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 651
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 653
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->al:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static L(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 658
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 659
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 661
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aw:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static M(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 666
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 667
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 669
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ab:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static N(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 674
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    :goto_0
    return v0

    .line 677
    :cond_0
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 678
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 680
    :cond_1
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->ae:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static O(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 707
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 708
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 712
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->n:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 718
    :goto_0
    return v0

    .line 716
    :catch_0
    move-exception v0

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aN(Landroid/content/Context;)V

    .line 718
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->n:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static P(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 723
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 724
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 726
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->v:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static Q(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 731
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 732
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 734
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aG:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static R(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 739
    sget-boolean v0, Lccc71/pmw/a/ah;->j:Z

    if-eqz v0, :cond_0

    .line 740
    const/4 v0, 0x0

    .line 754
    :goto_0
    return v0

    .line 742
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 743
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 747
    :cond_1
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->o:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 751
    :catch_0
    move-exception v0

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aN(Landroid/content/Context;)V

    .line 754
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->o:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static S(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 759
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 760
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 764
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->av:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 771
    :goto_0
    return v0

    .line 768
    :catch_0
    move-exception v0

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aN(Landroid/content/Context;)V

    .line 771
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->av:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static T(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 776
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 777
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 781
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->X:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 788
    :goto_0
    return v0

    .line 785
    :catch_0
    move-exception v0

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aN(Landroid/content/Context;)V

    .line 788
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->X:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static U(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 793
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    const/4 v0, 0x0

    .line 808
    :goto_0
    return v0

    .line 796
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 797
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 801
    :cond_1
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 805
    :catch_0
    move-exception v0

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aN(Landroid/content/Context;)V

    .line 808
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static V(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 813
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 814
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 818
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->m:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 825
    :goto_0
    return v0

    .line 822
    :catch_0
    move-exception v0

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aN(Landroid/content/Context;)V

    .line 825
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->m:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static W(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 830
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 831
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 833
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->f:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static X(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 838
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 839
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 841
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static Y(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 846
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 847
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 849
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static Z(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 854
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 855
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 857
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->e:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic a()Lccc71/pmw/lib/pmw_settings;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->c:Lccc71/pmw/lib/pmw_settings;

    return-object v0
.end method

.method public static a(IF)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4120

    .line 1929
    packed-switch p0, :pswitch_data_0

    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u00baC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1938
    :goto_0
    return-object v0

    .line 1934
    :pswitch_0
    mul-float v0, p1, v2

    float-to-int v0, v0

    .line 1935
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0x140

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u00baF"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1937
    :pswitch_1
    mul-float v0, p1, v2

    float-to-int v0, v0

    .line 1938
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit16 v0, v0, 0xaab

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u00baK"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1929
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static a(Landroid/content/Context;F)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 364
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 367
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->G:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 369
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 370
    return-void
.end method

.method static a(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 622
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 623
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 625
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 626
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->q:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 627
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 628
    return-void
.end method

.method static a(Landroid/content/Context;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1160
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1161
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1163
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->bf:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1165
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1166
    return-void
.end method

.method static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1268
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1269
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1271
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1272
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/pmw/lib/g;->aS:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1273
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1274
    return-void
.end method

.method static a(Landroid/content/Context;IZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1719
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1720
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1722
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aX:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1724
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1725
    return-void
.end method

.method static a(Landroid/content/Context;Lccc71/pmw/a/ac;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 463
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 466
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->t:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lccc71/pmw/a/ac;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 468
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 484
    return-void
.end method

.method public static a(Landroid/content/Context;Lccc71/pmw/b/f;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 145
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 148
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->k:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lccc71/pmw/b/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 152
    invoke-static {p0}, Lccc71/pmw/lib/pmw_backup_scheduler;->a(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 640
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 641
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 643
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->p:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 645
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 646
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1792
    new-instance v0, Lccc71/pmw/lib/ls;

    invoke-direct {v0, p0, p1}, Lccc71/pmw/lib/ls;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1800
    invoke-virtual {v0}, Lccc71/pmw/lib/ls;->start()V

    .line 1801
    return-void
.end method

.method static a(Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 912
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 913
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 915
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 916
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->az:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 917
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 918
    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter

    .prologue
    .line 1974
    if-eqz p1, :cond_0

    .line 1976
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1977
    if-eqz v0, :cond_0

    .line 1979
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1980
    if-eqz v1, :cond_0

    .line 1982
    sget v2, Lccc71/pmw/lib/g;->aN:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v3}, Lccc71/pmw/lib/pmw_settings;->p(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1983
    sget v2, Lccc71/pmw/lib/g;->bb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v3}, Lccc71/pmw/lib/pmw_settings;->D(Landroid/content/Context;I)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1984
    sget v2, Lccc71/pmw/lib/g;->aY:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v3}, Lccc71/pmw/lib/pmw_settings;->q(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1985
    sget v2, Lccc71/pmw/lib/g;->aU:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v3}, Lccc71/pmw/lib/pmw_settings;->r(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1986
    sget v2, Lccc71/pmw/lib/g;->aO:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v3}, Lccc71/pmw/lib/pmw_settings;->t(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1987
    sget v2, Lccc71/pmw/lib/g;->bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v3}, Lccc71/pmw/lib/pmw_settings;->u(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1988
    sget v2, Lccc71/pmw/lib/g;->aP:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v3}, Lccc71/pmw/lib/pmw_settings;->v(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1989
    sget v2, Lccc71/pmw/lib/g;->bh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v3}, Lccc71/pmw/lib/pmw_settings;->w(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1990
    sget v2, Lccc71/pmw/lib/g;->aQ:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v3}, Lccc71/pmw/lib/pmw_settings;->x(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1991
    sget v2, Lccc71/pmw/lib/g;->ba:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v3}, Lccc71/pmw/lib/pmw_settings;->A(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1992
    sget v2, Lccc71/pmw/lib/g;->bd:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v3}, Lccc71/pmw/lib/pmw_settings;->z(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1993
    sget v2, Lccc71/pmw/lib/g;->aR:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v3}, Lccc71/pmw/lib/pmw_settings;->y(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1994
    sget v2, Lccc71/pmw/lib/g;->aW:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v3}, Lccc71/pmw/lib/pmw_settings;->B(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1995
    sget v2, Lccc71/pmw/lib/g;->aX:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v3}, Lccc71/pmw/lib/pmw_settings;->C(Landroid/content/Context;I)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1996
    sget v2, Lccc71/pmw/lib/g;->be:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v2}, Lccc71/pmw/lib/pmw_settings;->o(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1997
    sget v1, Lccc71/pmw/lib/g;->aS:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lccc71/pmw/lib/pmw_settings;->c:Lccc71/pmw/lib/pmw_settings;

    sget v3, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {v2, v3}, Lccc71/pmw/lib/pmw_settings;->l(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1999
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2003
    :cond_0
    return-void
.end method

.method private static a(Landroid/preference/ListPreference;)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2007
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 2008
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 2009
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 2011
    aget-object v0, v6, v2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    move v0, v1

    :goto_0
    move v3, v2

    move v4, v2

    .line 2014
    :goto_1
    array-length v8, v6

    if-lt v3, v8, :cond_2

    .line 2024
    if-nez v4, :cond_5

    .line 2071
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 2011
    goto :goto_0

    .line 2016
    :cond_2
    aget-object v8, v6, v3

    const-string v9, "7"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v0, :cond_3

    move v4, v1

    .line 2018
    :cond_3
    aget-object v8, v6, v3

    const-string v9, "8"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v0, :cond_4

    move v4, v1

    .line 2014
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2027
    :cond_5
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 2028
    array-length v3, v6

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 2031
    if-eqz v0, :cond_a

    move v0, v2

    .line 2033
    :goto_3
    array-length v4, v5

    if-lt v0, v4, :cond_8

    .line 2058
    :cond_6
    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2059
    invoke-virtual {p0, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2063
    if-eqz v7, :cond_7

    :try_start_0
    invoke-virtual {p0, v7}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2065
    :cond_7
    const-string v0, "0"

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    .line 2035
    :cond_8
    aget-object v4, v6, v0

    const-string v8, "7"

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2037
    aget-object v4, v5, v0

    aput-object v4, v1, v2

    .line 2038
    aget-object v4, v6, v0

    aput-object v4, v3, v2

    .line 2040
    add-int/lit8 v2, v2, 0x1

    .line 2033
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    move v0, v2

    .line 2046
    :goto_4
    array-length v4, v5

    if-ge v0, v4, :cond_6

    .line 2048
    aget-object v4, v6, v0

    const-string v8, "8"

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2050
    aget-object v4, v5, v0

    aput-object v4, v1, v2

    .line 2051
    aget-object v4, v6, v0

    aput-object v4, v3, v2

    .line 2053
    add-int/lit8 v2, v2, 0x1

    .line 2046
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private a(Landroid/preference/Preference;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 4053
    const/16 v0, 0x1e

    if-ge p2, v0, :cond_0

    .line 4055
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->cA:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4056
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/high16 v2, -0x1

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4057
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 4063
    :goto_0
    return-void

    .line 4061
    :cond_0
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->cF:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Landroid/preference/PreferenceScreen;)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x1

    const/4 v8, 0x0

    .line 2385
    new-instance v9, Lccc71/pmw/a/ah;

    invoke-direct {v9, p0, v13}, Lccc71/pmw/a/ah;-><init>(Landroid/content/Context;Z)V

    .line 2386
    new-instance v10, Lccc71/pmw/a/at;

    invoke-direct {v10, p0}, Lccc71/pmw/a/at;-><init>(Landroid/content/Context;)V

    .line 2387
    sget-boolean v11, Lccc71/pmw/a/ah;->j:Z

    .line 2389
    invoke-virtual {v9}, Lccc71/pmw/a/ah;->f()[I

    move-result-object v1

    .line 2390
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 2391
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 2392
    const-string v0, "No frequency changes"

    aput-object v0, v2, v8

    .line 2393
    const-string v0, "0"

    aput-object v0, v3, v8

    .line 2395
    array-length v4, v1

    move v0, v8

    .line 2396
    :goto_0
    if-lt v0, v4, :cond_5

    .line 2404
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->R(Landroid/content/Context;)I

    .line 2406
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->o:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 2407
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 2408
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->n:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 2409
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->av:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    .line 2410
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lccc71/pmw/lib/g;->X:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 2411
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lccc71/pmw/lib/g;->m:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    .line 2412
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lccc71/pmw/lib/g;->aG:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 2414
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v12, Lccc71/pmw/lib/g;->v:I

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 2415
    if-eqz v7, :cond_1

    .line 2417
    sget-boolean v12, Lccc71/pmw/a/ah;->k:Z

    if-nez v12, :cond_0

    .line 2419
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2420
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2421
    sget v12, Lccc71/pmw/lib/g;->cl:I

    invoke-virtual {v7, v12}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 2422
    sget v12, Lccc71/pmw/lib/g;->cl:I

    invoke-virtual {v7, v12}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 2423
    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2425
    :cond_0
    new-instance v12, Lccc71/pmw/lib/ly;

    invoke-direct {v12, p0, v0, v9}, Lccc71/pmw/lib/ly;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/ListPreference;Lccc71/pmw/a/ah;)V

    invoke-virtual {v7, v12}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2496
    :cond_1
    if-eqz v11, :cond_6

    .line 2498
    sget v7, Lccc71/pmw/lib/g;->fr:I

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 2499
    invoke-static {}, Lccc71/pmw/a/ah;->o()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2501
    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2502
    const-string v7, "0"

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2511
    :cond_2
    :goto_1
    new-instance v7, Ljava/io/File;

    const-string v11, "/system/etc/init.d"

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2512
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_7

    .line 2514
    sget v7, Lccc71/pmw/lib/b;->s:I

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 2515
    sget v7, Lccc71/pmw/lib/b;->t:I

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 2517
    sget v7, Lccc71/pmw/lib/b;->s:I

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 2518
    sget v7, Lccc71/pmw/lib/b;->t:I

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 2520
    sget v7, Lccc71/pmw/lib/b;->s:I

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 2521
    sget v7, Lccc71/pmw/lib/b;->t:I

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 2523
    sget v7, Lccc71/pmw/lib/b;->s:I

    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 2524
    sget v7, Lccc71/pmw/lib/b;->t:I

    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 2526
    sget v7, Lccc71/pmw/lib/b;->s:I

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 2527
    sget v7, Lccc71/pmw/lib/b;->t:I

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 2529
    sget v7, Lccc71/pmw/lib/b;->s:I

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 2530
    sget v7, Lccc71/pmw/lib/b;->t:I

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 2532
    sget v7, Lccc71/pmw/lib/b;->s:I

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 2533
    sget v7, Lccc71/pmw/lib/b;->t:I

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 2558
    :goto_2
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2559
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2560
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2561
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2562
    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2563
    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2564
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2566
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2569
    :cond_3
    new-instance v7, Lccc71/pmw/lib/mb;

    invoke-direct {v7, p0, v9, v2}, Lccc71/pmw/lib/mb;-><init>(Lccc71/pmw/lib/pmw_settings;Lccc71/pmw/a/ah;Landroid/preference/ListPreference;)V

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2600
    new-instance v7, Lccc71/pmw/lib/mc;

    invoke-direct {v7, p0, v9, v0}, Lccc71/pmw/lib/mc;-><init>(Lccc71/pmw/lib/pmw_settings;Lccc71/pmw/a/ah;Landroid/preference/ListPreference;)V

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2623
    new-instance v7, Lccc71/pmw/lib/md;

    invoke-direct {v7, p0}, Lccc71/pmw/lib/md;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    .line 2638
    new-instance v9, Lccc71/pmw/lib/me;

    invoke-direct {v9, p0, v10, v7, v6}, Lccc71/pmw/lib/me;-><init>(Lccc71/pmw/lib/pmw_settings;Lccc71/pmw/a/at;Landroid/os/Handler;Landroid/preference/ListPreference;)V

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2661
    new-instance v9, Lccc71/pmw/lib/mg;

    invoke-direct {v9, p0, v7, v3}, Lccc71/pmw/lib/mg;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/os/Handler;Landroid/preference/ListPreference;)V

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2688
    new-instance v9, Lccc71/pmw/lib/mh;

    invoke-direct {v9, p0, v7, v1}, Lccc71/pmw/lib/mh;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/os/Handler;Landroid/preference/ListPreference;)V

    invoke-virtual {v1, v9}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2720
    new-instance v9, Lccc71/pmw/lib/mi;

    invoke-direct {v9, p0, v7, v5}, Lccc71/pmw/lib/mi;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/os/Handler;Landroid/preference/ListPreference;)V

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2752
    new-instance v9, Lccc71/pmw/lib/mj;

    invoke-direct {v9, p0, v7, v4}, Lccc71/pmw/lib/mj;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/os/Handler;Landroid/preference/ListPreference;)V

    invoke-virtual {v4, v9}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2776
    sget-boolean v7, Lccc71/pmw/b/h;->c:Z

    if-nez v7, :cond_4

    .line 2778
    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2779
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lccc71/pmw/lib/g;->cq:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2780
    invoke-virtual {v1, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2781
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lccc71/pmw/lib/g;->cq:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2782
    invoke-virtual {v2, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2783
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->cq:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2784
    invoke-virtual {v3, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2785
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->cq:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2786
    invoke-virtual {v4, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2787
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->cq:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2788
    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2789
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->cq:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2790
    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2791
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->cq:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2793
    :cond_4
    return-void

    .line 2398
    :cond_5
    add-int/lit8 v5, v0, 0x1

    aget v6, v1, v0

    invoke-static {v6}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 2399
    add-int/lit8 v5, v0, 0x1

    aget v6, v1, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 2396
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2507
    :cond_6
    sget v7, Lccc71/pmw/lib/g;->ce:I

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 2508
    invoke-virtual {v0, v13}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 2537
    :cond_7
    sget v7, Lccc71/pmw/lib/b;->r:I

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 2538
    sget v7, Lccc71/pmw/lib/b;->u:I

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 2540
    sget v7, Lccc71/pmw/lib/b;->r:I

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 2541
    sget v7, Lccc71/pmw/lib/b;->u:I

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 2543
    sget v7, Lccc71/pmw/lib/b;->r:I

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 2544
    sget v7, Lccc71/pmw/lib/b;->u:I

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 2546
    sget v7, Lccc71/pmw/lib/b;->r:I

    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 2547
    sget v7, Lccc71/pmw/lib/b;->u:I

    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 2549
    sget v7, Lccc71/pmw/lib/b;->r:I

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 2550
    sget v7, Lccc71/pmw/lib/b;->u:I

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 2552
    sget v7, Lccc71/pmw/lib/b;->r:I

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 2553
    sget v7, Lccc71/pmw/lib/b;->u:I

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 2555
    sget v7, Lccc71/pmw/lib/b;->r:I

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 2556
    sget v7, Lccc71/pmw/lib/b;->u:I

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_2
.end method

.method private a(Landroid/preference/PreferenceScreen;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 2075
    if-nez p1, :cond_0

    .line 2381
    :goto_0
    return-void

    .line 2078
    :cond_0
    if-eqz p2, :cond_4

    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    sget v1, Lccc71/pmw/lib/e;->bz:I

    if-eq v0, v1, :cond_1

    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    sget v1, Lccc71/pmw/lib/e;->bC:I

    if-ne v0, v1, :cond_4

    .line 2080
    :cond_1
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bh:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2081
    new-instance v0, Lccc71/pmw/lib/mq;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/mq;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2091
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lccc71/pmw/lib/g;->aQ:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2092
    new-instance v2, Lccc71/pmw/lib/nc;

    invoke-direct {v2, p0}, Lccc71/pmw/lib/nc;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2102
    invoke-static {}, Lccc71/pmw/a/ah;->j()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2104
    check-cast v0, Landroid/preference/ListPreference;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/preference/ListPreference;)V

    move-object v0, v1

    .line 2105
    check-cast v0, Landroid/preference/ListPreference;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/preference/ListPreference;)V

    .line 2108
    :cond_2
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->aV:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2109
    sget v0, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v0}, Lccc71/pmw/lib/pmw_settings;->s(Landroid/content/Context;I)I

    move-result v2

    .line 2110
    if-eq v2, v6, :cond_3

    move-object v0, v1

    .line 2111
    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lccc71/pmw/lib/pmw_widget;->o:[I

    aget v2, v4, v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2112
    :cond_3
    new-instance v0, Lccc71/pmw/lib/no;

    invoke-direct {v0, p0, v1}, Lccc71/pmw/lib/no;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2126
    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    sget v1, Lccc71/pmw/lib/e;->bC:I

    if-ne v0, v1, :cond_4

    .line 2128
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->aT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2129
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->cL:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2130
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v3, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v3}, Lccc71/pmw/lib/pmw_settings;->n(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v2, v5, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2131
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2132
    new-instance v1, Lccc71/pmw/lib/ny;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/ny;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;)V

    .line 2143
    new-instance v2, Lccc71/pmw/lib/nz;

    invoke-direct {v2, p0, v1}, Lccc71/pmw/lib/nz;-><init>(Lccc71/pmw/lib/pmw_settings;Lccc71/utils/r;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2156
    :cond_4
    sget v0, Lccc71/pmw/lib/g;->aS:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 2157
    if-eqz v0, :cond_5

    .line 2159
    sget v1, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v1}, Lccc71/pmw/lib/pmw_settings;->l(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2160
    new-instance v1, Lccc71/pmw/lib/oa;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/oa;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2170
    :cond_5
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bf:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2171
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->cL:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2172
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v3, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v3}, Lccc71/pmw/lib/pmw_settings;->m(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v2, v5, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2173
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2174
    new-instance v1, Lccc71/pmw/lib/li;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/li;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;)V

    .line 2185
    new-instance v2, Lccc71/pmw/lib/lj;

    invoke-direct {v2, p0, v1}, Lccc71/pmw/lib/lj;-><init>(Lccc71/pmw/lib/pmw_settings;Lccc71/utils/r;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2196
    if-eqz p2, :cond_9

    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    sget v1, Lccc71/pmw/lib/e;->bC:I

    if-eq v0, v1, :cond_9

    .line 2198
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->aU:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2199
    if-eqz v1, :cond_7

    .line 2201
    sget v0, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v0}, Lccc71/pmw/lib/pmw_settings;->r(Landroid/content/Context;I)I

    move-result v2

    .line 2202
    if-eq v2, v6, :cond_6

    move-object v0, v1

    .line 2203
    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lccc71/pmw/lib/pmw_widget;->o:[I

    aget v2, v4, v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2204
    :cond_6
    new-instance v0, Lccc71/pmw/lib/lk;

    invoke-direct {v0, p0, v1}, Lccc71/pmw/lib/lk;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2219
    :cond_7
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->be:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2220
    const/4 v1, 0x7

    invoke-static {v1}, Lccc71/utils/ac;->a(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2222
    new-instance v1, Lccc71/pmw/lib/ll;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/ll;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2238
    :goto_1
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2239
    new-instance v0, Lccc71/pmw/lib/lm;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/lm;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2249
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lccc71/pmw/lib/g;->aP:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2250
    new-instance v2, Lccc71/pmw/lib/ln;

    invoke-direct {v2, p0}, Lccc71/pmw/lib/ln;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2260
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aR:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 2261
    new-instance v3, Lccc71/pmw/lib/lo;

    invoke-direct {v3, p0}, Lccc71/pmw/lib/lo;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2271
    invoke-static {}, Lccc71/pmw/a/ah;->j()Z

    move-result v3

    if-nez v3, :cond_8

    .line 2273
    check-cast v0, Landroid/preference/ListPreference;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/preference/ListPreference;)V

    move-object v0, v1

    .line 2274
    check-cast v0, Landroid/preference/ListPreference;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/preference/ListPreference;)V

    move-object v0, v2

    .line 2275
    check-cast v0, Landroid/preference/ListPreference;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/preference/ListPreference;)V

    .line 2278
    :cond_8
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->ba:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2279
    new-instance v1, Lccc71/pmw/lib/lp;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/lp;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2289
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bd:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2290
    new-instance v1, Lccc71/pmw/lib/lq;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/lq;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2301
    :cond_9
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->aO:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object v0, v1

    .line 2302
    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lccc71/pmw/lib/pmw_widget;->j:[[I

    const/4 v4, 0x3

    aget-object v3, v3, v4

    sget v4, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v4}, Lccc71/pmw/lib/pmw_settings;->t(Landroid/content/Context;I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2303
    new-instance v0, Lccc71/pmw/lib/lr;

    invoke-direct {v0, p0, v1}, Lccc71/pmw/lib/lr;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2315
    sget v0, Lccc71/pmw/lib/g;->aW:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 2316
    sget v1, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v1}, Lccc71/pmw/lib/pmw_settings;->B(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2317
    sget v1, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-static {p0, v1}, Lccc71/pmw/lib/pmw_settings;->B(Landroid/content/Context;I)I

    move-result v1

    if-nez v1, :cond_b

    .line 2318
    sget v1, Lccc71/pmw/lib/g;->cK:I

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 2321
    :goto_2
    new-instance v1, Lccc71/pmw/lib/lt;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/lt;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/ListPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2338
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->aX:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2339
    new-instance v1, Lccc71/pmw/lib/lu;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/lu;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2349
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bb:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2350
    new-instance v1, Lccc71/pmw/lib/lv;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/lv;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2360
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->aN:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2361
    new-instance v1, Lccc71/pmw/lib/lw;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/lw;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2371
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->aY:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2372
    new-instance v1, Lccc71/pmw/lib/lx;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/lx;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 2234
    :cond_a
    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2235
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 2320
    :cond_b
    sget v1, Lccc71/pmw/lib/g;->cJ:I

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_2
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_settings;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1972
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4079
    invoke-direct {p0, p1, p2}, Lccc71/pmw/lib/pmw_settings;->c(Landroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3370
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_settings;->h(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_settings;Landroid/preference/PreferenceScreen;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2073
    invoke-direct {p0, p1, p2}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/preference/PreferenceScreen;Landroid/appwidget/AppWidgetProviderInfo;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 82
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->M(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->O(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 90
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->R(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    .line 93
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->T(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 96
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->U(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 99
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->S(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 102
    invoke-static {p0}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    invoke-static {p0}, Lccc71/pmw/lib/pmw_notif_scheduler;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->A(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->Y(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->Z(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    .line 109
    :goto_1
    if-nez v2, :cond_0

    .line 112
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->c(Landroid/content/Context;)Lccc71/pmw/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lccc71/pmw/b/f;->b()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 115
    goto :goto_0

    :cond_2
    move v2, v0

    .line 108
    goto :goto_1
.end method

.method static aA(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1318
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1319
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1323
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aH:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#FFFFD0A0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1327
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, -0x2f60

    goto :goto_0
.end method

.method static aB(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1333
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1334
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1338
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->L:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#FFFFA0A0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1342
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, -0x5f60

    goto :goto_0
.end method

.method static aC(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1348
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1349
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1353
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->l:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#FF202020"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1357
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const v0, -0xdfdfe0

    goto :goto_0
.end method

.method static aD(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1363
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1364
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1368
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aL:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#FF33B5E5"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1372
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const v0, -0x4f0050

    goto :goto_0
.end method

.method static aE(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1378
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1379
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1383
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->Q:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#FF6060FF"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1387
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const v0, -0x9f9f01

    goto :goto_0
.end method

.method static aF(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1393
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1394
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1398
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->N:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#FF60FF60"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1402
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const v0, -0x9f00a0

    goto :goto_0
.end method

.method static aG(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1408
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1409
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1413
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->S:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#FFFFC060"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1417
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, -0x3fa0

    goto :goto_0
.end method

.method static aH(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1423
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1424
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1428
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->O:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#FFFF6060"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1432
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const v0, -0x9fa0

    goto :goto_0
.end method

.method static aI(Landroid/content/Context;)F
    .locals 3
    .parameter

    .prologue
    .line 1755
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1756
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1758
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->J:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1759
    if-eqz v0, :cond_1

    .line 1761
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->I:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1763
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1787
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1766
    :pswitch_0
    const v0, 0x3a83126f

    goto :goto_0

    .line 1768
    :pswitch_1
    const v0, 0x3ba3d70a

    goto :goto_0

    .line 1770
    :pswitch_2
    const v0, 0x3c23d70a

    goto :goto_0

    .line 1772
    :pswitch_3
    const v0, 0x3d4ccccd

    goto :goto_0

    .line 1774
    :pswitch_4
    const v0, 0x3dcccccd

    goto :goto_0

    .line 1776
    :pswitch_5
    const/high16 v0, 0x3f00

    goto :goto_0

    .line 1778
    :pswitch_6
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 1780
    :pswitch_7
    const/high16 v0, 0x40a0

    goto :goto_0

    .line 1782
    :pswitch_8
    const/high16 v0, 0x4120

    goto :goto_0

    .line 1784
    :pswitch_9
    const/high16 v0, 0x41a0

    goto :goto_0

    .line 1763
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static aJ(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .parameter

    .prologue
    .line 1824
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1825
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1827
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->w:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1829
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1830
    array-length v3, v1

    .line 1831
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 1836
    return-object v2

    .line 1833
    :cond_1
    aget-object v4, v1, v0

    const-string v5, ""

    if-eq v4, v5, :cond_2

    .line 1834
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static aK(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .parameter

    .prologue
    .line 1873
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1874
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1876
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    sget v1, Lccc71/pmw/lib/g;->M:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1878
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1879
    array-length v3, v1

    .line 1880
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 1886
    return-object v2

    .line 1882
    :cond_1
    aget-object v4, v1, v0

    if-eqz v4, :cond_2

    aget-object v4, v1, v0

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1883
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1880
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static aL(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1891
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1892
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1894
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    sget v1, Lccc71/pmw/lib/g;->aI:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static aN(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 685
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 686
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 688
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 689
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    const-string v2, "bootScript"

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 690
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    sget v3, Lccc71/pmw/lib/g;->n:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 691
    sget-object v3, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    sget v4, Lccc71/pmw/lib/g;->o:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 692
    sget-object v4, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    sget v5, Lccc71/pmw/lib/g;->av:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 693
    sget-object v5, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    sget v6, Lccc71/pmw/lib/g;->X:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 694
    sget-object v6, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    sget v7, Lccc71/pmw/lib/g;->a:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 696
    sget-object v7, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 697
    sget v8, Lccc71/pmw/lib/g;->n:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_2

    if-eqz v2, :cond_1

    const-string v0, "2"

    :goto_0
    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 698
    sget v0, Lccc71/pmw/lib/g;->o:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    const-string v0, "2"

    :goto_1
    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 699
    sget v0, Lccc71/pmw/lib/g;->av:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_6

    if-eqz v2, :cond_5

    const-string v0, "2"

    :goto_2
    invoke-interface {v7, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 700
    sget v0, Lccc71/pmw/lib/g;->X:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_8

    if-eqz v2, :cond_7

    const-string v0, "2"

    :goto_3
    invoke-interface {v7, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 701
    sget v0, Lccc71/pmw/lib/g;->a:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v6, :cond_a

    if-eqz v2, :cond_9

    const-string v0, "2"

    :goto_4
    invoke-interface {v7, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 702
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    invoke-virtual {v0, v7}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 703
    return-void

    .line 697
    :cond_1
    const-string v0, "1"

    goto :goto_0

    :cond_2
    const-string v0, "0"

    goto :goto_0

    .line 698
    :cond_3
    const-string v0, "1"

    goto :goto_1

    :cond_4
    const-string v0, "0"

    goto :goto_1

    .line 699
    :cond_5
    const-string v0, "1"

    goto :goto_2

    :cond_6
    const-string v0, "0"

    goto :goto_2

    .line 700
    :cond_7
    const-string v0, "1"

    goto :goto_3

    :cond_8
    const-string v0, "0"

    goto :goto_3

    .line 701
    :cond_9
    const-string v0, "1"

    goto :goto_4

    :cond_a
    const-string v0, "0"

    goto :goto_4
.end method

.method static aa(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 862
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 863
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 865
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ab(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 870
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 871
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 873
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    sget v1, Lccc71/pmw/lib/g;->Z:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static ac(Landroid/content/Context;)I
    .locals 4
    .parameter

    .prologue
    .line 903
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 904
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 906
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->ct:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static ad(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 922
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 923
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 925
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->az:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ae(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 940
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 941
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 943
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aB:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static af(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 948
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 949
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 951
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ai:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ag(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 956
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 957
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 959
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ag:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ah(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 964
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 965
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 967
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static ai(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 972
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    :goto_0
    return v0

    .line 975
    :cond_0
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 976
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 978
    :cond_1
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->ak:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static aj(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 983
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 984
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 986
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aa:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ak(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 991
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 992
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 994
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ao:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static al(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 999
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1005
    :goto_0
    return v0

    .line 1002
    :cond_0
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 1003
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1005
    :cond_1
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aq:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static am(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1010
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    :goto_0
    return v0

    .line 1013
    :cond_0
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 1014
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1016
    :cond_1
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->af:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static an(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 1021
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    const/4 v0, 0x0

    .line 1027
    :goto_0
    return v0

    .line 1024
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 1025
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1027
    :cond_1
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->K:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static ao(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1032
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-static {v1}, Lccc71/utils/ac;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return v0

    .line 1035
    :cond_1
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 1036
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1038
    :cond_2
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->ac:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static ap(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1043
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1049
    :goto_0
    return v0

    .line 1046
    :cond_0
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 1047
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1049
    :cond_1
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->ah:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static aq(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1054
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1060
    :goto_0
    return v0

    .line 1057
    :cond_0
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 1058
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1060
    :cond_1
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->am:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static ar(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1065
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    :goto_0
    return v0

    .line 1068
    :cond_0
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 1069
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1071
    :cond_1
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->ad:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static as(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 1076
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1077
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1079
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->F:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static at(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 1104
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1105
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1107
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->x:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static au(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 1112
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1113
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1115
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aC:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static av(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 1120
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static aw(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 1126
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1127
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1129
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ax:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static ax(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 1134
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1135
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1137
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aD:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static ay(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 1142
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1143
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1145
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aA:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static az(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1250
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1251
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1253
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aM:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#FFAAAAFF"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static b(IF)F
    .locals 2
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x4120

    .line 1944
    packed-switch p0, :pswitch_data_0

    .line 1953
    :goto_0
    return p1

    .line 1949
    :pswitch_0
    mul-float v0, p1, v1

    float-to-int v0, v0

    .line 1950
    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0x140

    int-to-float v0, v0

    div-float p1, v0, v1

    goto :goto_0

    .line 1952
    :pswitch_1
    mul-float v0, p1, v1

    float-to-int v0, v0

    .line 1953
    add-int/lit16 v0, v0, 0xaab

    int-to-float v0, v0

    div-float p1, v0, v1

    goto :goto_0

    .line 1944
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static b(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 888
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 889
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 891
    :cond_0
    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    .line 892
    const/4 p1, 0x0

    .line 894
    :cond_1
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 895
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 896
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 898
    return p1
.end method

.method public static b(Landroid/content/Context;F)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4120

    .line 1913
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aL(Landroid/content/Context;)I

    move-result v0

    .line 1914
    packed-switch v0, :pswitch_data_0

    .line 1917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u00baC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1923
    :goto_0
    return-object v0

    .line 1919
    :pswitch_0
    mul-float v0, p1, v2

    float-to-int v0, v0

    .line 1920
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0x140

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u00baF"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1922
    :pswitch_1
    mul-float v0, p1, v2

    float-to-int v0, v0

    .line 1923
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit16 v0, v0, 0xaab

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u00baK"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1914
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b()V
    .locals 0

    .prologue
    .line 3442
    return-void
.end method

.method static b(Landroid/content/Context;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1293
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1294
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1296
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aT:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1298
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1299
    return-void
.end method

.method public static b(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1468
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1469
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1471
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->be:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1473
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1474
    return-void
.end method

.method static b(Landroid/content/Context;IZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1737
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1738
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1740
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->bb:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1742
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1743
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 878
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 879
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 881
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 882
    sget v1, Lccc71/pmw/lib/g;->Z:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 883
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 884
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1841
    new-instance v0, Lccc71/pmw/lib/mf;

    invoke-direct {v0, p0, p1}, Lccc71/pmw/lib/mf;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1849
    invoke-virtual {v0}, Lccc71/pmw/lib/mf;->start()V

    .line 1850
    return-void
.end method

.method static b(Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 930
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 931
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 933
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 934
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aB:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 935
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 936
    return-void
.end method

.method private b(Landroid/preference/ListPreference;)V
    .locals 2
    .parameter

    .prologue
    .line 2798
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2799
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 2800
    :cond_0
    new-instance v0, Lccc71/pmw/lib/mk;

    invoke-direct {v0, p0, p1}, Lccc71/pmw/lib/mk;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/ListPreference;)V

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2821
    return-void
.end method

.method private b(Landroid/preference/Preference;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 4067
    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    .line 4069
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->cA:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4070
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/high16 v2, -0x1

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4071
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 4077
    :goto_0
    return-void

    .line 4075
    :cond_0
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->cy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b(Landroid/preference/PreferenceScreen;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 2825
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->E:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 2826
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->z:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 2827
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->A:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 2828
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->B:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    .line 2829
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lccc71/pmw/lib/g;->D:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 2830
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lccc71/pmw/lib/g;->C:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    .line 2832
    sget-boolean v6, Lccc71/pmw/b/h;->c:Z

    if-eqz v6, :cond_0

    .line 2834
    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/preference/ListPreference;)V

    .line 2835
    invoke-direct {p0, v1}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/preference/ListPreference;)V

    .line 2836
    invoke-direct {p0, v2}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/preference/ListPreference;)V

    .line 2837
    invoke-direct {p0, v3}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/preference/ListPreference;)V

    .line 2838
    invoke-direct {p0, v4}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/preference/ListPreference;)V

    .line 2856
    :goto_0
    return-void

    .line 2842
    :cond_0
    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2843
    sget v6, Lccc71/pmw/lib/g;->eJ:I

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 2844
    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2845
    sget v0, Lccc71/pmw/lib/g;->eJ:I

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 2846
    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2847
    sget v0, Lccc71/pmw/lib/g;->eJ:I

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 2848
    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2849
    sget v0, Lccc71/pmw/lib/g;->eJ:I

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 2850
    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2851
    sget v0, Lccc71/pmw/lib/g;->eJ:I

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 2852
    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2853
    sget v0, Lccc71/pmw/lib/g;->eJ:I

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4065
    invoke-direct {p0, p1, p2}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3194
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 120
    invoke-static {p0}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    invoke-static {p0}, Lccc71/pmw/lib/pmw_notif_scheduler;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->A(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->Y(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->Z(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    .line 127
    :goto_1
    if-nez v2, :cond_0

    move v0, v1

    .line 130
    goto :goto_0

    :cond_2
    move v2, v0

    .line 126
    goto :goto_1
.end method

.method public static c(IF)F
    .locals 2
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x4120

    .line 1959
    packed-switch p0, :pswitch_data_0

    .line 1967
    :goto_0
    return p1

    .line 1964
    :pswitch_0
    mul-float v0, p1, v1

    float-to-int v0, v0

    .line 1965
    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0x140

    int-to-float v0, v0

    div-float p1, v0, v1

    goto :goto_0

    .line 1967
    :pswitch_1
    const v0, 0x452ab000

    add-float/2addr v0, p1

    div-float p1, v0, v1

    goto :goto_0

    .line 1959
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lccc71/pmw/lib/pmw_settings;->e:I

    return v0
.end method

.method public static c(Landroid/content/Context;)Lccc71/pmw/b/f;
    .locals 3
    .parameter

    .prologue
    .line 135
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 138
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->k:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Lccc71/pmw/b/f;

    invoke-direct {v1, v0}, Lccc71/pmw/b/f;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method static c(Landroid/content/Context;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1150
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1151
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1153
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aM:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1155
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1156
    return-void
.end method

.method static c(Landroid/content/Context;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1438
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1439
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1441
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aN:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1443
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1444
    return-void
.end method

.method static c(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1565
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1566
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1568
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1570
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1571
    return-void
.end method

.method static synthetic c(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1803
    const-string v0, ""

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    :cond_1
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->w:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_0
.end method

.method static c(Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1084
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1085
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1087
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1088
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->F:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1089
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1090
    return-void
.end method

.method private c(Landroid/preference/Preference;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 4081
    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    .line 4083
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->cA:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4084
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/16 v2, -0x100

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4085
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 4091
    :goto_0
    return-void

    .line 4089
    :cond_0
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->cz:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private c(Landroid/preference/PreferenceScreen;)V
    .locals 12
    .parameter

    .prologue
    .line 2860
    new-instance v3, Lccc71/pmw/a/ah;

    const/4 v0, 0x1

    invoke-direct {v3, p0, v0}, Lccc71/pmw/a/ah;-><init>(Landroid/content/Context;Z)V

    .line 2861
    sget-boolean v2, Lccc71/pmw/a/ah;->j:Z

    .line 2862
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2863
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v4, 0x1

    .line 2865
    :goto_0
    invoke-virtual {v3}, Lccc71/pmw/a/ah;->f()[I

    move-result-object v1

    .line 2866
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    .line 2867
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    .line 2868
    const/4 v0, 0x0

    const-string v5, "No frequency changes"

    aput-object v5, v8, v0

    .line 2869
    const/4 v0, 0x0

    const-string v5, "0"

    aput-object v5, v9, v0

    .line 2871
    array-length v5, v1

    .line 2872
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v5, :cond_7

    .line 2878
    invoke-virtual {v3}, Lccc71/pmw/a/ah;->e()[Ljava/lang/String;

    move-result-object v0

    .line 2879
    if-nez v0, :cond_0

    .line 2880
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 2881
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 2882
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    .line 2883
    const/4 v1, 0x0

    const-string v6, "No governor changes"

    aput-object v6, v5, v1

    .line 2884
    const/4 v1, 0x0

    const-string v6, ""

    aput-object v6, v7, v1

    .line 2885
    array-length v6, v0

    .line 2886
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v6, :cond_8

    .line 2892
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->u:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/preference/ListPreference;

    .line 2893
    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2894
    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2895
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2896
    :cond_1
    const-string v0, ""

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2897
    :cond_2
    new-instance v0, Lccc71/pmw/lib/ml;

    invoke-direct {v0, p0, v3, v2}, Lccc71/pmw/lib/ml;-><init>(Lccc71/pmw/lib/pmw_settings;Lccc71/pmw/a/ah;Z)V

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2924
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->r:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    .line 2925
    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2926
    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2928
    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 2929
    const-string v0, ""

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2931
    :cond_3
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/preference/ListPreference;

    .line 2932
    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2933
    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2934
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->A(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 2936
    if-nez v2, :cond_9

    if-eqz v4, :cond_9

    .line 2938
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2949
    :goto_3
    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 2950
    const-string v0, ""

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2951
    :cond_4
    new-instance v0, Lccc71/pmw/lib/mm;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lccc71/pmw/lib/mm;-><init>(Lccc71/pmw/lib/pmw_settings;ZLccc71/pmw/a/ah;ZLandroid/preference/ListPreference;)V

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2984
    if-eqz v2, :cond_b

    .line 2986
    sget v0, Lccc71/pmw/lib/g;->fq:I

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 2993
    :goto_4
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-nez v0, :cond_5

    .line 2995
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2996
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->cq:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2997
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2998
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->cq:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2999
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 3000
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->cq:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3002
    :cond_5
    return-void

    .line 2863
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2874
    :cond_7
    add-int/lit8 v6, v0, 0x1

    aget v7, v1, v0

    invoke-static {v7}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    .line 2875
    add-int/lit8 v6, v0, 0x1

    aget v7, v1, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v6

    .line 2872
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2888
    :cond_8
    add-int/lit8 v10, v1, 0x1

    aget-object v11, v0, v1

    aput-object v11, v5, v10

    .line 2889
    add-int/lit8 v10, v1, 0x1

    aget-object v11, v0, v1

    aput-object v11, v7, v10

    .line 2886
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 2942
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 2947
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 2990
    :cond_b
    sget v0, Lccc71/pmw/lib/g;->cd:I

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_4
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4051
    invoke-direct {p0, p1, p2}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3263
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_settings;->g(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)I
    .locals 4
    .parameter

    .prologue
    .line 157
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/16 v0, 0xa

    .line 165
    :goto_0
    return v0

    .line 160
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 163
    :cond_1
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->cp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static d(Landroid/content/Context;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1170
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1171
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1173
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aH:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1175
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1176
    return-void
.end method

.method static d(Landroid/content/Context;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1448
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1449
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1451
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aY:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1453
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1454
    return-void
.end method

.method static d(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1584
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1585
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1587
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aP:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1589
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1590
    return-void
.end method

.method static synthetic d(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1852
    const-string v0, ""

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    :cond_1
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->M:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_0
.end method

.method static d(Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1094
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1095
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1097
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1098
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->x:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1099
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1100
    return-void
.end method

.method private d(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 3006
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3008
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->K:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 3009
    if-eqz v0, :cond_0

    .line 3011
    new-instance v1, Lccc71/pmw/lib/mn;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/mn;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 3021
    new-instance v1, Lccc71/pmw/lib/mo;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/mo;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 3108
    :cond_0
    :goto_0
    return-void

    .line 3036
    :cond_1
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->K:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 3037
    if-eqz v0, :cond_0

    .line 3039
    new-instance v1, Lccc71/pmw/lib/mp;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/mp;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 3066
    new-instance v1, Lccc71/pmw/lib/mr;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/mr;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3575
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->W:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->V:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->i:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    new-instance v1, Lccc71/pmw/lib/nt;

    invoke-direct {v1, p0, p1}, Lccc71/pmw/lib/nt;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method public static e(Landroid/content/Context;)F
    .locals 3
    .parameter

    .prologue
    const/high16 v0, 0x41a0

    .line 170
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v1

    .line 172
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 175
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static e(Landroid/content/Context;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1180
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1181
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1183
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1184
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->L:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1185
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1186
    return-void
.end method

.method static e(Landroid/content/Context;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1502
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1503
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1505
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aU:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1507
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1508
    return-void
.end method

.method static e(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1603
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1604
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1606
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->bh:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1608
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1609
    return-void
.end method

.method private e(Landroid/preference/PreferenceScreen;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3112
    invoke-static {}, Lccc71/pmw/a/ah;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3114
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->ag:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 3115
    if-eqz v0, :cond_0

    .line 3117
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 3118
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3122
    sget v1, Lccc71/pmw/lib/g;->cn:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 3126
    :cond_0
    invoke-static {}, Lccc71/pmw/a/ah;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3128
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->ap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 3129
    if-eqz v0, :cond_1

    .line 3131
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 3132
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3136
    sget v1, Lccc71/pmw/lib/g;->cn:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 3140
    :cond_1
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3142
    const/4 v0, 0x5

    invoke-static {v0}, Lccc71/utils/ac;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3144
    const-string v0, "process_monitor_widget"

    const-string v1, "SDK Version < 5: No Bluetooth"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->ac:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 3146
    if-eqz v0, :cond_2

    .line 3148
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 3149
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3153
    sget v1, Lccc71/pmw/lib/g;->cn:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 3157
    :cond_2
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3158
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-nez v0, :cond_6

    .line 3160
    :cond_3
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->am:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 3161
    if-eqz v0, :cond_4

    .line 3163
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 3164
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3168
    sget v1, Lccc71/pmw/lib/g;->cn:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 3170
    :cond_4
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->ad:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 3171
    if-eqz v0, :cond_5

    .line 3173
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 3174
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3178
    sget v1, Lccc71/pmw/lib/g;->cn:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 3180
    :cond_5
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->af:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 3181
    if-eqz v0, :cond_6

    .line 3183
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 3184
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3188
    sget v1, Lccc71/pmw/lib/g;->cn:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 3192
    :cond_6
    return-void
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3446
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_settings;->j(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)F
    .locals 4
    .parameter

    .prologue
    .line 180
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 183
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->cf:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 193
    :pswitch_0
    const/high16 v0, 0x4180

    .line 201
    :goto_0
    return v0

    .line 189
    :pswitch_1
    const/high16 v0, 0x4140

    goto :goto_0

    .line 191
    :pswitch_2
    const/high16 v0, 0x4160

    goto :goto_0

    .line 195
    :pswitch_3
    const/high16 v0, 0x4190

    goto :goto_0

    .line 197
    :pswitch_4
    const/high16 v0, 0x41a0

    goto :goto_0

    .line 199
    :pswitch_5
    const/high16 v0, 0x41c8

    goto :goto_0

    .line 201
    :pswitch_6
    const/high16 v0, 0x41f0

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static f(Landroid/content/Context;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1190
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1191
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1193
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1194
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->l:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1195
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1196
    return-void
.end method

.method static f(Landroid/content/Context;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1520
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1521
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1523
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aV:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1525
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1526
    return-void
.end method

.method static f(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1622
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1623
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1625
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aQ:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1627
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1628
    return-void
.end method

.method private f(Landroid/preference/PreferenceScreen;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3196
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->aL:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3197
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->cD:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3198
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aD(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v2, v4, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3199
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3200
    new-instance v1, Lccc71/pmw/lib/mt;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/mt;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;)V

    .line 3211
    new-instance v2, Lccc71/pmw/lib/mu;

    invoke-direct {v2, p0, v1}, Lccc71/pmw/lib/mu;-><init>(Lccc71/pmw/lib/pmw_settings;Lccc71/utils/r;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 3222
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3223
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->cu:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3224
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aC(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v2, v4, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3225
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3226
    new-instance v1, Lccc71/pmw/lib/mv;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/mv;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;)V

    .line 3237
    new-instance v2, Lccc71/pmw/lib/mw;

    invoke-direct {v2, p0, v1}, Lccc71/pmw/lib/mw;-><init>(Lccc71/pmw/lib/pmw_settings;Lccc71/utils/r;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 3249
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-nez v0, :cond_0

    .line 3251
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->at:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 3252
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 3253
    sget v1, Lccc71/pmw/lib/g;->eJ:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 3254
    sget v1, Lccc71/pmw/lib/g;->eJ:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 3256
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 3257
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 3258
    sget v1, Lccc71/pmw/lib/g;->eJ:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 3259
    sget v1, Lccc71/pmw/lib/g;->eJ:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 3261
    :cond_0
    return-void
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3407
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_settings;->i(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method public static g(Landroid/content/Context;)F
    .locals 3
    .parameter

    .prologue
    .line 207
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 210
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aK:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 221
    :pswitch_0
    const/high16 v0, 0x4180

    .line 229
    :goto_0
    return v0

    .line 215
    :pswitch_1
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v0

    goto :goto_0

    .line 217
    :pswitch_2
    const/high16 v0, 0x4140

    goto :goto_0

    .line 219
    :pswitch_3
    const/high16 v0, 0x4160

    goto :goto_0

    .line 223
    :pswitch_4
    const/high16 v0, 0x4190

    goto :goto_0

    .line 225
    :pswitch_5
    const/high16 v0, 0x41a0

    goto :goto_0

    .line 227
    :pswitch_6
    const/high16 v0, 0x41c8

    goto :goto_0

    .line 229
    :pswitch_7
    const/high16 v0, 0x41f0

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static g(Landroid/content/Context;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1200
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1201
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1203
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aL:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1205
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1206
    return-void
.end method

.method static g(Landroid/content/Context;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1538
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1539
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1541
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aO:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1543
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1544
    return-void
.end method

.method static g(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1641
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1642
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1644
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aR:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1646
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1647
    return-void
.end method

.method private g(Landroid/preference/PreferenceScreen;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3265
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->Q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3266
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->ci:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3267
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aE(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v2, v4, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3268
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3269
    new-instance v1, Lccc71/pmw/lib/mx;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/mx;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;)V

    .line 3280
    new-instance v2, Lccc71/pmw/lib/my;

    invoke-direct {v2, p0, v1}, Lccc71/pmw/lib/my;-><init>(Lccc71/pmw/lib/pmw_settings;Lccc71/utils/r;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 3291
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->N:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3292
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->cg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3293
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aF(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v2, v4, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3294
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3295
    new-instance v1, Lccc71/pmw/lib/mz;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/mz;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;)V

    .line 3306
    new-instance v2, Lccc71/pmw/lib/na;

    invoke-direct {v2, p0, v1}, Lccc71/pmw/lib/na;-><init>(Lccc71/pmw/lib/pmw_settings;Lccc71/utils/r;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 3317
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->S:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3318
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->cj:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3319
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aG(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v2, v4, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3320
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3321
    new-instance v1, Lccc71/pmw/lib/nb;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/nb;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;)V

    .line 3332
    new-instance v2, Lccc71/pmw/lib/nd;

    invoke-direct {v2, p0, v1}, Lccc71/pmw/lib/nd;-><init>(Lccc71/pmw/lib/pmw_settings;Lccc71/utils/r;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 3343
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->O:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3344
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->ch:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3345
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aH(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v2, v4, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3346
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3347
    new-instance v1, Lccc71/pmw/lib/ne;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/ne;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;)V

    .line 3358
    new-instance v2, Lccc71/pmw/lib/nf;

    invoke-direct {v2, p0, v1}, Lccc71/pmw/lib/nf;-><init>(Lccc71/pmw/lib/pmw_settings;Lccc71/utils/r;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 3368
    return-void
.end method

.method static synthetic g(Lccc71/pmw/lib/pmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3004
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_settings;->d(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method public static h(Landroid/content/Context;)F
    .locals 3
    .parameter

    .prologue
    .line 235
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 238
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->P:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 249
    :pswitch_0
    const/high16 v0, 0x4180

    .line 257
    :goto_0
    return v0

    .line 243
    :pswitch_1
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v0

    goto :goto_0

    .line 245
    :pswitch_2
    const/high16 v0, 0x4140

    goto :goto_0

    .line 247
    :pswitch_3
    const/high16 v0, 0x4160

    goto :goto_0

    .line 251
    :pswitch_4
    const/high16 v0, 0x4190

    goto :goto_0

    .line 253
    :pswitch_5
    const/high16 v0, 0x41a0

    goto :goto_0

    .line 255
    :pswitch_6
    const/high16 v0, 0x41c8

    goto :goto_0

    .line 257
    :pswitch_7
    const/high16 v0, 0x41f0

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static h(Landroid/content/Context;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1210
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1211
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1213
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1214
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->Q:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1215
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1216
    return-void
.end method

.method static h(Landroid/content/Context;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1689
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1690
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1692
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1693
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/pmw/lib/g;->aW:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1694
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1695
    return-void
.end method

.method static h(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1660
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1661
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1663
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->bd:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1665
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1666
    return-void
.end method

.method private h(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 3372
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3374
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->ar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3375
    if-eqz v0, :cond_0

    .line 3377
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->d(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lccc71/pmw/lib/pmw_settings;->c(Landroid/preference/Preference;I)V

    .line 3378
    new-instance v1, Lccc71/pmw/lib/ng;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/ng;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 3405
    :cond_0
    return-void
.end method

.method static synthetic h(Lccc71/pmw/lib/pmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3110
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_settings;->e(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method static i(Landroid/content/Context;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1220
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1221
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1223
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1224
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->S:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1225
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1226
    return-void
.end method

.method static i(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1679
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1680
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1682
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->ba:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1684
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1685
    return-void
.end method

.method private i(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 3409
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->as:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3410
    new-instance v1, Lccc71/pmw/lib/nh;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/nh;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 3440
    return-void
.end method

.method static synthetic i(Lccc71/pmw/lib/pmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2383
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 263
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    :goto_0
    return v0

    .line 266
    :cond_0
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 269
    :cond_1
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->g:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static j(Landroid/content/Context;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1230
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1231
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1233
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1234
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->N:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1235
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1236
    return-void
.end method

.method private j(Landroid/preference/PreferenceScreen;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3448
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->aM:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3449
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->cE:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3450
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->az(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v2, v4, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3451
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3452
    new-instance v1, Lccc71/pmw/lib/nj;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/nj;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;)V

    .line 3463
    new-instance v2, Lccc71/pmw/lib/nk;

    invoke-direct {v2, p0, v1}, Lccc71/pmw/lib/nk;-><init>(Lccc71/pmw/lib/pmw_settings;Lccc71/utils/r;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 3474
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->aH:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3475
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->cC:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3476
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aA(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v2, v4, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3477
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3478
    new-instance v1, Lccc71/pmw/lib/nl;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/nl;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;)V

    .line 3489
    new-instance v2, Lccc71/pmw/lib/nm;

    invoke-direct {v2, p0, v1}, Lccc71/pmw/lib/nm;-><init>(Lccc71/pmw/lib/pmw_settings;Lccc71/utils/r;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 3500
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->L:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3501
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->cw:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3502
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aB(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v2, v4, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3503
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3504
    new-instance v1, Lccc71/pmw/lib/nn;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/nn;-><init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;)V

    .line 3515
    new-instance v2, Lccc71/pmw/lib/np;

    invoke-direct {v2, p0, v1}, Lccc71/pmw/lib/np;-><init>(Lccc71/pmw/lib/pmw_settings;Lccc71/utils/r;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 3525
    return-void
.end method

.method static synthetic j(Lccc71/pmw/lib/pmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2823
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 274
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    :goto_0
    return v0

    .line 277
    :cond_0
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 280
    :cond_1
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->at:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static k(Landroid/content/Context;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1240
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1241
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1243
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1244
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->O:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1245
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1246
    return-void
.end method

.method private k(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 3529
    sget v0, Lccc71/pmw/lib/g;->Z:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3530
    new-instance v1, Lccc71/pmw/lib/nq;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/nq;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 3542
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3544
    sget v0, Lccc71/pmw/lib/g;->Y:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3545
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->x(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/preference/Preference;I)V

    .line 3546
    new-instance v1, Lccc71/pmw/lib/nr;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/nr;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 3559
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3560
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->w(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/preference/Preference;I)V

    .line 3561
    new-instance v1, Lccc71/pmw/lib/ns;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/ns;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 3573
    :cond_0
    return-void
.end method

.method static synthetic k(Lccc71/pmw/lib/pmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2858
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_settings;->c(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 285
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 288
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->V:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static l(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1258
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1259
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1261
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/pmw/lib/g;->aS:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1263
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic l(Lccc71/pmw/lib/pmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3527
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_settings;->k(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 293
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 296
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->h:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static m(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1278
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1279
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1283
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->bf:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#00000000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1287
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 301
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 304
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->i:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static n(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1303
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1304
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1308
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aT:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#FF00A9FF"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1312
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 309
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 312
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->W:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static o(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 317
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 320
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->T:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "8"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static o(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1458
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1459
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1461
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->be:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1463
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static p(Landroid/content/Context;)F
    .locals 3
    .parameter

    .prologue
    .line 325
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 328
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->U:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 337
    :pswitch_0
    const/high16 v0, 0x4180

    .line 345
    :goto_0
    return v0

    .line 333
    :pswitch_1
    const/high16 v0, 0x4140

    goto :goto_0

    .line 335
    :pswitch_2
    const/high16 v0, 0x4160

    goto :goto_0

    .line 339
    :pswitch_3
    const/high16 v0, 0x4190

    goto :goto_0

    .line 341
    :pswitch_4
    const/high16 v0, 0x41a0

    goto :goto_0

    .line 343
    :pswitch_5
    const/high16 v0, 0x41c8

    goto :goto_0

    .line 345
    :pswitch_6
    const/high16 v0, 0x41f0

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static p(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1478
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1479
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1481
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aN:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static q(Landroid/content/Context;)I
    .locals 4
    .parameter

    .prologue
    .line 351
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const/16 v0, 0x258

    .line 359
    :goto_0
    return v0

    .line 354
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 357
    :cond_1
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->an:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->co:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 357
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static q(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1494
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1495
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1497
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aY:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static r(Landroid/content/Context;)F
    .locals 3
    .parameter

    .prologue
    .line 374
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 377
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->G:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static r(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1512
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1513
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1515
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aU:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static s(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 382
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->q(Landroid/content/Context;)I

    move-result v0

    .line 383
    sparse-switch v0, :sswitch_data_0

    .line 387
    const/16 v0, 0xe10

    .line 396
    :goto_0
    return v0

    .line 389
    :sswitch_0
    const/16 v0, 0x5460

    goto :goto_0

    .line 391
    :sswitch_1
    const v0, 0xa8c0

    goto :goto_0

    .line 393
    :sswitch_2
    const v0, 0xfd20

    goto :goto_0

    .line 396
    :sswitch_3
    const v0, 0x15180

    goto :goto_0

    .line 383
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x258 -> :sswitch_1
        0x384 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_3
    .end sparse-switch
.end method

.method public static s(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1530
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1531
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1533
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aV:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static t(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1548
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1549
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1551
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aO:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 402
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 405
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->aj:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->cm:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1556
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1557
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1559
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1560
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 411
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 414
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->R:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 415
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->ck:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 414
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static v(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1575
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1576
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1578
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aP:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1579
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 420
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 421
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 423
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->j:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->cc:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static w(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 429
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    const/16 v0, 0x3c

    .line 437
    :goto_0
    return v0

    .line 432
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 433
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 435
    :cond_1
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->bc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "60"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1594
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1595
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1597
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->bh:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1598
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static x(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 442
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    const/16 v0, 0xa

    .line 450
    :goto_0
    return v0

    .line 445
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 446
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 448
    :cond_1
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->Y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "5"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static x(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1613
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1614
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1616
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aQ:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "5"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1617
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static y(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1632
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1633
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1635
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->aR:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1636
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static y(Landroid/content/Context;)Lccc71/pmw/a/ac;
    .locals 4
    .parameter

    .prologue
    .line 455
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 456
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 458
    :cond_0
    new-instance v0, Lccc71/pmw/a/ac;

    sget-object v1, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->t:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccc71/pmw/a/ac;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static z(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 488
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 489
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 491
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->r:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static z(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1651
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1652
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    .line 1654
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_settings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->bd:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1655
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method final aM(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    .line 4172
    new-instance v2, Lccc71/utils/t;

    invoke-direct {v2, p0}, Lccc71/utils/t;-><init>(Landroid/content/Context;)V

    .line 4173
    new-instance v5, Lccc71/pmw/a/ah;

    const/4 v0, 0x1

    invoke-direct {v5, p1, v0}, Lccc71/pmw/a/ah;-><init>(Landroid/content/Context;Z)V

    .line 4175
    new-instance v6, Lccc71/pmw/a/ar;

    invoke-direct {v6}, Lccc71/pmw/a/ar;-><init>()V

    .line 4176
    new-instance v7, Lccc71/pmw/a/as;

    invoke-direct {v7}, Lccc71/pmw/a/as;-><init>()V

    .line 4177
    new-instance v8, Lccc71/pmw/a/aq;

    invoke-direct {v8}, Lccc71/pmw/a/aq;-><init>()V

    .line 4178
    new-instance v4, Lccc71/pmw/b/z;

    invoke-direct {v4}, Lccc71/pmw/b/z;-><init>()V

    .line 4180
    new-instance v0, Lccc71/pmw/lib/nx;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lccc71/pmw/lib/nx;-><init>(Lccc71/pmw/lib/pmw_settings;Lccc71/utils/t;Landroid/content/Context;Lccc71/pmw/b/z;Lccc71/pmw/a/ah;Lccc71/pmw/a/ar;Lccc71/pmw/a/as;Lccc71/pmw/a/aq;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 4289
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/nx;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 4290
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 3767
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3768
    const-string v1, "ccc71.pmw.current_widget_id"

    sget v2, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lccc71/pmw/lib/pmw_settings;->e:I

    .line 3769
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading headers for Widget ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    sget v0, Lccc71/pmw/lib/pmw_settings;->e:I

    if-ne v0, v4, :cond_0

    .line 3772
    invoke-static {}, Lccc71/pmw/lib/pmw_widget;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 3773
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3774
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lccc71/pmw/lib/pmw_settings;->e:I

    .line 3777
    :cond_0
    iput-object p1, p0, Lccc71/pmw/lib/pmw_settings;->f:Ljava/util/List;

    .line 3779
    sget v0, Lccc71/pmw/lib/i;->d:I

    invoke-static {p0, v0, p1}, Lccc71/utils/android/l;->b(Landroid/preference/PreferenceActivity;ILjava/util/List;)V

    .line 3781
    sget v0, Lccc71/pmw/lib/pmw_settings;->e:I

    if-eq v0, v4, :cond_1

    .line 3783
    sget v0, Lccc71/pmw/lib/g;->cr:I

    sget v1, Lccc71/pmw/lib/g;->cs:I

    const-string v2, "ccc71.pmw.lib.pmw_settings$PrefsWidget"

    invoke-static {p1, v0, v1, v2, v3}, Lccc71/utils/android/l;->b(Ljava/util/List;IILjava/lang/String;Landroid/content/Intent;)V

    .line 3790
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3791
    const-string v1, "http://www.3c71.com/android/?q=node/21#main-content-area"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3792
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3794
    sget v1, Lccc71/pmw/lib/g;->cG:I

    sget v2, Lccc71/pmw/lib/g;->cv:I

    invoke-static {p1, v1, v2, v3, v0}, Lccc71/utils/android/l;->b(Ljava/util/List;IILjava/lang/String;Landroid/content/Intent;)V

    .line 3795
    sget v0, Lccc71/pmw/lib/g;->cI:I

    sget v1, Lccc71/pmw/lib/g;->cB:I

    const-string v2, "ccc71.pmw.lib.pmw_settings$PrefsSupport"

    invoke-static {p1, v0, v1, v2, v3}, Lccc71/utils/android/l;->b(Ljava/util/List;IILjava/lang/String;Landroid/content/Intent;)V

    .line 3805
    return-void

    .line 3787
    :cond_1
    sget v0, Lccc71/pmw/lib/g;->cH:I

    sget v1, Lccc71/pmw/lib/g;->cx:I

    invoke-static {p1, v0, v1, v3, v3}, Lccc71/utils/android/l;->b(Ljava/util/List;IILjava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 3632
    iget-object v0, p0, Lccc71/pmw/lib/pmw_settings;->g:Landroid/os/Handler;

    invoke-static {p0, v0}, Lccc71/pmw/lib/gh;->a(Landroid/content/Context;Landroid/os/Handler;)Z

    .line 3634
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3635
    const-string v1, "ccc71.pmw.current_widget_id"

    sget v2, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lccc71/pmw/lib/pmw_settings;->e:I

    .line 3636
    const-string v1, "ccc71.pmw.boot_settings"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lccc71/pmw/lib/pmw_settings;->d:Z

    .line 3638
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading preference for Widget ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    sget v0, Lccc71/pmw/lib/pmw_settings;->e:I

    if-ne v0, v3, :cond_0

    .line 3641
    invoke-static {}, Lccc71/pmw/lib/pmw_widget;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 3642
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3643
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lccc71/pmw/lib/pmw_settings;->e:I

    .line 3646
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3648
    sput-object p0, Lccc71/pmw/lib/pmw_settings;->c:Lccc71/pmw/lib/pmw_settings;

    .line 3650
    sget-boolean v0, Lccc71/pmw/lib/pmw_settings;->d:Z

    if-eqz v0, :cond_3

    .line 3652
    invoke-static {p0}, Lccc71/utils/android/l;->c(Landroid/preference/PreferenceActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lccc71/utils/android/l;->d(Landroid/preference/PreferenceActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3654
    const-string v0, "process_monitor_widget"

    const-string v1, "Loading boot settings preference"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    sget v0, Lccc71/pmw/lib/i;->a:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_settings;->addPreferencesFromResource(I)V

    .line 3658
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 3659
    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/preference/PreferenceScreen;)V

    .line 3660
    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/preference/PreferenceScreen;)V

    .line 3661
    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_settings;->c(Landroid/preference/PreferenceScreen;)V

    .line 3762
    :cond_1
    :goto_0
    return-void

    .line 3663
    :cond_2
    invoke-static {p0}, Lccc71/utils/android/l;->d(Landroid/preference/PreferenceActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3665
    const-string v0, "process_monitor_widget"

    const-string v1, "Trying to switch to boot settings fragment"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3666
    iget-object v0, p0, Lccc71/pmw/lib/pmw_settings;->f:Ljava/util/List;

    const-string v1, "ccc71.pmw.lib.pmw_settings$PrefsActiveTweaks"

    invoke-static {p0, v0, v1}, Lccc71/utils/android/l;->b(Landroid/preference/PreferenceActivity;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 3669
    :cond_3
    invoke-static {p0}, Lccc71/utils/android/l;->c(Landroid/preference/PreferenceActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lccc71/utils/android/l;->d(Landroid/preference/PreferenceActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3673
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->R(Landroid/content/Context;)I

    .line 3675
    sget v0, Lccc71/pmw/lib/i;->t:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_settings;->addPreferencesFromResource(I)V

    .line 3676
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 3677
    sget v1, Lccc71/pmw/lib/pmw_settings;->e:I

    if-eq v1, v3, :cond_5

    .line 3679
    sget-object v1, Lccc71/pmw/lib/pmw_settings;->c:Lccc71/pmw/lib/pmw_settings;

    sget-object v2, Lccc71/pmw/lib/pmw_settings;->c:Lccc71/pmw/lib/pmw_settings;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v1, v2}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/SharedPreferences;)V

    .line 3681
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 3682
    if-eqz v1, :cond_4

    .line 3684
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    sget v3, Lccc71/pmw/lib/e;->by:I

    if-ne v2, v3, :cond_6

    .line 3686
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Preparing prefs for standard widgetID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    sget v2, Lccc71/pmw/lib/i;->v:I

    invoke-virtual {p0, v2}, Lccc71/pmw/lib/pmw_settings;->addPreferencesFromResource(I)V

    .line 3701
    :cond_4
    :goto_1
    invoke-direct {p0, v0, v1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/preference/PreferenceScreen;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 3704
    :cond_5
    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/preference/PreferenceScreen;)V

    .line 3705
    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/preference/PreferenceScreen;)V

    .line 3706
    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_settings;->c(Landroid/preference/PreferenceScreen;)V

    .line 3708
    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_settings;->k(Landroid/preference/PreferenceScreen;)V

    .line 3710
    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_settings;->j(Landroid/preference/PreferenceScreen;)V

    .line 3712
    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_settings;->i(Landroid/preference/PreferenceScreen;)V

    .line 3716
    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/preference/PreferenceScreen;)V

    .line 3718
    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_settings;->h(Landroid/preference/PreferenceScreen;)V

    .line 3720
    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_settings;->d(Landroid/preference/PreferenceScreen;)V

    .line 3722
    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_settings;->e(Landroid/preference/PreferenceScreen;)V

    .line 3724
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_settings;->g(Landroid/preference/PreferenceScreen;)V

    .line 3726
    sget v0, Lccc71/pmw/lib/i;->u:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_settings;->addPreferencesFromResource(I)V

    .line 3728
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->H:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3729
    new-instance v1, Lccc71/pmw/lib/nu;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/nu;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 3746
    sget v0, Lccc71/pmw/lib/g;->aF:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3747
    if-eqz v0, :cond_1

    .line 3749
    new-instance v1, Lccc71/pmw/lib/nv;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/nv;-><init>(Lccc71/pmw/lib/pmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    .line 3689
    :cond_6
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    sget v3, Lccc71/pmw/lib/e;->bz:I

    if-ne v2, v3, :cond_7

    .line 3691
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Preparing prefs for wide widgetID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    sget v2, Lccc71/pmw/lib/i;->w:I

    invoke-virtual {p0, v2}, Lccc71/pmw/lib/pmw_settings;->addPreferencesFromResource(I)V

    goto :goto_1

    .line 3694
    :cond_7
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    sget v3, Lccc71/pmw/lib/e;->bC:I

    if-ne v2, v3, :cond_4

    .line 3696
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Preparing prefs for graphic widgetID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lccc71/pmw/lib/pmw_settings;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    sget v2, Lccc71/pmw/lib/i;->x:I

    invoke-virtual {p0, v2}, Lccc71/pmw/lib/pmw_settings;->addPreferencesFromResource(I)V

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 4096
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_settings;->b:Z

    if-eqz v0, :cond_0

    .line 4098
    new-instance v0, Lccc71/pmw/a/ah;

    invoke-direct {v0}, Lccc71/pmw/a/ah;-><init>()V

    .line 4099
    invoke-virtual {v0}, Lccc71/pmw/a/ah;->g()Ljava/lang/String;

    move-result-object v1

    .line 4100
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->C(Landroid/content/Context;)I

    move-result v2

    .line 4101
    new-instance v3, Lccc71/pmw/lib/nw;

    invoke-direct {v3, p0, v1, v0, v2}, Lccc71/pmw/lib/nw;-><init>(Lccc71/pmw/lib/pmw_settings;Ljava/lang/String;Lccc71/pmw/a/ah;I)V

    .line 4133
    invoke-virtual {v3}, Lccc71/pmw/lib/nw;->start()V

    .line 4135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_settings;->b:Z

    .line 4137
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 4138
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4143
    sget v0, Lccc71/pmw/lib/pmw_settings;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4144
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/content/Context;Z)V

    .line 4146
    :cond_0
    invoke-static {p0}, Lccc71/pmw/lib/pmw_widget_scheduler;->b(Landroid/content/Context;)V

    .line 4147
    invoke-static {p0}, Lccc71/pmw/lib/pmw_notif_scheduler;->b(Landroid/content/Context;)V

    .line 4148
    invoke-static {p0}, Lccc71/pmw/lib/pmw_watcher;->c(Landroid/content/Context;)V

    .line 4150
    invoke-static {p0, v2}, Lccc71/pmw/lib/pmw_booter_service;->a(Landroid/content/Context;Z)Z

    .line 4151
    invoke-static {p0, v2}, Lccc71/pmw/lib/pmw_user_present_service;->a(Landroid/content/Context;Z)Z

    .line 4153
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 4154
    return-void
.end method
