.class public final Lccc71/pmw/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lccc71/pmw/a/b;

.field public d:Landroid/content/pm/ApplicationInfo;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lccc71/pmw/a/b;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    .line 47
    iput-object p2, p0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    .line 48
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lccc71/pmw/a/a;->h:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method public constructor <init>(Lccc71/pmw/a/b;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    .line 64
    iput-object p2, p0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    .line 65
    iput-object p3, p0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lccc71/pmw/a/a;->f:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method public constructor <init>(Lccc71/pmw/a/b;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    .line 56
    iput-object p2, p0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lccc71/pmw/a/a;->h:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method public constructor <init>(ZLccc71/pmw/a/b;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lccc71/pmw/a/a;->a:Z

    .line 38
    iput-object p2, p0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    .line 39
    iput-object p3, p0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    .line 40
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    .line 42
    return-void
.end method
