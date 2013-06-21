.class final Lccc71/pmw/lib/dn;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/dm;

.field private final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/dm;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/dn;->a:Lccc71/pmw/lib/dm;

    iput-object p2, p0, Lccc71/pmw/lib/dn;->b:Ljava/io/File;

    .line 1345
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1350
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1352
    iget-object v0, p0, Lccc71/pmw/lib/dn;->b:Ljava/io/File;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Ljava/io/File;)Z

    .line 1353
    return-void
.end method
