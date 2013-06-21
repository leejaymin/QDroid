.class final Lccc71/bmw/lib/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_innner_estimates;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:I

.field private final synthetic f:[I


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_innner_estimates;IIII[I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/bo;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    iput p2, p0, Lccc71/bmw/lib/bo;->b:I

    iput p3, p0, Lccc71/bmw/lib/bo;->c:I

    iput p4, p0, Lccc71/bmw/lib/bo;->d:I

    iput p5, p0, Lccc71/bmw/lib/bo;->e:I

    iput-object p6, p0, Lccc71/bmw/lib/bo;->f:[I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 73
    iget-object v1, p0, Lccc71/bmw/lib/bo;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    iget-object v0, p0, Lccc71/bmw/lib/bo;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_innner_estimates;->d(Lccc71/bmw/lib/bmw_innner_estimates;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->a(Lccc71/bmw/lib/bmw_innner_estimates;Z)V

    .line 74
    iget-object v0, p0, Lccc71/bmw/lib/bo;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_innner_estimates;->e(Lccc71/bmw/lib/bmw_innner_estimates;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/bo;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_innner_estimates;->d(Lccc71/bmw/lib/bmw_innner_estimates;)Z

    move-result v1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_settings;->b(Landroid/content/Context;Z)V

    .line 76
    iget-object v0, p0, Lccc71/bmw/lib/bo;->a:Lccc71/bmw/lib/bmw_innner_estimates;

    iget v2, p0, Lccc71/bmw/lib/bo;->b:I

    iget v3, p0, Lccc71/bmw/lib/bo;->c:I

    iget v4, p0, Lccc71/bmw/lib/bo;->d:I

    iget v5, p0, Lccc71/bmw/lib/bo;->e:I

    iget-object v6, p0, Lccc71/bmw/lib/bo;->f:[I

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lccc71/bmw/lib/bmw_innner_estimates;->a(Lccc71/bmw/lib/bmw_innner_estimates;Landroid/view/View$OnClickListener;IIII[I)V

    .line 77
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
