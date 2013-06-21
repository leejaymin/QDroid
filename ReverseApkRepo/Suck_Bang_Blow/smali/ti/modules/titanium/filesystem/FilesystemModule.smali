.class public Lti/modules/titanium/filesystem/FilesystemModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "FilesystemModule.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiFilesystem"

.field public static MODE_APPEND:I

.field public static MODE_READ:I

.field public static MODE_WRITE:I

.field private static RESOURCES_DIR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/filesystem/FilesystemModule;->DBG:Z

    .line 25
    sput v2, Lti/modules/titanium/filesystem/FilesystemModule;->MODE_READ:I

    .line 26
    sput v1, Lti/modules/titanium/filesystem/FilesystemModule;->MODE_WRITE:I

    .line 27
    const/4 v0, 0x2

    sput v0, Lti/modules/titanium/filesystem/FilesystemModule;->MODE_APPEND:I

    .line 29
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "app://"

    aput-object v1, v0, v2

    sput-object v0, Lti/modules/titanium/filesystem/FilesystemModule;->RESOURCES_DIR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 33
    return-void
.end method


# virtual methods
.method public createTempDirectory()Lti/modules/titanium/filesystem/FileProxy;
    .locals 6

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, dir:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v4, "java.io.tmpdir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, tmpdir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 56
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 57
    .local v2, parts:[Ljava/lang/String;
    new-instance v4, Lti/modules/titanium/filesystem/FileProxy;

    invoke-virtual {p0}, Lti/modules/titanium/filesystem/FilesystemModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lti/modules/titanium/filesystem/FileProxy;-><init>(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;)V

    return-object v4
.end method

.method public createTempFile()Lti/modules/titanium/filesystem/FileProxy;
    .locals 6

    .prologue
    .line 40
    :try_start_0
    const-string v3, "tifile"

    const-string v4, "tmp"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 41
    .local v1, f:Ljava/io/File;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 42
    .local v2, parts:[Ljava/lang/String;
    new-instance v3, Lti/modules/titanium/filesystem/FileProxy;

    invoke-virtual {p0}, Lti/modules/titanium/filesystem/FilesystemModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lti/modules/titanium/filesystem/FileProxy;-><init>(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1           #f:Ljava/io/File;
    .end local v2           #parts:[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 43
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 44
    .local v0, e:Ljava/io/IOException;
    const-string v3, "TiFilesystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create tmp file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getApplicationDataDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "appdata-private://"

    return-object v0
.end method

.method public getApplicationDirectory()Lti/modules/titanium/filesystem/FileProxy;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "appdata://"

    return-object v0
.end method

.method public getFile([Ljava/lang/Object;)Lti/modules/titanium/filesystem/FileProxy;
    .locals 3
    .parameter "parts"

    .prologue
    .line 68
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, sparts:[Ljava/lang/String;
    new-instance v1, Lti/modules/titanium/filesystem/FileProxy;

    invoke-virtual {p0}, Lti/modules/titanium/filesystem/FilesystemModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lti/modules/titanium/filesystem/FileProxy;-><init>(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;)V

    return-object v1
.end method

.method public getLineEnding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "app://"

    return-object v0
.end method

.method public getSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    return-object v0
.end method

.method public isExternalStoragePresent()Z
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
