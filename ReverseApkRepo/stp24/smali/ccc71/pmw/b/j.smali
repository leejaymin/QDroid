.class final Lccc71/pmw/b/j;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/io/File;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/b/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lccc71/pmw/b/j;->b:Ljava/io/File;

    iput-object p3, p0, Lccc71/pmw/b/j;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lccc71/pmw/b/j;->d:Z

    .line 153
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 160
    iget-object v0, p0, Lccc71/pmw/b/j;->a:Landroid/content/Context;

    iget-object v1, p0, Lccc71/pmw/b/j;->b:Ljava/io/File;

    iget-object v2, p0, Lccc71/pmw/b/j;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lccc71/pmw/b/j;->d:Z

    invoke-static {v0, v1, v2, v3}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Z)V

    .line 161
    return-void
.end method
