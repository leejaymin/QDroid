.class public final Lccc71/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Lccc71/utils/billing/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    sput-boolean v1, Lccc71/utils/g;->a:Z

    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/utils/g;->b:Z

    .line 17
    sput-boolean v1, Lccc71/utils/g;->c:Z

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lccc71/utils/g;->d:Lccc71/utils/billing/p;

    .line 12
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 41
    sget-boolean v1, Lccc71/utils/g;->c:Z

    if-eqz v1, :cond_0

    .line 44
    :goto_0
    return v0

    :cond_0
    sget-boolean v1, Lccc71/utils/g;->a:Z

    if-eqz v1, :cond_1

    sget-boolean v0, Lccc71/utils/g;->b:Z

    goto :goto_0

    :cond_1
    sget v1, Lccc71/utils/f;->a:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lccc71/utils/g;->b:Z

    sput-boolean v0, Lccc71/utils/g;->a:Z

    sget-boolean v0, Lccc71/utils/g;->b:Z

    goto :goto_0
.end method
