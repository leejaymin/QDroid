.class final Lccc71/pmw/lib/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/at_build;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/at_build;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/m;->a:Lccc71/pmw/lib/at_build;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/m;)Lccc71/pmw/lib/at_build;
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lccc71/pmw/lib/m;->a:Lccc71/pmw/lib/at_build;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 223
    new-instance v5, Lccc71/pmw/lib/n;

    invoke-direct {v5, p0}, Lccc71/pmw/lib/n;-><init>(Lccc71/pmw/lib/m;)V

    .line 225
    new-instance v0, Lccc71/utils/h;

    iget-object v1, p0, Lccc71/pmw/lib/m;->a:Lccc71/pmw/lib/at_build;

    iget-object v2, p0, Lccc71/pmw/lib/m;->a:Lccc71/pmw/lib/at_build;

    sget v3, Lccc71/pmw/lib/g;->dp:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/at_build;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccc71/pmw/lib/m;->a:Lccc71/pmw/lib/at_build;

    invoke-static {v3}, Lccc71/pmw/lib/at_build;->a(Lccc71/pmw/lib/at_build;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lccc71/utils/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLccc71/utils/m;)V

    .line 226
    invoke-virtual {v0}, Lccc71/utils/h;->a()V

    .line 228
    invoke-virtual {v0}, Lccc71/utils/h;->show()V

    .line 229
    return-void
.end method
