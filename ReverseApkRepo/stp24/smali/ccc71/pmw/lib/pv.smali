.class final Lccc71/pmw/lib/pv;
.super Lccc71/utils/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pu;

.field private final synthetic b:Lccc71/pmw/a/ah;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pu;Lccc71/pmw/a/ah;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lccc71/pmw/lib/pv;->a:Lccc71/pmw/lib/pu;

    iput-object p2, p0, Lccc71/pmw/lib/pv;->b:Lccc71/pmw/a/ah;

    invoke-direct {p0}, Lccc71/utils/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 4
    .parameter

    .prologue
    .line 479
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 480
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading voltage from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v1, Lccc71/pmw/lib/pw;

    iget-object v2, p0, Lccc71/pmw/lib/pv;->b:Lccc71/pmw/a/ah;

    invoke-direct {v1, p0, v2, v0}, Lccc71/pmw/lib/pw;-><init>(Lccc71/pmw/lib/pv;Lccc71/pmw/a/ah;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 512
    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pw;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 513
    return-void
.end method
