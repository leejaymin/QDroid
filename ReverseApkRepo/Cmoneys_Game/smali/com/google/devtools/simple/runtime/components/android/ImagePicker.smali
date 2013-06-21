.class public Lcom/google/devtools/simple/runtime/components/android/ImagePicker;
.super Lcom/google/devtools/simple/runtime/components/android/ButtonBase;
.source "ImagePicker.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->MEDIA:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>A special-purpose button. When the user taps an image picker, the device\'s image gallery appears, and the user can choose an image. After the user picks an image, the property <code>ImagePath</code> is set to a name that designates the image.</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private final container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

.field private imagePath:Ljava/lang/String;

.field private requestCode:I


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    .line 51
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/ImagePicker;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    .line 52
    return-void
.end method


# virtual methods
.method public AfterPicking()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 108
    const-string v0, "AfterPicking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public BeforePicking()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 98
    const-string v0, "BeforePicking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public ImagePath()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ImagePicker;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public click()V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ImagePicker;->BeforePicking()V

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    .local v0, intent:Landroid/content/Intent;
    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/ImagePicker;->requestCode:I

    if-nez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ImagePicker;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForActivityResult(Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;)I

    move-result v1

    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/ImagePicker;->requestCode:I

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ImagePicker;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/devtools/simple/runtime/components/android/ImagePicker;->requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 72
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 83
    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/ImagePicker;->requestCode:I

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 84
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 85
    .local v0, selectedImage:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ImagePicker;->imagePath:Ljava/lang/String;

    .line 86
    const-string v1, "ImagePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image imagePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ImagePicker;->imagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ImagePicker;->AfterPicking()V

    .line 89
    .end local v0           #selectedImage:Landroid/net/Uri;
    :cond_0
    return-void
.end method
