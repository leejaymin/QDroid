.class public Lcom/google/devtools/simple/runtime/components/android/Camera;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;
.implements Lcom/google/devtools/simple/runtime/components/Component;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->MEDIA:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "A component to take a picture using the device\'s camera. After the picture is taken, the name of the file on the phone containing the picture is available as an argument to the AfterPicture event. The file name can be used, for example, to set the Picture property of an Image component."
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# static fields
.field private static final CAMERA_INTENT:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE"

.field private static final CAMERA_OUTPUT:Ljava/lang/String; = "output"


# instance fields
.field private final container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

.field private imageFile:Landroid/net/Uri;

.field private final notice:Lcom/google/devtools/simple/runtime/components/android/Notifier;

.field private requestCode:I


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    .line 60
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/Notifier;

    invoke-direct {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/Notifier;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->notice:Lcom/google/devtools/simple/runtime/components/android/Notifier;

    .line 61
    return-void
.end method

.method private deleteFile(Landroid/net/Uri;)V
    .locals 6
    .parameter "fileUri"

    .prologue
    const-string v5, "CameraComponent"

    .line 128
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, fileToDelete:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const-string v2, "CameraComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v2, "CameraComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 136
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "CameraComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got security exception trying to delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public AfterPicture(Ljava/lang/String;)V
    .locals 3
    .parameter "image"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "image As String"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 144
    const-string v0, "AfterPicture"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public TakePicture()V
    .locals 11
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    const-string v9, "OK"

    const-string v8, "External Storage Error"

    const-string v7, "CameraComponent"

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 66
    .local v0, date:Ljava/util/Date;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, state:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 69
    const-string v6, "CameraComponent"

    const-string v6, "External storage is available and writable"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/Pictures/app_inventor_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->imageFile:Landroid/net/Uri;

    .line 75
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "_data"

    iget-object v7, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->imageFile:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v6, "mime_type"

    const-string v7, "image/jpeg"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v6, "title"

    iget-object v7, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->imageFile:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget v6, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->requestCode:I

    if-nez v6, :cond_0

    .line 81
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v6}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForActivityResult(Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;)I

    move-result v6

    iput v6, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->requestCode:I

    .line 84
    :cond_0
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v6}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 86
    .local v1, imageUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "output"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v6}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->requestCode:I

    invoke-virtual {v6, v2, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 98
    .end local v1           #imageUri:Landroid/net/Uri;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string v6, "mounted_ro"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 90
    const-string v3, "External storage is available but read-only."

    .line 91
    .local v3, message:Ljava/lang/String;
    const-string v6, "CameraComponent"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->notice:Lcom/google/devtools/simple/runtime/components/android/Notifier;

    const-string v7, "External Storage Error"

    const-string v7, "OK"

    invoke-virtual {v6, v3, v8, v9}, Lcom/google/devtools/simple/runtime/components/android/Notifier;->ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v3           #message:Ljava/lang/String;
    :cond_2
    const-string v3, "External storage is not available."

    .line 95
    .restart local v3       #message:Ljava/lang/String;
    const-string v6, "CameraComponent"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->notice:Lcom/google/devtools/simple/runtime/components/android/Notifier;

    const-string v7, "External Storage Error"

    const-string v7, "OK"

    invoke-virtual {v6, v3, v8, v9}, Lcom/google/devtools/simple/runtime/components/android/Notifier;->ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v6, "CameraComponent"

    .line 102
    const-string v2, "CameraComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning result. Request code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget v2, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->requestCode:I

    if-ne p1, v2, :cond_2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 105
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->imageFile:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, image:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->imageFile:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/Camera;->AfterPicture(Ljava/lang/String;)V

    .line 125
    .end local v0           #image:Ljava/io/File;
    :goto_0
    return-void

    .line 109
    .restart local v0       #image:Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->imageFile:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/Camera;->deleteFile(Landroid/net/Uri;)V

    .line 111
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 112
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 113
    .local v1, tryImageUri:Landroid/net/Uri;
    const-string v2, "CameraComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling Camera.AfterPicture with image path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/Camera;->AfterPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    .end local v1           #tryImageUri:Landroid/net/Uri;
    :cond_1
    const-string v2, "CameraComponent"

    const-string v2, "Couldn\'t find an image file from the Camera result"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->notice:Lcom/google/devtools/simple/runtime/components/android/Notifier;

    const-string v3, "The camera did not return an image"

    const-string v4, "Camera Error"

    const-string v5, "OK"

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/Notifier;->ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    .end local v0           #image:Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Camera;->imageFile:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/Camera;->deleteFile(Landroid/net/Uri;)V

    goto :goto_0
.end method
