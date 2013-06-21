.class public Lmagmamobile/app/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final DURATION:I = 0xbb8

.field private static final LOGOFILE:Ljava/lang/String; = "logo.gif"

.field private static final STARTTIME:I = 0x64


# instance fields
.field private activity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private cancel:Z

.field private duration:I

.field private handler:Landroid/os/Handler;

.field private image:Landroid/graphics/drawable/BitmapDrawable;

.field private imageview:Landroid/widget/ImageView;

.field private layout:Landroid/widget/LinearLayout;

.field private starttime:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, activity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput-object p1, p0, Lmagmamobile/app/SplashActivity;->activity:Ljava/lang/Class;

    .line 47
    const/16 v0, 0x64

    iput v0, p0, Lmagmamobile/app/SplashActivity;->starttime:I

    .line 48
    const/16 v0, 0xbb8

    iput v0, p0, Lmagmamobile/app/SplashActivity;->duration:I

    .line 49
    return-void
.end method

.method static synthetic access$0(Lmagmamobile/app/SplashActivity;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lmagmamobile/app/SplashActivity;->image:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method static synthetic access$1(Lmagmamobile/app/SplashActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lmagmamobile/app/SplashActivity;->starttime:I

    return v0
.end method

.method static synthetic access$2(Lmagmamobile/app/SplashActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lmagmamobile/app/SplashActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lmagmamobile/app/SplashActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lmagmamobile/app/SplashActivity;->duration:I

    return v0
.end method

.method static synthetic access$4(Lmagmamobile/app/SplashActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lmagmamobile/app/SplashActivity;->cancel:Z

    return v0
.end method

.method static synthetic access$5(Lmagmamobile/app/SplashActivity;)Ljava/lang/Class;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lmagmamobile/app/SplashActivity;->activity:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lmagmamobile/app/SplashActivity;->duration:I

    return v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lmagmamobile/app/SplashActivity;->starttime:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 15
    .parameter "msg"

    .prologue
    .line 167
    iget-object v1, p0, Lmagmamobile/app/SplashActivity;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v5, v1

    .line 168
    .local v5, mx:F
    iget-object v1, p0, Lmagmamobile/app/SplashActivity;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v6, v1

    .line 173
    .local v6, my:F
    invoke-virtual {p0}, Lmagmamobile/app/SplashActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    .line 174
    .local v13, w:Landroid/view/WindowManager;
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 175
    .local v10, d:Landroid/view/Display;
    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v14

    .line 177
    .local v14, width:I
    move v11, v14

    .line 178
    .local v11, sx:I
    int-to-float v1, v14

    div-float v2, v6, v5

    mul-float/2addr v1, v2

    float-to-int v12, v1

    .line 180
    .local v12, sy:I
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 182
    .local v9, anims:Landroid/view/animation/AnimationSet;
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x3c06

    const/4 v4, 0x0

    invoke-direct {v7, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 183
    .local v7, anim2:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v7, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 184
    invoke-virtual {v9, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 186
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x4120

    const/high16 v2, 0x3f80

    const/high16 v3, 0x4120

    const/high16 v4, 0x3f80

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 187
    .local v0, anim3:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 188
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 190
    new-instance v8, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x43b4

    const/4 v2, 0x0

    invoke-direct {v8, v1, v2, v5, v6}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 191
    .local v8, anim4:Landroid/view/animation/RotateAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 192
    invoke-virtual {v9, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 203
    iget-object v1, p0, Lmagmamobile/app/SplashActivity;->imageview:Landroid/widget/ImageView;

    iget-object v2, p0, Lmagmamobile/app/SplashActivity;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v1, p0, Lmagmamobile/app/SplashActivity;->imageview:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v1, p0, Lmagmamobile/app/SplashActivity;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 206
    const/4 v1, 0x1

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lmagmamobile/app/SplashActivity;->handler:Landroid/os/Handler;

    .line 71
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmagmamobile/app/SplashActivity;->imageview:Landroid/widget/ImageView;

    .line 72
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmagmamobile/app/SplashActivity;->layout:Landroid/widget/LinearLayout;

    .line 73
    iget-object v0, p0, Lmagmamobile/app/SplashActivity;->layout:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 74
    iget-object v0, p0, Lmagmamobile/app/SplashActivity;->layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 75
    iget-object v0, p0, Lmagmamobile/app/SplashActivity;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmagmamobile/app/SplashActivity;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lmagmamobile/app/SplashActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lmagmamobile/app/SplashActivity;->setContentView(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 93
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 99
    new-instance v0, Lmagmamobile/app/SplashActivity$1;

    invoke-direct {v0, p0}, Lmagmamobile/app/SplashActivity$1;-><init>(Lmagmamobile/app/SplashActivity;)V

    .line 155
    invoke-virtual {v0}, Lmagmamobile/app/SplashActivity$1;->start()V

    .line 156
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmagmamobile/app/SplashActivity;->cancel:Z

    .line 162
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 52
    iput p1, p0, Lmagmamobile/app/SplashActivity;->duration:I

    .line 53
    return-void
.end method

.method public setStartTime(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 60
    iput p1, p0, Lmagmamobile/app/SplashActivity;->starttime:I

    .line 61
    return-void
.end method
