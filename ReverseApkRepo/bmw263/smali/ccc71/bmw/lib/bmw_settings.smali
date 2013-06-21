.class public Lccc71/bmw/lib/bmw_settings;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# static fields
.field protected static a:Lccc71/bmw/lib/bmw_settings;

.field protected static b:Landroid/content/SharedPreferences;

.field protected static c:I

.field private static d:Lccc71/bmw/data/a;


# instance fields
.field private e:Z

.field private f:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    sput-object v0, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    .line 55
    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 57
    sput-object v0, Lccc71/bmw/lib/bmw_settings;->d:Lccc71/bmw/data/a;

    .line 61
    const/4 v0, 0x0

    sput v0, Lccc71/bmw/lib/bmw_settings;->c:I

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 474
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 475
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 477
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->f:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3500"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 485
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0xdac

    goto :goto_0
.end method

.method public static B(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 491
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 492
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 494
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->I:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static C(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 499
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 500
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 502
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->h:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static D(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 507
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 508
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 510
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->d:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "45"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 518
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x2d

    goto :goto_0
.end method

.method public static E(Landroid/content/Context;)F
    .locals 3
    .parameter

    .prologue
    .line 534
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 535
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 537
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->z:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method static F(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 552
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 553
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 555
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->x:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static G(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 685
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 686
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 688
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->Q:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static H(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 693
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 694
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 696
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->R:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static I(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 879
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    const/4 v0, 0x1

    .line 885
    :goto_0
    return v0

    .line 882
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 883
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 885
    :cond_1
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->k:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static J(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 890
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 891
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 893
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->Z:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static K(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 898
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 906
    :cond_0
    :goto_0
    return v0

    .line 900
    :cond_1
    invoke-static {p0}, Lccc71/utils/g;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-static {v1}, Lccc71/utils/g;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget-object v2, Lccc71/utils/ccc71_license_activity;->r:Ljava/lang/String;

    invoke-static {v1, v2}, Lccc71/utils/g;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    :cond_2
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_3

    .line 904
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 906
    :cond_3
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->J:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static L(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 911
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->K(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 914
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v2, Lccc71/bmw/lib/g;->K:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static M(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 919
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->K(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 922
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v2, Lccc71/bmw/lib/g;->L:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static N(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 927
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->K(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 930
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v2, Lccc71/bmw/lib/g;->M:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static O(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 935
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 936
    const/4 v0, 0x0

    .line 941
    :goto_0
    return v0

    .line 938
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 939
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 941
    :cond_1
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->ad:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static P(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 946
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 947
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 949
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->y:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 951
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static Q(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 956
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 957
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 959
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->w:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static R(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 964
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 965
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 967
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->v:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static S(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 972
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 973
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 975
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->ag:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static T(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 980
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 981
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 983
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->ac:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static U(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 988
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 989
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 991
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->o:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static V(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 996
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 997
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 999
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->B:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static W(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 1004
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1005
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 1007
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->C:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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
    .line 1012
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1013
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 1015
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->D:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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
    .line 1020
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1021
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 1023
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->F:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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
    .line 1028
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1029
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 1031
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->E:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(IF)F
    .locals 2
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x4120

    .line 1229
    packed-switch p0, :pswitch_data_0

    .line 1237
    :goto_0
    return p1

    .line 1234
    :pswitch_0
    mul-float v0, p1, v1

    float-to-int v0, v0

    .line 1235
    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0x140

    int-to-float v0, v0

    div-float p1, v0, v1

    goto :goto_0

    .line 1237
    :pswitch_1
    const v0, 0x452ab000

    add-float/2addr v0, p1

    div-float p1, v0, v1

    goto :goto_0

    .line 1229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 99
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 100
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 102
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->at:I

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

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Lccc71/bmw/data/a;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 66
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->d:Lccc71/bmw/data/a;

    if-nez v0, :cond_2

    .line 68
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 69
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 71
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->a:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    if-nez v1, :cond_1

    .line 74
    invoke-static {p0, v2}, Lccc71/bmw/lib/bmw_watcher;->a(Landroid/content/Context;Lccc71/bmw/data/a;)Lccc71/bmw/data/a;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 78
    :cond_1
    const-string v0, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loaded "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Lccc71/bmw/data/a;

    invoke-direct {v0, v1}, Lccc71/bmw/data/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->d:Lccc71/bmw/data/a;

    goto :goto_0

    .line 82
    :cond_2
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->d:Lccc71/bmw/data/a;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/StringBuilder;)Lccc71/bmw/lib/eh;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 327
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 328
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 330
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->N:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0="

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 333
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 335
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 336
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-static {}, Lccc71/bmw/lib/eh;->values()[Lccc71/bmw/lib/eh;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v0, v1, v0

    .line 341
    :goto_0
    return-object v0

    .line 340
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 341
    invoke-static {}, Lccc71/bmw/lib/eh;->values()[Lccc71/bmw/lib/eh;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;F)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 524
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 525
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 527
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 528
    sget v1, Lccc71/bmw/lib/g;->z:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 529
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 530
    return-void
.end method

.method static a(Landroid/content/Context;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 560
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 561
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 563
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->an:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 565
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 566
    return-void
.end method

.method static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 620
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 621
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 623
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->at:I

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

    .line 625
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 626
    return-void
.end method

.method static a(Landroid/content/Context;IZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 650
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 651
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 653
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->aw:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 655
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 656
    return-void
.end method

.method static a(Landroid/content/Context;Lccc71/bmw/data/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 87
    sput-object p1, Lccc71/bmw/lib/bmw_settings;->d:Lccc71/bmw/data/a;

    .line 89
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 90
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 92
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    sget v1, Lccc71/bmw/lib/g;->a:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lccc71/bmw/data/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 95
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 415
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 416
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 418
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 419
    sget v1, Lccc71/bmw/lib/g;->T:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 420
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 421
    return-void
.end method

.method static a(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 188
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 189
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 191
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 192
    sget v1, Lccc71/bmw/lib/g;->W:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 194
    return-void
.end method

.method private a(Landroid/preference/ListPreference;Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2620
    if-nez p1, :cond_1

    .line 2644
    :cond_0
    :goto_0
    return-void

    .line 2623
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 2624
    array-length v4, v1

    move v2, v3

    .line 2625
    :goto_1
    if-ge v2, v4, :cond_0

    .line 2627
    aget-object v0, v1, v2

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2629
    iget-object v0, p0, Lccc71/bmw/lib/bmw_settings;->f:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2630
    const/4 v0, 0x1

    if-le v2, v0, :cond_2

    .line 2632
    if-nez p3, :cond_0

    .line 2633
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lccc71/bmw/lib/g;->cD:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2637
    :cond_2
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v4, Lccc71/bmw/lib/g;->cE:I

    invoke-virtual {p0, v4}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2638
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/16 v2, -0x100

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2639
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2625
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_settings;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v0, 0x0

    .line 2389
    new-instance v2, Lccc71/utils/o;

    invoke-direct {v2, p0}, Lccc71/utils/o;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v3

    invoke-virtual {v3, p0}, Lccc71/utils/a/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/battery_info.txt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lccc71/utils/o;->a(Ljava/lang/String;)Ljava/io/BufferedWriter;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v4

    invoke-virtual {v4, p0}, Lccc71/utils/a/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/app_info.txt"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lccc71/utils/o;->a(Ljava/lang/String;)Ljava/io/BufferedWriter;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-static {v5, v1}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)Lccc71/bmw/lib/eh;

    move-result-object v5

    sget-object v6, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    if-eqz v6, :cond_3

    sget-object v6, Lccc71/bmw/lib/eh;->a:Lccc71/bmw/lib/eh;

    if-eq v5, v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Override settings: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " )\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Estimated mA: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lccc71/bmw/lib/bmw_watcher;->y:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_1
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Estimated mA Discharge: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lccc71/bmw/lib/bmw_watcher;->x:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_2
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "% based on mV: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-static {v5}, Lccc71/bmw/lib/bmw_settings;->g(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_3
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "1% increment: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lccc71/bmw/lib/bmw_watcher;->w:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_4
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Continuous recording: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-static {v5}, Lccc71/bmw/lib/bmw_settings;->n(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_5
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Selected refresh rate: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-static {v5}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_6
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Actual average rate: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccc71/bmw/lib/bi;->b()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_7
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    :goto_7
    const-string v1, "\r\n"

    :try_start_8
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d

    :goto_8
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_9
    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "App Package: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-result-object v5

    :try_start_a
    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    :goto_9
    iget-object v5, v2, Lccc71/utils/o;->a:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could you please help me with the following issue(s) ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "):\r\n\r\n Thanks.\r\n\r\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Battery information ("

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " - "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " - "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ").\r\n\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_b
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Battery capacity: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lccc71/bmw/lib/bmw_watcher;->m:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", from kernel: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v5, Lccc71/bmw/lib/bmw_watcher;->g:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " (override: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v5, Lccc71/bmw/lib/bmw_watcher;->n:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")\r\n\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_c
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10

    :goto_b
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lccc71/bmw/lib/b;->b:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const-string v1, "Available files on device:\r\n"

    :try_start_d
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_11

    :goto_c
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_d
    if-lt v1, v6, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v0

    :goto_e
    if-lt v1, v5, :cond_7

    const-string v0, "\r\n"

    :try_start_e
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_13

    :goto_f
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/power_supply"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_8

    :cond_0
    const-string v0, "/sys/class/power_supply/battery"

    invoke-static {v3, v0}, Lccc71/utils/o;->a(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    :goto_10
    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_14

    :goto_11
    :try_start_10
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_15

    :goto_12
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v2, Lccc71/utils/o;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "battery.support@3c71.com"

    iput-object v0, v2, Lccc71/utils/o;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Support Request - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lccc71/utils/o;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lccc71/utils/o;->a()V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Auto-discovery settings: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "( "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " )\r\n\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_11
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_3
    sget-object v6, Lccc71/bmw/lib/eh;->a:Lccc71/bmw/lib/eh;

    if-eq v5, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Override settings: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / UNDEFINED( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " )\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_12
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Auto-discovery settings: UNDEFINED( "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " )\r\n\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_13
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :catch_3
    move-exception v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "App Package: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", version: unknown\r\n\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_14
    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    goto/16 :goto_9

    :catch_4
    move-exception v5

    goto/16 :goto_9

    :cond_5
    aget-object v8, v5, v1

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    new-instance v9, Ljava/io/File;

    aget-object v10, v8, v11

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    aget-object v9, v8, v11

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    aget-object v8, v8, v11

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_15
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_12

    :goto_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_e

    :cond_8
    const-string v0, "/sys/class/power_supply"

    invoke-static {v3, v0}, Lccc71/utils/o;->a(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    goto/16 :goto_10

    :catch_5
    move-exception v1

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto/16 :goto_1

    :catch_7
    move-exception v1

    goto/16 :goto_2

    :catch_8
    move-exception v1

    goto/16 :goto_3

    :catch_9
    move-exception v1

    goto/16 :goto_4

    :catch_a
    move-exception v1

    goto/16 :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_6

    :catch_c
    move-exception v1

    goto/16 :goto_7

    :catch_d
    move-exception v1

    goto/16 :goto_8

    :catch_e
    move-exception v5

    goto/16 :goto_9

    :catch_f
    move-exception v1

    goto/16 :goto_a

    :catch_10
    move-exception v1

    goto/16 :goto_b

    :catch_11
    move-exception v1

    goto/16 :goto_c

    :catch_12
    move-exception v0

    goto :goto_13

    :catch_13
    move-exception v0

    goto/16 :goto_f

    :catch_14
    move-exception v0

    goto/16 :goto_11

    :catch_15
    move-exception v0

    goto/16 :goto_12
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_settings;Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2618
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/preference/ListPreference;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1590
    invoke-direct {p0, p1}, Lccc71/bmw/lib/bmw_settings;->e(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method static aa(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 1036
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1037
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 1039
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->r:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static ab(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1044
    invoke-static {p0}, Lccc71/utils/g;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1050
    :goto_0
    return v0

    .line 1047
    :cond_0
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 1048
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 1050
    :cond_1
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v2, Lccc71/bmw/lib/g;->t:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static ac(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1055
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1056
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 1058
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->ae:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static ad(Landroid/content/Context;)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1073
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 1074
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 1076
    :cond_0
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v2, Lccc71/bmw/lib/g;->ae:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1077
    add-int/lit8 v1, v1, 0x1

    .line 1078
    invoke-static {}, Lccc71/bmw/lib/ak;->values()[Lccc71/bmw/lib/ak;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_1

    move v1, v0

    .line 1081
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->V(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1082
    add-int/lit8 v1, v1, 0x1

    .line 1083
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->Z(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1084
    add-int/lit8 v1, v1, 0x1

    .line 1085
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->Y(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1086
    add-int/lit8 v1, v1, 0x1

    .line 1087
    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->W(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1088
    add-int/lit8 v1, v1, 0x1

    .line 1089
    :cond_5
    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->X(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1092
    :goto_0
    invoke-static {p0, v0}, Lccc71/bmw/lib/bmw_settings;->t(Landroid/content/Context;I)V

    .line 1094
    return v0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method static ae(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1122
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1123
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 1125
    :cond_0
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v0, Lccc71/bmw/lib/g;->af:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    const-string v0, "5"

    goto :goto_0
.end method

.method static af(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1130
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1131
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 1133
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->S:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static ag(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1138
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1139
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 1141
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->ak:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1145
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1149
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static ah(Landroid/content/Context;)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1165
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1166
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 1168
    :cond_0
    sget-object v2, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v0, Lccc71/bmw/lib/g;->af:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "1"

    :goto_0
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1169
    add-int/lit8 v0, v0, 0x1

    .line 1170
    invoke-static {}, Lccc71/bmw/lib/ak;->values()[Lccc71/bmw/lib/ak;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_1

    move v0, v1

    .line 1173
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->V(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1174
    add-int/lit8 v0, v0, 0x1

    .line 1175
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->Z(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1176
    add-int/lit8 v0, v0, 0x1

    .line 1177
    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->Y(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1178
    add-int/lit8 v0, v0, 0x1

    .line 1179
    :cond_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->W(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1180
    add-int/lit8 v0, v0, 0x1

    .line 1181
    :cond_5
    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->X(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 1184
    :cond_6
    invoke-static {p0, v0}, Lccc71/bmw/lib/bmw_settings;->v(Landroid/content/Context;I)V

    .line 1186
    return v0

    .line 1168
    :cond_7
    const-string v0, "5"

    goto :goto_0
.end method

.method public static ai(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1191
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1192
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 1194
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->aj:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static aj(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1199
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->ai(Landroid/content/Context;)I

    move-result v0

    .line 1200
    packed-switch v0, :pswitch_data_0

    .line 1203
    const-string v0, "\u00baC"

    .line 1207
    :goto_0
    return-object v0

    .line 1205
    :pswitch_0
    const-string v0, "\u00baF"

    goto :goto_0

    .line 1207
    :pswitch_1
    const-string v0, "\u00baK"

    goto :goto_0

    .line 1200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 109
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 110
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 112
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->aC:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;F)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4120

    .line 1213
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->ai(Landroid/content/Context;)I

    move-result v0

    .line 1214
    packed-switch v0, :pswitch_data_0

    .line 1217
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

    .line 1223
    :goto_0
    return-object v0

    .line 1219
    :pswitch_0
    mul-float v0, p1, v2

    float-to-int v0, v0

    .line 1220
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

    .line 1222
    :pswitch_1
    mul-float v0, p1, v2

    float-to-int v0, v0

    .line 1223
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

    .line 1214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static b(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 117
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 118
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 120
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    sget v1, Lccc71/bmw/lib/g;->aC:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 123
    return-void
.end method

.method static b(Landroid/content/Context;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 570
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 571
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 573
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->ao:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 575
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 576
    return-void
.end method

.method protected static b(Landroid/content/Context;IZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 849
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 850
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 852
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->az:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 854
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 855
    return-void
.end method

.method static b(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 214
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 215
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 217
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 218
    sget v1, Lccc71/bmw/lib/g;->p:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 220
    return-void
.end method

.method static synthetic b(Lccc71/bmw/lib/bmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1652
    invoke-direct {p0, p1}, Lccc71/bmw/lib/bmw_settings;->f(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method static synthetic b(Lccc71/bmw/lib/bmw_settings;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lccc71/bmw/lib/bmw_settings;->e:Z

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 127
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 128
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 130
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->aB:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static c(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 135
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 136
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 138
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    sget v1, Lccc71/bmw/lib/g;->aB:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 141
    return-void
.end method

.method static c(Landroid/content/Context;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 580
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 581
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 583
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->aq:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 585
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 586
    return-void
.end method

.method static c(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 542
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 543
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 545
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 546
    sget v1, Lccc71/bmw/lib/g;->x:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 547
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 548
    return-void
.end method

.method private c(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1371
    sget v0, Lccc71/bmw/lib/g;->av:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 1372
    sget v1, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {p0, v1}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1373
    sget v1, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {p0, v1}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1374
    sget v1, Lccc71/bmw/lib/g;->bp:I

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 1377
    :goto_0
    new-instance v1, Lccc71/bmw/lib/cy;

    invoke-direct {v1, p0, v0}, Lccc71/bmw/lib/cy;-><init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/ListPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1394
    sget v0, Lccc71/bmw/lib/g;->aw:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object v0, v1

    .line 1395
    check-cast v0, Landroid/preference/CheckBoxPreference;

    sget v2, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {p0, v2}, Lccc71/bmw/lib/bmw_settings;->q(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1396
    new-instance v0, Lccc71/bmw/lib/cz;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/cz;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1406
    sget v0, Lccc71/bmw/lib/g;->au:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object v0, v1

    .line 1407
    check-cast v0, Landroid/preference/ListPreference;

    sget v2, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {p0, v2}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1408
    new-instance v0, Lccc71/bmw/lib/da;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/da;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1418
    sget v0, Lccc71/bmw/lib/g;->at:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 1419
    sget v1, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {p0, v1}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1420
    new-instance v1, Lccc71/bmw/lib/db;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/db;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1429
    sget v0, Lccc71/bmw/lib/g;->al:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object v0, v1

    .line 1430
    check-cast v0, Landroid/preference/ListPreference;

    sget v2, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {p0, v2}, Lccc71/bmw/lib/bmw_settings;->s(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object v0, v1

    .line 1431
    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lccc71/bmw/lib/bmw_widget;->j:[I

    sget v4, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {p0, v4}, Lccc71/bmw/lib/bmw_settings;->s(Landroid/content/Context;I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1432
    new-instance v0, Lccc71/bmw/lib/bu;

    invoke-direct {v0, p0, v1}, Lccc71/bmw/lib/bu;-><init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/Preference;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1443
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/g;->aA:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1444
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/bmw/lib/g;->bq:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1445
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v3, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {p0, v3}, Lccc71/bmw/lib/bmw_settings;->g(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v2, v5, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1446
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1447
    new-instance v1, Lccc71/bmw/lib/bv;

    invoke-direct {v1, p0, v0}, Lccc71/bmw/lib/bv;-><init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/Preference;)V

    .line 1458
    new-instance v2, Lccc71/bmw/lib/bw;

    invoke-direct {v2, p0, v1}, Lccc71/bmw/lib/bw;-><init>(Lccc71/bmw/lib/bmw_settings;Lccc71/utils/m;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1472
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/g;->am:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1473
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/bmw/lib/g;->bm:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1474
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v3, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {p0, v3}, Lccc71/bmw/lib/bmw_settings;->h(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v2, v5, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1475
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1476
    new-instance v1, Lccc71/bmw/lib/bx;

    invoke-direct {v1, p0, v0}, Lccc71/bmw/lib/bx;-><init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/Preference;)V

    .line 1487
    new-instance v2, Lccc71/bmw/lib/by;

    invoke-direct {v2, p0, v1}, Lccc71/bmw/lib/by;-><init>(Lccc71/bmw/lib/bmw_settings;Lccc71/utils/m;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1498
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/g;->as:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1499
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/bmw/lib/g;->bm:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1500
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v3, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {p0, v3}, Lccc71/bmw/lib/bmw_settings;->i(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v2, v5, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1501
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1502
    new-instance v1, Lccc71/bmw/lib/bz;

    invoke-direct {v1, p0, v0}, Lccc71/bmw/lib/bz;-><init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/Preference;)V

    .line 1513
    new-instance v2, Lccc71/bmw/lib/ca;

    invoke-direct {v2, p0, v1}, Lccc71/bmw/lib/ca;-><init>(Lccc71/bmw/lib/bmw_settings;Lccc71/utils/m;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1523
    return-void

    .line 1376
    :cond_0
    sget v1, Lccc71/bmw/lib/g;->bo:I

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lccc71/bmw/lib/bmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1759
    invoke-direct {p0, p1}, Lccc71/bmw/lib/bmw_settings;->g(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method static d(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 256
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 257
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 259
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 260
    sget v1, Lccc71/bmw/lib/g;->U:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 263
    invoke-static {p0}, Lccc71/bmw/lib/bmw_watcher;->a(Landroid/content/Context;)V

    .line 264
    return-void
.end method

.method public static d(Landroid/content/Context;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 590
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 591
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 593
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->ar:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 595
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 596
    return-void
.end method

.method private d(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1527
    sget v0, Lccc71/bmw/lib/g;->e:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1528
    sget v1, Lccc71/bmw/lib/g;->f:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1529
    sget v2, Lccc71/bmw/lib/g;->j:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1530
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1532
    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1533
    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1535
    :cond_0
    new-instance v3, Lccc71/bmw/lib/cb;

    invoke-direct {v3, p0, v0, v1}, Lccc71/bmw/lib/cb;-><init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/Preference;Landroid/preference/Preference;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1554
    sget v0, Lccc71/bmw/lib/g;->d:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1555
    sget v1, Lccc71/bmw/lib/g;->h:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1556
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1558
    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1560
    :cond_1
    new-instance v2, Lccc71/bmw/lib/cc;

    invoke-direct {v2, p0, v0}, Lccc71/bmw/lib/cc;-><init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/Preference;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1577
    sget v0, Lccc71/bmw/lib/g;->ab:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1578
    new-instance v1, Lccc71/bmw/lib/cd;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/cd;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1588
    return-void
.end method

.method static synthetic d(Lccc71/bmw/lib/bmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2120
    sget v0, Lccc71/bmw/lib/g;->J:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    sget v1, Lccc71/bmw/lib/g;->K:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    sget v2, Lccc71/bmw/lib/g;->L:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    sget v3, Lccc71/bmw/lib/g;->M:I

    invoke-virtual {p0, v3}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v2, :cond_0

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-static {p0}, Lccc71/utils/g;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget-object v5, Lccc71/utils/ccc71_license_activity;->r:Ljava/lang/String;

    invoke-static {v4, v5}, Lccc71/utils/g;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v4, Lccc71/bmw/lib/ct;

    invoke-direct {v4, p0}, Lccc71/bmw/lib/ct;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    invoke-static {p0}, Lccc71/utils/g;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget-object v5, Lccc71/utils/ccc71_license_activity;->r:Ljava/lang/String;

    invoke-static {v4, v5}, Lccc71/utils/g;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_6
    sget v4, Lccc71/bmw/lib/g;->bb:I

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    if-eqz v2, :cond_7

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_8
    if-eqz v3, :cond_3

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_9
    sget v4, Lccc71/bmw/lib/g;->cC:I

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    if-eqz v2, :cond_a

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_b
    if-eqz v3, :cond_3

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method static d(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 145
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 146
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 148
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->n:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static e(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 153
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 154
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 156
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->c:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static e(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 268
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 269
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 271
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 272
    sget v1, Lccc71/bmw/lib/g;->l:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 273
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 275
    invoke-static {p0}, Lccc71/bmw/lib/bmw_watcher;->a(Landroid/content/Context;)V

    .line 276
    return-void
.end method

.method public static e(Landroid/content/Context;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 600
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 601
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 603
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->ap:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 605
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 606
    return-void
.end method

.method private e(Landroid/preference/PreferenceScreen;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1592
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->y:Z

    if-eqz v0, :cond_0

    .line 1594
    sget v0, Lccc71/bmw/lib/g;->q:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1595
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1596
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1599
    :cond_0
    sget v0, Lccc71/bmw/lib/g;->N:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 1600
    if-eqz v0, :cond_1

    .line 1602
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lccc71/bmw/lib/b;->a:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1603
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lccc71/bmw/lib/b;->b:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1605
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1606
    :goto_0
    array-length v6, v4

    if-lt v1, v6, :cond_3

    .line 1622
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v6, v1, [Ljava/lang/String;

    .line 1623
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [Ljava/lang/String;

    .line 1624
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    .line 1625
    :goto_1
    if-lt v2, v8, :cond_6

    .line 1631
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1632
    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1635
    :cond_1
    sget v0, Lccc71/bmw/lib/g;->ah:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1636
    if-eqz v0, :cond_2

    .line 1638
    new-instance v1, Lccc71/bmw/lib/cf;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/cf;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1650
    :cond_2
    return-void

    .line 1608
    :cond_3
    aget-object v6, v4, v1

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1610
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 1612
    new-instance v7, Ljava/io/File;

    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1613
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1615
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1619
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1627
    :cond_6
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1

    aput-object v1, v6, v2

    .line 1628
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v4, v1

    aput-object v1, v7, v2

    .line 1625
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static synthetic e(Lccc71/bmw/lib/bmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1525
    invoke-direct {p0, p1}, Lccc71/bmw/lib/bmw_settings;->d(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method static f(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 161
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 162
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 164
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->b:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static f(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 298
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 299
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 301
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 302
    sget v1, Lccc71/bmw/lib/g;->m:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 304
    return-void
.end method

.method static f(Landroid/content/Context;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 610
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 611
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 613
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->au:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 615
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 616
    return-void
.end method

.method private f(Landroid/preference/PreferenceScreen;)V
    .locals 3
    .parameter

    .prologue
    .line 1654
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->y:Z

    if-nez v0, :cond_0

    .line 1656
    sget v0, Lccc71/bmw/lib/g;->m:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1657
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1658
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1661
    :cond_0
    sget v0, Lccc71/bmw/lib/g;->l:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object v0, v1

    .line 1662
    check-cast v0, Landroid/preference/EditTextPreference;

    sget v2, Lccc71/bmw/lib/bmw_watcher;->m:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1663
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1665
    sget v0, Lccc71/bmw/lib/g;->bj:I

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 1666
    new-instance v0, Lccc71/bmw/lib/cg;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/cg;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1712
    :goto_0
    sget v0, Lccc71/bmw/lib/g;->V:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1713
    if-eqz v0, :cond_1

    .line 1715
    new-instance v1, Lccc71/bmw/lib/ci;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/ci;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1757
    :cond_1
    return-void

    .line 1689
    :cond_2
    new-instance v0, Lccc71/bmw/lib/ch;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/ch;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method static synthetic f(Lccc71/bmw/lib/bmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2008
    invoke-direct {p0, p1}, Lccc71/bmw/lib/bmw_settings;->h(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method public static g(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 660
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 661
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 665
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/bmw/lib/g;->aA:I

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

    .line 669
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static g(Landroid/content/Context;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 630
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 631
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 633
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->al:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 635
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 636
    return-void
.end method

.method private g(Landroid/preference/PreferenceScreen;)V
    .locals 10
    .parameter

    .prologue
    .line 1761
    sget v0, Lccc71/bmw/lib/g;->G:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 1762
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1763
    new-instance v0, Lccc71/bmw/lib/cj;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/cj;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1773
    sget v0, Lccc71/bmw/lib/g;->X:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lccc71/bmw/lib/bmw_settings;->f:Landroid/preference/Preference;

    .line 1774
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->x:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->y:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lccc71/utils/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1776
    :cond_0
    iget-object v0, p0, Lccc71/bmw/lib/bmw_settings;->f:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    .line 1777
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1778
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1779
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 1781
    array-length v1, v2

    add-int/lit8 v1, v1, -0x2

    new-array v5, v1, [Ljava/lang/CharSequence;

    .line 1782
    array-length v1, v3

    add-int/lit8 v1, v1, -0x2

    new-array v7, v1, [Ljava/lang/CharSequence;

    .line 1784
    const/4 v1, 0x2

    :goto_0
    array-length v8, v2

    if-lt v1, v8, :cond_3

    .line 1790
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1791
    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1792
    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1794
    const-string v1, "60"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1798
    :cond_1
    iget-object v0, p0, Lccc71/bmw/lib/bmw_settings;->f:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    sget-object v1, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/preference/ListPreference;Ljava/lang/String;Z)V

    .line 1799
    iget-object v0, p0, Lccc71/bmw/lib/bmw_settings;->f:Landroid/preference/Preference;

    new-instance v1, Lccc71/bmw/lib/ck;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/ck;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1856
    sget v0, Lccc71/bmw/lib/g;->aa:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 1857
    sget v0, Lccc71/bmw/lib/g;->ad:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 1858
    sget v0, Lccc71/bmw/lib/g;->ag:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1859
    sget v0, Lccc71/bmw/lib/g;->ac:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 1860
    sget v0, Lccc71/bmw/lib/g;->o:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1861
    new-instance v0, Lccc71/bmw/lib/cl;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lccc71/bmw/lib/cl;-><init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1914
    sget v0, Lccc71/bmw/lib/g;->ai:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1915
    new-instance v1, Lccc71/bmw/lib/cm;

    invoke-direct {v1, p0, v6}, Lccc71/bmw/lib/cm;-><init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1979
    sget v0, Lccc71/bmw/lib/g;->t:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1980
    if-eqz v0, :cond_2

    .line 1982
    new-instance v1, Lccc71/bmw/lib/cn;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/cn;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2006
    :cond_2
    return-void

    .line 1786
    :cond_3
    add-int/lit8 v8, v1, -0x2

    aget-object v9, v2, v1

    aput-object v9, v5, v8

    .line 1787
    add-int/lit8 v8, v1, -0x2

    aget-object v9, v3, v1

    aput-object v9, v7, v8

    .line 1784
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method static synthetic g(Lccc71/bmw/lib/bmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2190
    invoke-direct {p0, p1}, Lccc71/bmw/lib/bmw_settings;->i(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method static g(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-static {p0}, Lccc71/utils/g;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    :goto_0
    return v0

    .line 172
    :cond_0
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 173
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 175
    :cond_1
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v2, Lccc71/bmw/lib/g;->V:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 701
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 702
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 706
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/bmw/lib/g;->am:I

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

    .line 710
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static h(Landroid/content/Context;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 640
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 641
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 643
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->av:I

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

    .line 645
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 646
    return-void
.end method

.method private h(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2010
    sget v0, Lccc71/bmw/lib/g;->W:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2011
    sget-boolean v1, Lccc71/bmw/lib/bmw_watcher;->y:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 2013
    sget v0, Lccc71/bmw/lib/g;->ag:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2014
    sget v1, Lccc71/bmw/lib/g;->ac:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2015
    sget v2, Lccc71/bmw/lib/g;->o:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 2016
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2018
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->O(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 2019
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2020
    :cond_0
    if-eqz v0, :cond_1

    .line 2021
    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2022
    :cond_1
    if-eqz v1, :cond_2

    .line 2023
    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2035
    :cond_2
    :goto_0
    sget v3, Lccc71/bmw/lib/g;->ak:I

    invoke-virtual {p0, v3}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 2036
    new-instance v4, Lccc71/bmw/lib/co;

    invoke-direct {v4, p0}, Lccc71/bmw/lib/co;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2060
    new-instance v3, Lccc71/bmw/lib/cq;

    invoke-direct {v3, p0, v2, v1}, Lccc71/bmw/lib/cq;-><init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/Preference;Landroid/preference/Preference;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2079
    new-instance v3, Lccc71/bmw/lib/cr;

    invoke-direct {v3, p0, v2, v0}, Lccc71/bmw/lib/cr;-><init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/Preference;Landroid/preference/Preference;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2099
    new-instance v3, Lccc71/bmw/lib/cs;

    invoke-direct {v3, p0, v0, v1}, Lccc71/bmw/lib/cs;-><init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/Preference;Landroid/preference/Preference;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2118
    return-void

    .line 2027
    :cond_3
    if-eqz v2, :cond_4

    .line 2028
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2029
    :cond_4
    if-eqz v0, :cond_5

    .line 2030
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2031
    :cond_5
    if-eqz v1, :cond_2

    .line 2032
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic h(Lccc71/bmw/lib/bmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1369
    invoke-direct {p0, p1}, Lccc71/bmw/lib/bmw_settings;->c(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method static h(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 180
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 181
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 183
    :cond_0
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v0, Lccc71/bmw/lib/g;->W:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->y:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 726
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 727
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 731
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/bmw/lib/g;->as:I

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

    .line 735
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static i(Landroid/content/Context;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 675
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 676
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 678
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/bmw/lib/g;->aA:I

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

    .line 680
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 681
    return-void
.end method

.method private i(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 2192
    sget v0, Lccc71/bmw/lib/g;->ad:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2193
    sget v1, Lccc71/bmw/lib/g;->ag:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2194
    sget v2, Lccc71/bmw/lib/g;->ac:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 2195
    sget v3, Lccc71/bmw/lib/g;->o:I

    invoke-virtual {p0, v3}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 2197
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2199
    if-eqz v0, :cond_0

    .line 2200
    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2201
    :cond_0
    if-eqz v1, :cond_1

    .line 2202
    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2203
    :cond_1
    if-eqz v2, :cond_2

    .line 2204
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2205
    :cond_2
    if-eqz v3, :cond_3

    .line 2206
    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2247
    :cond_3
    :goto_0
    return-void

    .line 2210
    :cond_4
    new-instance v4, Lccc71/bmw/lib/cu;

    invoke-direct {v4, p0, v1, v2, v3}, Lccc71/bmw/lib/cu;-><init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method static i(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 198
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 199
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 201
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->p:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static j(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 751
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 752
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 754
    :cond_0
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->an:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0xa

    goto :goto_0
.end method

.method static j(Landroid/content/Context;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 716
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 717
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 719
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/bmw/lib/g;->am:I

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

    .line 721
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 722
    return-void
.end method

.method static j(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 206
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 207
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 209
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->Y:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static k(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 224
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 225
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 227
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->U:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    neg-int v0, v0

    .line 251
    :goto_0
    return v0

    .line 236
    :catch_0
    move-exception v0

    const-string v0, "battery_widget_monitor"

    const-string v1, "Failed to get overridden battery capacity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_1
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->l:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1500"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 248
    :catch_1
    move-exception v0

    const-string v0, "battery_widget_monitor"

    const-string v1, "Failed to get user-defined battery capacity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/16 v0, 0x5dc

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 759
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 760
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 762
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->ao:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static k(Landroid/content/Context;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 741
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 742
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 744
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/bmw/lib/g;->as:I

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

    .line 746
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 747
    return-void
.end method

.method public static l(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 280
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 281
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 283
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->m:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 293
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 767
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 768
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 770
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->aq:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static l(Landroid/content/Context;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 859
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 860
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 862
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->ay:I

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

    .line 864
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 865
    return-void
.end method

.method public static m(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 775
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 776
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 778
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->ar:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 308
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 309
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 311
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->q:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static n(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 783
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 784
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 786
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->ap:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 316
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 322
    :goto_0
    return v0

    .line 319
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 320
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 322
    :cond_1
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->O:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static o(Landroid/content/Context;)I
    .locals 4
    .parameter

    .prologue
    const/16 v0, 0x3c

    .line 346
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 347
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 349
    :cond_0
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v2, Lccc71/bmw/lib/g;->X:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 350
    sget v3, Lccc71/bmw/lib/g;->be:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 353
    if-gt v1, v0, :cond_2

    sget-boolean v2, Lccc71/bmw/lib/bmw_watcher;->x:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lccc71/bmw/lib/bmw_watcher;->y:Z

    if-nez v2, :cond_1

    invoke-static {p0}, Lccc71/utils/g;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static o(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 791
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 792
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 794
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->au:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static p(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 799
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 800
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 802
    :cond_0
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lccc71/bmw/lib/g;->av:I

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

    .line 803
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 805
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 807
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lccc71/bmw/lib/g;->ax:I

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

    .line 808
    if-eqz v1, :cond_1

    .line 814
    :goto_0
    return v0

    .line 811
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 362
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 363
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 365
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->aa:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static q(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 370
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 371
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 373
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->H:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "524288"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static q(Landroid/content/Context;I)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 819
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 820
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 822
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->aw:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

.method public static r(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 827
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 828
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 830
    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 832
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->ay:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 833
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 834
    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    .line 844
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->az:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 380
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 381
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 383
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->aa:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 384
    if-eqz v0, :cond_1

    .line 385
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->G:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lccc71/bmw/lib/g;->bc:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static s(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 869
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 870
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 872
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->al:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

.method static s(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 391
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 392
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 394
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->g:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static t(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1063
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1064
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 1066
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1067
    sget v1, Lccc71/bmw/lib/g;->ae:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1068
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1069
    return-void
.end method

.method static t(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 399
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 400
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 402
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->P:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static u(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1099
    invoke-static {p0, p1}, Lccc71/bmw/lib/bmw_settings;->m(Landroid/content/Context;I)I

    move-result v1

    .line 1100
    add-int/lit8 v1, v1, 0x1

    .line 1101
    invoke-static {}, Lccc71/bmw/lib/ak;->values()[Lccc71/bmw/lib/ak;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_0

    move v1, v0

    .line 1104
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->V(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1105
    add-int/lit8 v1, v1, 0x1

    .line 1106
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->Z(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1107
    add-int/lit8 v1, v1, 0x1

    .line 1108
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->Y(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1109
    add-int/lit8 v1, v1, 0x1

    .line 1110
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->W(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1111
    add-int/lit8 v1, v1, 0x1

    .line 1112
    :cond_4
    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->X(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1115
    :goto_0
    invoke-static {p0, p1, v0}, Lccc71/bmw/lib/bmw_settings;->d(Landroid/content/Context;II)V

    .line 1117
    return v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 407
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 408
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 410
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->T:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static v(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1155
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1156
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 1158
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1159
    sget v1, Lccc71/bmw/lib/g;->af:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1160
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1161
    return-void
.end method

.method static v(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 425
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 426
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 428
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->i:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static w(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 433
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 434
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 436
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->s:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 441
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 442
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 444
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->u:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 449
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 450
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 452
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->j:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static z(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 457
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 458
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 460
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    sget v1, Lccc71/bmw/lib/g;->e:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "4200"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 468
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x1068

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1244
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Lccc71/bmw/lib/bmw_settings;->c:I

    if-eq v0, v2, :cond_1

    .line 1246
    sget v0, Lccc71/bmw/lib/h;->l:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->addPreferencesFromResource(I)V

    .line 1248
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/preference/PreferenceScreen;)V

    .line 1250
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_settings;->c(Landroid/preference/PreferenceScreen;)V

    .line 1252
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 1253
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    sget v1, Lccc71/bmw/lib/e;->bo:I

    if-ne v0, v1, :cond_0

    .line 1255
    sget v0, Lccc71/bmw/lib/h;->o:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->addPreferencesFromResource(I)V

    .line 1257
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->b(Landroid/preference/PreferenceScreen;)V

    .line 1267
    :cond_0
    :goto_0
    return-void

    .line 1262
    :cond_1
    sput v2, Lccc71/bmw/lib/bmw_settings;->c:I

    .line 1264
    sget v0, Lccc71/bmw/lib/h;->k:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter

    .prologue
    .line 1271
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1272
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 1274
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1275
    sget v1, Lccc71/bmw/lib/g;->au:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v3, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v2, v3}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1276
    sget v1, Lccc71/bmw/lib/g;->al:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v3, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v2, v3}, Lccc71/bmw/lib/bmw_settings;->s(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1277
    sget v1, Lccc71/bmw/lib/g;->av:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v3, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v2, v3}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1278
    sget v1, Lccc71/bmw/lib/g;->aw:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v3, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v2, v3}, Lccc71/bmw/lib/bmw_settings;->q(Landroid/content/Context;I)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1279
    sget v1, Lccc71/bmw/lib/g;->at:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v3, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v2, v3}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1280
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1281
    return-void
.end method

.method public final b(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1285
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1286
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 1288
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1289
    sget v0, Lccc71/bmw/lib/g;->an:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v5, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v4, v5}, Lccc71/bmw/lib/bmw_settings;->j(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1290
    sget v0, Lccc71/bmw/lib/g;->ao:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v5, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v4, v5}, Lccc71/bmw/lib/bmw_settings;->k(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1291
    sget v0, Lccc71/bmw/lib/g;->aq:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v5, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v4, v5}, Lccc71/bmw/lib/bmw_settings;->l(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1292
    sget v0, Lccc71/bmw/lib/g;->ar:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v5, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v4, v5}, Lccc71/bmw/lib/bmw_settings;->m(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1293
    sget v0, Lccc71/bmw/lib/g;->ap:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v5, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v4, v5}, Lccc71/bmw/lib/bmw_settings;->n(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1294
    sget v0, Lccc71/bmw/lib/g;->az:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v5, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v0, v5}, Lccc71/bmw/lib/bmw_settings;->r(Landroid/content/Context;I)I

    move-result v0

    if-ltz v0, :cond_1

    move v0, v2

    :goto_0
    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1295
    sget v0, Lccc71/bmw/lib/g;->ay:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v5, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v4, v5}, Lccc71/bmw/lib/bmw_settings;->r(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1296
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1298
    const/4 v0, 0x7

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1300
    sget v0, Lccc71/bmw/lib/g;->ay:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 1301
    sget-object v1, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v2, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v1, v2}, Lccc71/bmw/lib/bmw_settings;->r(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1302
    new-instance v1, Lccc71/bmw/lib/bt;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/bt;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1330
    :goto_1
    sget v0, Lccc71/bmw/lib/g;->an:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1331
    new-instance v1, Lccc71/bmw/lib/cp;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/cp;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1344
    sget v0, Lccc71/bmw/lib/g;->ao:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1345
    new-instance v1, Lccc71/bmw/lib/cw;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/cw;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1356
    sget v0, Lccc71/bmw/lib/g;->aq:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1357
    new-instance v1, Lccc71/bmw/lib/cx;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/cx;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1367
    return-void

    :cond_1
    move v0, v3

    .line 1294
    goto/16 :goto_0

    .line 1317
    :cond_2
    sget v0, Lccc71/bmw/lib/g;->az:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object v0, v1

    .line 1318
    check-cast v0, Landroid/preference/CheckBoxPreference;

    sget-object v4, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v5, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v4, v5}, Lccc71/bmw/lib/bmw_settings;->r(Landroid/content/Context;I)I

    move-result v4

    if-ltz v4, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1319
    new-instance v0, Lccc71/bmw/lib/ce;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/ce;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 1318
    goto :goto_2
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2309
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".current_widget_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bmw_settings;->c:I

    .line 2311
    const-string v0, "battery_widget_monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading headers for Widget ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    sget v0, Lccc71/bmw/lib/h;->p:I

    invoke-static {p0, v0, p1}, Lccc71/utils/a/a;->b(Landroid/preference/PreferenceActivity;ILjava/util/List;)V

    .line 2315
    sget v0, Lccc71/bmw/lib/bmw_settings;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2317
    sget v0, Lccc71/bmw/lib/g;->bf:I

    sget v1, Lccc71/bmw/lib/g;->bi:I

    const-string v2, "ccc71.bmw.lib.bmw_settings$PrefsWidgetAppearance"

    invoke-static {p1, v0, v1, v2, v3}, Lccc71/utils/a/a;->b(Ljava/util/List;IILjava/lang/String;Landroid/content/Intent;)V

    .line 2319
    sget v0, Lccc71/bmw/lib/g;->bg:I

    sget v1, Lccc71/bmw/lib/g;->bh:I

    const-string v2, "ccc71.bmw.lib.bmw_settings$PrefsWidgetContent"

    invoke-static {p1, v0, v1, v2, v3}, Lccc71/utils/a/a;->b(Ljava/util/List;IILjava/lang/String;Landroid/content/Intent;)V

    .line 2326
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2327
    const-string v1, "http://www.3c71.com/android/?q=node/5#main-content-area"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2328
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2331
    return-void

    .line 2323
    :cond_0
    sget v0, Lccc71/bmw/lib/g;->bl:I

    sget v1, Lccc71/bmw/lib/g;->bk:I

    invoke-static {p1, v0, v1, v3, v3}, Lccc71/utils/a/a;->b(Ljava/util/List;IILjava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 2252
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".current_widget_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bmw_settings;->c:I

    .line 2254
    const-string v0, "battery_widget_monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading preference for Widget ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2258
    sput-object p0, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    .line 2260
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/a/k;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/bmw/lib/bmw_settings;->e:Z

    .line 2262
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lccc71/utils/al;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2264
    invoke-static {p0}, Lccc71/utils/a/a;->c(Landroid/preference/PreferenceActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lccc71/utils/a/a;->d(Landroid/preference/PreferenceActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2266
    sget v0, Lccc71/bmw/lib/h;->a:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->addPreferencesFromResource(I)V

    .line 2268
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->a()V

    .line 2270
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 2272
    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_settings;->d(Landroid/preference/PreferenceScreen;)V

    .line 2274
    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_settings;->e(Landroid/preference/PreferenceScreen;)V

    .line 2276
    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_settings;->f(Landroid/preference/PreferenceScreen;)V

    .line 2278
    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_settings;->g(Landroid/preference/PreferenceScreen;)V

    .line 2280
    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_settings;->h(Landroid/preference/PreferenceScreen;)V

    .line 2282
    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_settings;->i(Landroid/preference/PreferenceScreen;)V

    .line 2286
    sget v0, Lccc71/bmw/lib/h;->g:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->addPreferencesFromResource(I)V

    .line 2288
    sget v0, Lccc71/bmw/lib/g;->A:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2289
    new-instance v1, Lccc71/bmw/lib/cv;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/cv;-><init>(Lccc71/bmw/lib/bmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2304
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 2649
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 2651
    invoke-static {p0}, Lccc71/bmw/lib/bmw_scheduler;->b(Landroid/content/Context;)Z

    move-result v0

    .line 2652
    invoke-static {p0}, Lccc71/bmw/lib/bmw_widget;->c(Landroid/content/Context;)V

    .line 2653
    sget-object v1, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    if-eqz v1, :cond_0

    .line 2654
    sget-object v1, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Lccc71/bmw/lib/ed;->sendEmptyMessage(I)Z

    .line 2655
    :cond_0
    invoke-static {p0}, Lccc71/bmw/lib/bmw_watcher;->d(Landroid/content/Context;)V

    .line 2656
    return-void

    .line 2654
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
