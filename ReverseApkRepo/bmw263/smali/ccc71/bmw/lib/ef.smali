.class final Lccc71/bmw/lib/ef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/ee;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lccc71/bmw/lib/ee;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/ef;->a:Lccc71/bmw/lib/ee;

    iput p2, p0, Lccc71/bmw/lib/ef;->b:I

    iput p3, p0, Lccc71/bmw/lib/ef;->c:I

    iput p4, p0, Lccc71/bmw/lib/ef;->d:I

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lccc71/bmw/lib/ef;->a:Lccc71/bmw/lib/ee;

    invoke-static {v0}, Lccc71/bmw/lib/ee;->a(Lccc71/bmw/lib/ee;)Lccc71/bmw/lib/bmw_use_times;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->dL:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_use_times;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    iget-object v1, p0, Lccc71/bmw/lib/ef;->a:Lccc71/bmw/lib/ee;

    invoke-static {v1}, Lccc71/bmw/lib/ee;->a(Lccc71/bmw/lib/ee;)Lccc71/bmw/lib/bmw_use_times;

    move-result-object v1

    sget v2, Lccc71/bmw/lib/d;->dK:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_use_times;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 163
    iget v2, p0, Lccc71/bmw/lib/ef;->b:I

    neg-int v2, v2

    mul-int/lit16 v2, v2, 0xe10

    iget v3, p0, Lccc71/bmw/lib/ef;->c:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v2, v3}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget v0, p0, Lccc71/bmw/lib/ef;->d:I

    neg-int v0, v0

    mul-int/lit16 v0, v0, 0xe10

    iget v2, p0, Lccc71/bmw/lib/ef;->c:I

    div-int/2addr v0, v2

    int-to-long v2, v0

    invoke-static {v2, v3}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method
