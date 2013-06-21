.class public final Lcom/google/devtools/simple/runtime/components/android/Image;
.super Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;
.source "Image.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->BASIC:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "Component for displaying images.  The picture to display, and other aspects of the Image\'s appearance, can be specified in the Designer or in the Blocks Editor."
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# instance fields
.field private picturePath:Ljava/lang/String;

.field private final view:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Image;->picturePath:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/Image$1;

    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/devtools/simple/runtime/components/android/Image$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Image;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Image;->view:Landroid/widget/ImageView;

    .line 59
    invoke-interface {p1, p0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$add(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V

    .line 60
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Image;->view:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 61
    return-void
.end method


# virtual methods
.method public Animation(Ljava/lang/String;)V
    .locals 1
    .parameter "animation"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Image;->view:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/AnimationUtil;->ApplyAnimation(Landroid/view/View;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public Initialize()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public Picture()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Image;->picturePath:Ljava/lang/String;

    return-object v0
.end method

.method public Picture(Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 97
    if-nez p1, :cond_0

    const-string v2, ""

    :goto_0
    iput-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Image;->picturePath:Ljava/lang/String;

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Image;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v2}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Image;->picturePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->getDrawable(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Image;->view:Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/google/devtools/simple/runtime/components/android/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 108
    return-void

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v2, p1

    .line 97
    goto :goto_0

    .line 102
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 103
    .local v1, ioe:Ljava/io/IOException;
    const-string v2, "Image"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Image;->picturePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Image;->view:Landroid/widget/ImageView;

    return-object v0
.end method
