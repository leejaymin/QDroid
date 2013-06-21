.class final Lccc71/pmw/lib/n;
.super Lccc71/utils/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/m;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/m;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lccc71/pmw/lib/n;->a:Lccc71/pmw/lib/m;

    invoke-direct {p0}, Lccc71/utils/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 2
    .parameter

    .prologue
    .line 182
    new-instance v0, Lccc71/pmw/lib/o;

    invoke-direct {v0, p0, p1}, Lccc71/pmw/lib/o;-><init>(Lccc71/pmw/lib/n;Ljava/io/File;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 219
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/o;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 220
    return-void
.end method
