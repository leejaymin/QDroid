.class Ljiqqa/recipe/QuickAction$1;
.super Ljava/lang/Object;
.source "QuickAction.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljiqqa/recipe/QuickAction;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljiqqa/recipe/QuickAction;


# direct methods
.method constructor <init>(Ljiqqa/recipe/QuickAction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ljiqqa/recipe/QuickAction$1;->this$0:Ljiqqa/recipe/QuickAction;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .parameter "t"

    .prologue
    .line 72
    const v1, 0x3fc66666

    mul-float/2addr v1, p1

    const v2, 0x3f8ccccd

    sub-float v0, v1, v2

    .line 74
    .local v0, inner:F
    const v1, 0x3f99999a

    mul-float v2, v0, v0

    sub-float/2addr v1, v2

    return v1
.end method
