.class public Lti/modules/titanium/ui/EmailDialogProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "EmailDialogProxy.java"


# static fields
.field public static final CANCELLED:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final FAILED:I = 0x3

.field private static final LCAT:Ljava/lang/String; = "EmailDialogProxy"

.field public static final SAVED:I = 0x1

.field public static final SENT:I = 0x2


# instance fields
.field private attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/EmailDialogProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 58
    return-void
.end method

.method private attachAssetFile(Landroid/content/Intent;Lti/modules/titanium/filesystem/FileProxy;)V
    .locals 5
    .parameter "sendIntent"
    .parameter "file"

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 201
    .local v1, tempfile:Ljava/io/File;
    :try_start_0
    invoke-virtual {p2}, Lti/modules/titanium/filesystem/FileProxy;->read()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v2

    invoke-virtual {p2}, Lti/modules/titanium/filesystem/FileProxy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lti/modules/titanium/ui/EmailDialogProxy;->blobToTemp(Lorg/appcelerator/titanium/TiBlob;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 205
    :goto_0
    if-eqz v1, :cond_0

    .line 206
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lti/modules/titanium/ui/EmailDialogProxy;->attachStandardFile(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 208
    :cond_0
    return-void

    .line 202
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 203
    .local v0, e:Ljava/io/IOException;
    const-string v2, "EmailDialogProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to attach file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lti/modules/titanium/filesystem/FileProxy;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private attachBlob(Landroid/content/Intent;Lorg/appcelerator/titanium/TiBlob;)V
    .locals 7
    .parameter "sendIntent"
    .parameter "blob"

    .prologue
    .line 231
    sget-boolean v4, Lti/modules/titanium/ui/EmailDialogProxy;->DBG:Z

    if-eqz v4, :cond_0

    .line 232
    const-string v4, "EmailDialogProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attaching blob of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    invoke-virtual {p2}, Lorg/appcelerator/titanium/TiBlob;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 239
    invoke-virtual {p2}, Lorg/appcelerator/titanium/TiBlob;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/io/TiBaseFile;

    .line 240
    .local v0, baseFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v4, v5}, Lti/modules/titanium/ui/EmailDialogProxy;->attachStandardFile(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 255
    .end local v0           #baseFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_1
    :goto_0
    return-void

    .line 245
    :cond_2
    const-string v3, "attachment"

    .line 246
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {p2}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getFileExtensionFromMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, extension:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    :cond_3
    invoke-direct {p0, p2, v3}, Lti/modules/titanium/ui/EmailDialogProxy;->blobToTemp(Lorg/appcelerator/titanium/TiBlob;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 251
    .local v2, f:Ljava/io/File;
    if-eqz v2, :cond_1

    .line 252
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v4, v5}, Lti/modules/titanium/ui/EmailDialogProxy;->attachStandardFile(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private attachStandardFile(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1
    .parameter "sendIntent"
    .parameter "uri"

    .prologue
    .line 211
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lti/modules/titanium/ui/EmailDialogProxy;->attachStandardFile(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method private attachStandardFile(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "sendIntent"
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 215
    sget-boolean v0, Lti/modules/titanium/ui/EmailDialogProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "EmailDialogProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching standard file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with mimetype "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 225
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    :cond_1
    return-void
.end method

.method private baseMimeType(Z)Ljava/lang/String;
    .locals 3
    .parameter "isHtml"

    .prologue
    .line 98
    if-eqz p1, :cond_1

    const-string v1, "text/html"

    move-object v0, v1

    .line 106
    .local v0, result:Ljava/lang/String;
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 107
    const-string v0, "message/rfc822"

    .line 109
    :cond_0
    return-object v0

    .line 98
    .end local v0           #result:Ljava/lang/String;
    :cond_1
    const-string v1, "text/plain"

    move-object v0, v1

    goto :goto_0
.end method

.method private blobToTemp(Lorg/appcelerator/titanium/TiBlob;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .parameter "blob"
    .parameter "fileName"

    .prologue
    const/4 v6, 0x0

    .line 178
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lti/modules/titanium/ui/EmailDialogProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiContext;->getTiFileHelper()Lorg/appcelerator/titanium/util/TiFileHelper;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/appcelerator/titanium/util/TiFileHelper;->getDataDirectory(Z)Ljava/io/File;

    move-result-object v4

    const-string v5, "temp"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    .local v1, tempFolder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 181
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    .local v3, tempfilej:Ljava/io/File;
    new-instance v2, Lorg/appcelerator/titanium/io/TiFile;

    invoke-virtual {p0}, Lti/modules/titanium/ui/EmailDialogProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v3, v5, v6}, Lorg/appcelerator/titanium/io/TiFile;-><init>(Lorg/appcelerator/titanium/TiContext;Ljava/io/File;Ljava/lang/String;Z)V

    .line 184
    .local v2, tempfile:Lorg/appcelerator/titanium/io/TiFile;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiFile;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiFile;->deleteFile()Z

    .line 189
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Lorg/appcelerator/titanium/io/TiFile;->write(Lorg/appcelerator/titanium/TiBlob;Z)V

    .line 190
    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiFile;->getNativeFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 195
    :goto_0
    return-object v4

    .line 191
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 192
    .local v0, e:Ljava/io/IOException;
    const-string v4, "EmailDialogProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to attach file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private buildIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const-string v4, "html"

    .line 113
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v2, sendIntent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 116
    .local v1, isHtml:Z
    const-string v3, "html"

    invoke-virtual {p0, v4}, Lti/modules/titanium/ui/EmailDialogProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    const-string v3, "html"

    invoke-virtual {p0, v4}, Lti/modules/titanium/ui/EmailDialogProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 120
    :cond_0
    invoke-direct {p0, v1}, Lti/modules/titanium/ui/EmailDialogProxy;->baseMimeType(Z)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, intentType:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v3, "android.intent.extra.EMAIL"

    const-string v4, "toRecipients"

    invoke-direct {p0, v2, v3, v4}, Lti/modules/titanium/ui/EmailDialogProxy;->putAddressExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v3, "android.intent.extra.CC"

    const-string v4, "ccRecipients"

    invoke-direct {p0, v2, v3, v4}, Lti/modules/titanium/ui/EmailDialogProxy;->putAddressExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v3, "android.intent.extra.BCC"

    const-string v4, "bccRecipients"

    invoke-direct {p0, v2, v3, v4}, Lti/modules/titanium/ui/EmailDialogProxy;->putAddressExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "subject"

    invoke-direct {p0, v2, v3, v4}, Lti/modules/titanium/ui/EmailDialogProxy;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v3, "android.intent.extra.TEXT"

    const-string v4, "messageBody"

    invoke-direct {p0, v2, v3, v4, v1}, Lti/modules/titanium/ui/EmailDialogProxy;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 131
    invoke-direct {p0, v2}, Lti/modules/titanium/ui/EmailDialogProxy;->prepareAttachments(Landroid/content/Intent;)V

    .line 133
    sget-boolean v3, Lti/modules/titanium/ui/EmailDialogProxy;->DBG:Z

    if-eqz v3, :cond_1

    .line 134
    const-string v3, "EmailDialogProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Choosing for mime type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    return-object v2
.end method

.method private prepareAttachments(Landroid/content/Intent;)V
    .locals 7
    .parameter "sendIntent"

    .prologue
    .line 260
    iget-object v5, p0, Lti/modules/titanium/ui/EmailDialogProxy;->attachments:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v5, p0, Lti/modules/titanium/ui/EmailDialogProxy;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 265
    .local v1, attachment:Ljava/lang/Object;
    instance-of v5, v1, Lti/modules/titanium/filesystem/FileProxy;

    if-eqz v5, :cond_3

    .line 266
    move-object v0, v1

    check-cast v0, Lti/modules/titanium/filesystem/FileProxy;

    move-object v3, v0

    .line 267
    .local v3, fileProxy:Lti/modules/titanium/filesystem/FileProxy;
    invoke-virtual {v3}, Lti/modules/titanium/filesystem/FileProxy;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 268
    invoke-virtual {v3}, Lti/modules/titanium/filesystem/FileProxy;->getNativePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android_asset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 269
    invoke-direct {p0, p1, v3}, Lti/modules/titanium/ui/EmailDialogProxy;->attachAssetFile(Landroid/content/Intent;Lti/modules/titanium/filesystem/FileProxy;)V

    goto :goto_0

    .line 271
    :cond_2
    invoke-virtual {v3}, Lti/modules/titanium/filesystem/FileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lti/modules/titanium/ui/EmailDialogProxy;->attachStandardFile(Landroid/content/Intent;Landroid/net/Uri;)V

    goto :goto_0

    .line 274
    .end local v3           #fileProxy:Lti/modules/titanium/filesystem/FileProxy;
    :cond_3
    instance-of v5, v1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v5, :cond_0

    .line 275
    move-object v0, v1

    check-cast v0, Lorg/appcelerator/titanium/TiBlob;

    move-object v2, v0

    .line 276
    .local v2, blob:Lorg/appcelerator/titanium/TiBlob;
    invoke-direct {p0, p1, v2}, Lti/modules/titanium/ui/EmailDialogProxy;->attachBlob(Landroid/content/Intent;Lorg/appcelerator/titanium/TiBlob;)V

    goto :goto_0
.end method

.method private putAddressExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "intent"
    .parameter "extraType"
    .parameter "ourkey"

    .prologue
    .line 299
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/EmailDialogProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 300
    .local v5, testprop:Ljava/lang/Object;
    instance-of v6, v5, [Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 301
    check-cast v5, [Ljava/lang/Object;

    .end local v5           #testprop:Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 302
    .local v4, oaddrs:[Ljava/lang/Object;
    array-length v3, v4

    .line 303
    .local v3, len:I
    new-array v1, v3, [Ljava/lang/String;

    .line 304
    .local v1, addrs:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 305
    aget-object v6, v4, v2

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    .end local v1           #addrs:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #oaddrs:[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "extraType"
    .parameter "ourKey"

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lti/modules/titanium/ui/EmailDialogProxy;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 285
    return-void
.end method

.method private putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "intent"
    .parameter "extraType"
    .parameter "ourkey"
    .parameter "encodeHtml"

    .prologue
    .line 288
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/EmailDialogProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/EmailDialogProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, text:Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 291
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 296
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 293
    .restart local v0       #text:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public addAttachment(Ljava/lang/Object;)V
    .locals 3
    .parameter "attachment"

    .prologue
    .line 84
    instance-of v0, p1, Lti/modules/titanium/filesystem/FileProxy;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v0, :cond_3

    .line 85
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxy;->attachments:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxy;->attachments:Ljava/util/ArrayList;

    .line 88
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxy;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_2
    :goto_0
    return-void

    .line 91
    :cond_3
    sget-boolean v0, Lti/modules/titanium/ui/EmailDialogProxy;->DBG:Z

    if-eqz v0, :cond_2

    .line 92
    const-string v0, "EmailDialogProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAttachment for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ignored. Only files and blobs may be attached."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSupported()Z
    .locals 8

    .prologue
    .line 62
    const/4 v4, 0x0

    .line 64
    .local v4, supported:Z
    invoke-virtual {p0}, Lti/modules/titanium/ui/EmailDialogProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 65
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 67
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 68
    invoke-direct {p0}, Lti/modules/titanium/ui/EmailDialogProxy;->buildIntent()Landroid/content/Intent;

    move-result-object v2

    .line 69
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 71
    const/4 v4, 0x1

    .line 72
    sget-boolean v5, Lti/modules/titanium/ui/EmailDialogProxy;->DBG:Z

    if-eqz v5, :cond_0

    .line 73
    const-string v5, "EmailDialogProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Number of activities that support ACTION_SEND: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    return v4
.end method

.method public open()V
    .locals 7

    .prologue
    .line 142
    invoke-direct {p0}, Lti/modules/titanium/ui/EmailDialogProxy;->buildIntent()Landroid/content/Intent;

    move-result-object v5

    .line 143
    .local v5, sendIntent:Landroid/content/Intent;
    const-string v6, "Send"

    invoke-static {v5, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 145
    .local v3, choosingIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lti/modules/titanium/ui/EmailDialogProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 146
    .local v1, activity:Landroid/app/Activity;
    move-object v0, v1

    check-cast v0, Lorg/appcelerator/titanium/util/TiActivitySupport;

    move-object v2, v0

    .line 147
    .local v2, activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;
    invoke-interface {v2}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v4

    .line 149
    .local v4, code:I
    new-instance v6, Lti/modules/titanium/ui/EmailDialogProxy$1;

    invoke-direct {v6, p0}, Lti/modules/titanium/ui/EmailDialogProxy$1;-><init>(Lti/modules/titanium/ui/EmailDialogProxy;)V

    invoke-interface {v2, v3, v4, v6}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 174
    return-void
.end method
