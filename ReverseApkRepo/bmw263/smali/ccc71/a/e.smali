.class public abstract Lccc71/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lccc71/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lccc71/a/e;->a:Lccc71/a/e;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 13
    sget-object v0, Lccc71/a/e;->a:Lccc71/a/e;

    if-nez v0, :cond_0

    invoke-static {}, Lccc71/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lccc71/a/f;

    invoke-direct {v0}, Lccc71/a/f;-><init>()V

    sput-object v0, Lccc71/a/e;->a:Lccc71/a/e;

    :cond_0
    :goto_0
    sget-object v0, Lccc71/a/e;->a:Lccc71/a/e;

    invoke-virtual {v0, p0}, Lccc71/a/e;->a(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_1
    new-instance v0, Lccc71/a/g;

    invoke-direct {v0}, Lccc71/a/g;-><init>()V

    sput-object v0, Lccc71/a/e;->a:Lccc71/a/e;

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Z
.end method
