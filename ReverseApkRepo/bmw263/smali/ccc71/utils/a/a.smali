.class public abstract Lccc71/utils/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lccc71/utils/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lccc71/utils/a/a;->a:Lccc71/utils/a/a;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lccc71/utils/a/a;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lccc71/utils/a/a;->a:Lccc71/utils/a/a;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lccc71/utils/a/a;->a:Lccc71/utils/a/a;

    .line 76
    :goto_0
    return-object v0

    .line 67
    :cond_0
    const/16 v0, 0xb

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Lccc71/utils/a/b;

    invoke-direct {v0}, Lccc71/utils/a/b;-><init>()V

    sput-object v0, Lccc71/utils/a/a;->a:Lccc71/utils/a/a;

    .line 76
    :goto_1
    sget-object v0, Lccc71/utils/a/a;->a:Lccc71/utils/a/a;

    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Lccc71/utils/a/c;

    invoke-direct {v0}, Lccc71/utils/a/c;-><init>()V

    sput-object v0, Lccc71/utils/a/a;->a:Lccc71/utils/a/a;

    goto :goto_1
.end method

.method public static b(Landroid/preference/PreferenceActivity;ILjava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-static {}, Lccc71/utils/a/a;->a()Lccc71/utils/a/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lccc71/utils/a/a;->a(Landroid/preference/PreferenceActivity;ILjava/util/List;)V

    .line 45
    return-void
.end method

.method public static b(Ljava/util/List;IILjava/lang/String;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-static {}, Lccc71/utils/a/a;->a()Lccc71/utils/a/a;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/a/a;->a(Ljava/util/List;IILjava/lang/String;Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method public static c(Landroid/preference/PreferenceActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-static {}, Lccc71/utils/a/a;->a()Lccc71/utils/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/a/a;->a(Landroid/preference/PreferenceActivity;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/preference/PreferenceActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-static {}, Lccc71/utils/a/a;->a()Lccc71/utils/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/a/a;->b(Landroid/preference/PreferenceActivity;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract a(Landroid/preference/PreferenceActivity;ILjava/util/List;)V
.end method

.method public abstract a(Ljava/util/List;IILjava/lang/String;Landroid/content/Intent;)V
.end method

.method public abstract a(Landroid/preference/PreferenceActivity;)Z
.end method

.method public abstract b(Landroid/preference/PreferenceActivity;)Z
.end method
