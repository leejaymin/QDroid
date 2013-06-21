.class final Lccc71/pmw/lib/hx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_main;

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/hx;->a:Lccc71/pmw/lib/pmw_main;

    iput-object p2, p0, Lccc71/pmw/lib/hx;->b:Landroid/app/Dialog;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lccc71/pmw/lib/hx;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/hx;->b:Landroid/app/Dialog;

    sget v1, Lccc71/pmw/lib/d;->Z:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/widget/Button;

    .line 262
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->d()V

    .line 265
    iget-object v1, p0, Lccc71/pmw/lib/hx;->a:Lccc71/pmw/lib/pmw_main;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_recorder_service;->b(Landroid/content/Context;)V

    .line 266
    sget v1, Lccc71/pmw/lib/g;->bW:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 267
    sget v1, Lccc71/pmw/lib/c;->W:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 276
    :goto_1
    iget-object v0, p0, Lccc71/pmw/lib/hx;->a:Lccc71/pmw/lib/pmw_main;

    iget-object v1, p0, Lccc71/pmw/lib/hx;->b:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_main;->a(Landroid/app/Dialog;)V

    .line 277
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/hx;->a:Lccc71/pmw/lib/pmw_main;

    sget v1, Lccc71/pmw/lib/d;->Z:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_1
    iget-object v1, p0, Lccc71/pmw/lib/hx;->a:Lccc71/pmw/lib/pmw_main;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_recorder_service;->a(Landroid/content/Context;)V

    .line 272
    sget v1, Lccc71/pmw/lib/g;->bX:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 273
    sget v1, Lccc71/pmw/lib/c;->an:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method
