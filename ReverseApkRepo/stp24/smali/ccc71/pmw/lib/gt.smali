.class final Lccc71/pmw/lib/gt;
.super Lccc71/utils/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/gs;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/gs;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lccc71/pmw/lib/gt;->a:Lccc71/pmw/lib/gs;

    invoke-direct {p0}, Lccc71/utils/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 2
    .parameter

    .prologue
    .line 468
    new-instance v0, Lccc71/pmw/lib/gu;

    invoke-direct {v0, p0, p1}, Lccc71/pmw/lib/gu;-><init>(Lccc71/pmw/lib/gt;Ljava/io/File;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 579
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/gu;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 580
    return-void
.end method
