.class final Lccc71/pmw/lib/ef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ef;->a:Ljava/lang/String;

    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 974
    invoke-static {}, Lccc71/pmw/lib/pmw_cpu;->g()Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 976
    invoke-static {}, Lccc71/pmw/lib/pmw_cpu;->g()Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ef;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;Ljava/lang/String;)V

    .line 977
    invoke-static {}, Lccc71/pmw/lib/pmw_cpu;->g()Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->h(Lccc71/pmw/lib/pmw_cpu;)V

    .line 979
    invoke-static {}, Lccc71/pmw/lib/pmw_cpu;->g()Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->n:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_cpu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 980
    if-eqz v0, :cond_2

    .line 982
    invoke-static {}, Lccc71/pmw/lib/pmw_cpu;->g()Lccc71/pmw/lib/pmw_cpu;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_cpu;->j(Lccc71/pmw/lib/pmw_cpu;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 983
    invoke-static {}, Lccc71/pmw/lib/pmw_cpu;->g()Lccc71/pmw/lib/pmw_cpu;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_cpu;->f(Lccc71/pmw/lib/pmw_cpu;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lccc71/pmw/lib/pmw_cpu;->g()Lccc71/pmw/lib/pmw_cpu;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_cpu;->f(Lccc71/pmw/lib/pmw_cpu;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_3

    :cond_0
    invoke-static {}, Lccc71/pmw/lib/pmw_cpu;->g()Lccc71/pmw/lib/pmw_cpu;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_cpu;->d(Lccc71/pmw/lib/pmw_cpu;)[I

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lccc71/pmw/lib/pmw_cpu;->g()Lccc71/pmw/lib/pmw_cpu;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_cpu;->d(Lccc71/pmw/lib/pmw_cpu;)[I

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_3

    .line 984
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 989
    :cond_2
    :goto_0
    return-void

    .line 986
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
