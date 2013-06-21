.class final Lccc71/pmw/lib/fm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/fl;

.field private final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/fl;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/fm;->a:Lccc71/pmw/lib/fl;

    iput-object p2, p0, Lccc71/pmw/lib/fm;->b:Ljava/util/ArrayList;

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 849
    iget-object v0, p0, Lccc71/pmw/lib/fm;->a:Lccc71/pmw/lib/fl;

    invoke-static {v0}, Lccc71/pmw/lib/fl;->a(Lccc71/pmw/lib/fl;)Lccc71/pmw/lib/fk;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/fk;->a(Lccc71/pmw/lib/fk;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_easy_apps;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/fm;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    :try_start_0
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v0, p0, Lccc71/pmw/lib/fm;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
