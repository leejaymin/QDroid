.class final Lcom/mobclix/android/sdk/x;
.super Landroid/view/animation/Animation;


# instance fields
.field a:Landroid/view/View;

.field b:F

.field c:F

.field d:F

.field e:F

.field final synthetic f:Lcom/mobclix/android/sdk/MobclixBrowserActivity;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/view/View;FFFF)V
    .locals 1

    iput-object p1, p0, Lcom/mobclix/android/sdk/x;->f:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p2, p0, Lcom/mobclix/android/sdk/x;->a:Landroid/view/View;

    iput p5, p0, Lcom/mobclix/android/sdk/x;->b:F

    iget v0, p0, Lcom/mobclix/android/sdk/x;->b:F

    sub-float v0, p6, v0

    iput v0, p0, Lcom/mobclix/android/sdk/x;->c:F

    iput p3, p0, Lcom/mobclix/android/sdk/x;->d:F

    iget v0, p0, Lcom/mobclix/android/sdk/x;->d:F

    sub-float v0, p4, v0

    iput v0, p0, Lcom/mobclix/android/sdk/x;->e:F

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/x;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/mobclix/android/sdk/x;->b:F

    iget v2, p0, Lcom/mobclix/android/sdk/x;->c:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/mobclix/android/sdk/x;->d:F

    iget v2, p0, Lcom/mobclix/android/sdk/x;->e:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/mobclix/android/sdk/x;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
