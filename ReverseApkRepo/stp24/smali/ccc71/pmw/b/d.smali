.class public final Lccc71/pmw/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/ArrayList;

.field final synthetic c:Lccc71/pmw/b/c;


# direct methods
.method public constructor <init>(Lccc71/pmw/b/c;)V
    .locals 1
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lccc71/pmw/b/d;->c:Lccc71/pmw/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/b/d;->b:Ljava/util/ArrayList;

    return-void
.end method
