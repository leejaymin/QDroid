.class public final Lccc71/pmw/lib/gh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/Object;

.field static b:Z

.field static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/pmw/lib/gh;->a:Ljava/lang/Object;

    .line 17
    sput-boolean v1, Lccc71/pmw/lib/gh;->b:Z

    .line 18
    sput-boolean v1, Lccc71/pmw/lib/gh;->c:Z

    .line 13
    return-void
.end method

.method static a()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lccc71/pmw/b/h;

    invoke-direct {v0}, Lccc71/pmw/b/h;-><init>()V

    .line 88
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    const-string v0, "lastmod"

    invoke-static {p0, v0, p1}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    .line 93
    const-string v0, "cp"

    invoke-static {p0, v0, p1}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    .line 94
    const-string v0, "du"

    invoke-static {p0, v0, p1}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    .line 95
    const-string v0, "chown"

    invoke-static {p0, v0, p1}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    .line 96
    const-string v0, "sysctl"

    invoke-static {p0, v0, p1}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    .line 97
    const-string v0, "dexopt-wrapper"

    invoke-static {p0, v0, p1}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    .line 98
    const-string v0, "STSystem.apk"

    invoke-static {p0, v0, p1}, Lccc71/pmw/b/h;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    .line 99
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-static {p0}, Lccc71/utils/ah;->a(Landroid/content/Context;)V

    .line 27
    sget-boolean v0, Lccc71/pmw/lib/gh;->c:Z

    .line 28
    new-instance v1, Lccc71/pmw/lib/gi;

    invoke-direct {v1, p0, p1}, Lccc71/pmw/lib/gi;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 78
    invoke-virtual {v1, v2}, Lccc71/pmw/lib/gi;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 80
    return v0
.end method
