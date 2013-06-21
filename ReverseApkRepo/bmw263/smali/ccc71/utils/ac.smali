.class final Lccc71/utils/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lccc71/utils/m;


# instance fields
.field final synthetic a:Lccc71/utils/ab;

.field private final synthetic b:Lccc71/bmw/data/a/d;


# direct methods
.method constructor <init>(Lccc71/utils/ab;Lccc71/bmw/data/a/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/ac;->a:Lccc71/utils/ab;

    iput-object p2, p0, Lccc71/utils/ac;->b:Lccc71/bmw/data/a/d;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 523
    new-instance v0, Lccc71/bmw/data/a/e;

    iget-object v1, p0, Lccc71/utils/ac;->a:Lccc71/utils/ab;

    invoke-static {v1}, Lccc71/utils/ab;->a(Lccc71/utils/ab;)Lccc71/utils/aa;

    move-result-object v1

    iget-object v1, v1, Lccc71/utils/aa;->a:Lccc71/utils/y;

    invoke-static {v1}, Lccc71/utils/y;->a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;

    move-result-object v1

    invoke-static {v1}, Lccc71/utils/ccc71_list_view;->c(Lccc71/utils/ccc71_list_view;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccc71/bmw/data/a/e;-><init>(Landroid/content/Context;)V

    .line 524
    invoke-virtual {v0}, Lccc71/bmw/data/a/e;->a()V

    .line 525
    iget-object v1, p0, Lccc71/utils/ac;->b:Lccc71/bmw/data/a/d;

    iput p1, v1, Lccc71/bmw/data/a/d;->d:I

    .line 526
    iget-object v1, p0, Lccc71/utils/ac;->b:Lccc71/bmw/data/a/d;

    invoke-virtual {v0, v1}, Lccc71/bmw/data/a/e;->a(Lccc71/bmw/data/a/d;)V

    .line 527
    invoke-virtual {v0}, Lccc71/bmw/data/a/e;->b()V

    .line 529
    iget-object v0, p0, Lccc71/utils/ac;->a:Lccc71/utils/ab;

    invoke-static {v0}, Lccc71/utils/ab;->a(Lccc71/utils/ab;)Lccc71/utils/aa;

    move-result-object v0

    iget-object v0, v0, Lccc71/utils/aa;->a:Lccc71/utils/y;

    invoke-static {v0}, Lccc71/utils/y;->a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/utils/ccc71_list_view;->b()V

    .line 530
    return-void
.end method
