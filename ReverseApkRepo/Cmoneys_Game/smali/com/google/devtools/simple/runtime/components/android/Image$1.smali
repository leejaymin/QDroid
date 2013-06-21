.class Lcom/google/devtools/simple/runtime/components/android/Image$1;
.super Landroid/widget/ImageView;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Image;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/Image;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Image;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Image$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/Image;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/widget/ImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 54
    const/4 v0, 0x1

    return v0
.end method
