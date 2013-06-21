.class public abstract Lccc71/pmw/a/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Ljava/lang/String;

.field private static b:Ljava/lang/Object;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "#!/system/bin/sh\n"

    sput-object v0, Lccc71/pmw/a/z;->a:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/pmw/a/z;->b:Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0}, Lccc71/pmw/a/z;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/a/z;->c:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic a(Lccc71/pmw/a/z;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lccc71/pmw/a/z;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lccc71/pmw/a/z;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public final a(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    new-instance v0, Lccc71/pmw/a/ab;

    invoke-direct {v0, p0, p1, p2}, Lccc71/pmw/a/ab;-><init>(Lccc71/pmw/a/z;Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 121
    invoke-virtual {v0, v1}, Lccc71/pmw/a/ab;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 122
    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 33
    invoke-virtual {p0}, Lccc71/pmw/a/z;->a()Ljava/lang/String;

    move-result-object v1

    .line 35
    new-instance v0, Lccc71/pmw/b/h;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 36
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public final b(Landroid/os/Handler;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    new-instance v0, Lccc71/pmw/a/aa;

    invoke-direct {v0, p0, p1}, Lccc71/pmw/a/aa;-><init>(Lccc71/pmw/a/z;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 69
    invoke-virtual {v0, v1}, Lccc71/pmw/a/aa;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 70
    return-void
.end method
