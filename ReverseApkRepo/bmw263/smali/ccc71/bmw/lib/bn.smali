.class final Lccc71/bmw/lib/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_innner_estimates;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_innner_estimates;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/bn;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lccc71/bmw/lib/bn;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    sget v1, Lccc71/bmw/lib/d;->bL:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_innner_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_ge_view;

    .line 173
    iget-object v1, p0, Lccc71/bmw/lib/bn;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_innner_estimates;->a(Lccc71/bmw/lib/bmw_innner_estimates;)[[I

    move-result-object v1

    array-length v4, v1

    move v1, v2

    move v3, v2

    .line 174
    :goto_0
    if-lt v1, v4, :cond_3

    .line 178
    if-eqz v3, :cond_2

    .line 180
    iget-object v1, p0, Lccc71/bmw/lib/bn;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-virtual {v0}, Lccc71/utils/ccc71_ge_view;->a()I

    move-result v3

    invoke-static {v1, v3}, Lccc71/bmw/lib/bmw_innner_estimates;->a(Lccc71/bmw/lib/bmw_innner_estimates;I)V

    .line 183
    :cond_0
    iget-object v1, p0, Lccc71/bmw/lib/bn;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_innner_estimates;->b(Lccc71/bmw/lib/bmw_innner_estimates;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Lccc71/bmw/lib/bmw_innner_estimates;->a(Lccc71/bmw/lib/bmw_innner_estimates;I)V

    iget-object v1, p0, Lccc71/bmw/lib/bn;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_innner_estimates;->a(Lccc71/bmw/lib/bmw_innner_estimates;)[[I

    move-result-object v1

    array-length v1, v1

    if-lt v3, v1, :cond_1

    .line 184
    iget-object v1, p0, Lccc71/bmw/lib/bn;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-static {v1, v2}, Lccc71/bmw/lib/bmw_innner_estimates;->a(Lccc71/bmw/lib/bmw_innner_estimates;I)V

    .line 185
    :cond_1
    iget-object v1, p0, Lccc71/bmw/lib/bn;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_innner_estimates;->a(Lccc71/bmw/lib/bmw_innner_estimates;)[[I

    move-result-object v1

    iget-object v3, p0, Lccc71/bmw/lib/bn;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-static {v3}, Lccc71/bmw/lib/bmw_innner_estimates;->b(Lccc71/bmw/lib/bmw_innner_estimates;)I

    move-result v3

    aget-object v1, v1, v3

    aget v1, v1, v6

    if-eqz v1, :cond_0

    .line 188
    :cond_2
    iget-object v1, p0, Lccc71/bmw/lib/bn;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_innner_estimates;->c(Lccc71/bmw/lib/bmw_innner_estimates;)Lccc71/bmw/data/a;

    move-result-object v1

    iget-wide v1, v1, Lccc71/bmw/data/a;->a:J

    iget-object v3, p0, Lccc71/bmw/lib/bn;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-static {v3}, Lccc71/bmw/lib/bmw_innner_estimates;->b(Lccc71/bmw/lib/bmw_innner_estimates;)I

    move-result v3

    iget-object v4, p0, Lccc71/bmw/lib/bn;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-static {v4}, Lccc71/bmw/lib/bmw_innner_estimates;->a(Lccc71/bmw/lib/bmw_innner_estimates;)[[I

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lccc71/utils/ccc71_ge_view;->setEstimates(JI[[I)V

    .line 189
    return-void

    .line 176
    :cond_3
    iget-object v5, p0, Lccc71/bmw/lib/bn;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-static {v5}, Lccc71/bmw/lib/bmw_innner_estimates;->a(Lccc71/bmw/lib/bmw_innner_estimates;)[[I

    move-result-object v5

    aget-object v5, v5, v1

    aget v5, v5, v6

    add-int/2addr v3, v5

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
