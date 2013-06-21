.class public final Lccc71/utils/i;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Lccc71/utils/m;

.field private b:I

.field private c:Lccc71/utils/ccc71_color_view;

.field private d:Lccc71/utils/ccc71_color_gradient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lccc71/utils/m;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lccc71/utils/i;->a:Lccc71/utils/m;

    .line 28
    iput p3, p0, Lccc71/utils/i;->b:I

    .line 29
    return-void
.end method

.method static synthetic a(Lccc71/utils/i;)Lccc71/utils/m;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lccc71/utils/i;->a:Lccc71/utils/m;

    return-object v0
.end method

.method static synthetic b(Lccc71/utils/i;)Lccc71/utils/ccc71_color_view;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lccc71/utils/i;->c:Lccc71/utils/ccc71_color_view;

    return-object v0
.end method

.method static synthetic c(Lccc71/utils/i;)Lccc71/utils/ccc71_color_gradient;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lccc71/utils/i;->d:Lccc71/utils/ccc71_color_gradient;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v1, Lccc71/utils/j;

    invoke-direct {v1, p0}, Lccc71/utils/j;-><init>(Lccc71/utils/i;)V

    .line 44
    new-instance v2, Lccc71/utils/k;

    invoke-direct {v2, p0}, Lccc71/utils/k;-><init>(Lccc71/utils/i;)V

    .line 51
    new-instance v3, Lccc71/utils/l;

    invoke-direct {v3, p0}, Lccc71/utils/l;-><init>(Lccc71/utils/i;)V

    .line 59
    sget v0, Lccc71/utils/e;->a:I

    invoke-virtual {p0, v0}, Lccc71/utils/i;->setContentView(I)V

    .line 60
    sget v0, Lccc71/utils/d;->b:I

    invoke-virtual {p0, v0}, Lccc71/utils/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_color_view;

    iput-object v0, p0, Lccc71/utils/i;->c:Lccc71/utils/ccc71_color_view;

    .line 61
    sget v0, Lccc71/utils/d;->a:I

    invoke-virtual {p0, v0}, Lccc71/utils/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_color_gradient;

    iput-object v0, p0, Lccc71/utils/i;->d:Lccc71/utils/ccc71_color_gradient;

    .line 62
    iget-object v0, p0, Lccc71/utils/i;->c:Lccc71/utils/ccc71_color_view;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_color_view;->setOnColorSelectedListener(Lccc71/utils/n;)V

    .line 63
    iget-object v0, p0, Lccc71/utils/i;->c:Lccc71/utils/ccc71_color_view;

    invoke-virtual {v0, v3}, Lccc71/utils/ccc71_color_view;->setOnColorChangeUpdater(Lccc71/utils/m;)V

    .line 64
    iget-object v0, p0, Lccc71/utils/i;->d:Lccc71/utils/ccc71_color_gradient;

    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_color_gradient;->setOnColorChangeUpdater(Lccc71/utils/m;)V

    .line 65
    iget-object v0, p0, Lccc71/utils/i;->d:Lccc71/utils/ccc71_color_gradient;

    iget v1, p0, Lccc71/utils/i;->b:I

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_color_gradient;->setInitialColor(I)V

    .line 66
    iget-object v0, p0, Lccc71/utils/i;->c:Lccc71/utils/ccc71_color_view;

    iget v1, p0, Lccc71/utils/i;->b:I

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_color_view;->setInitialColor(I)V

    .line 68
    const-string v0, "Pick a Color"

    invoke-virtual {p0, v0}, Lccc71/utils/i;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method
