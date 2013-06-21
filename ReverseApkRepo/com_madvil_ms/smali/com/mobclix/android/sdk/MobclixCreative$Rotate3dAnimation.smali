.class Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Rotate3dAnimation"
.end annotation


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mReverse:Z

.field private final mToDegrees:F

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;


# direct methods
.method public constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;FFFFFZ)V
    .locals 0
    .parameter
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "depthZ"
    .parameter "reverse"

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 1320
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1322
    iput p2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mFromDegrees:F

    .line 1323
    iput p3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mToDegrees:F

    .line 1324
    iput p4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mCenterX:F

    .line 1325
    iput p5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mCenterY:F

    .line 1326
    iput p6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mDepthZ:F

    .line 1327
    iput-boolean p7, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mReverse:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v8, 0x0

    .line 1338
    iget v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mFromDegrees:F

    .line 1339
    .local v4, fromDegrees:F
    iget v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 1341
    .local v3, degrees:F
    iget v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mCenterX:F

    .line 1342
    .local v1, centerX:F
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mCenterY:F

    .line 1343
    .local v2, centerY:F
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 1345
    .local v0, camera:Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 1347
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 1348
    iget-boolean v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mReverse:Z

    if-eqz v6, :cond_0

    .line 1349
    iget v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mDepthZ:F

    mul-float/2addr v6, p1

    invoke-virtual {v0, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1353
    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1354
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1355
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 1357
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1358
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1359
    return-void

    .line 1351
    :cond_0
    iget v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mDepthZ:F

    const/high16 v7, 0x3f80

    sub-float/2addr v7, p1

    mul-float/2addr v6, v7

    invoke-virtual {v0, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 1332
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1333
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 1334
    return-void
.end method
