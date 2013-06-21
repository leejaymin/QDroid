.class public Lcom/rookiestudio/perfectviewer/TStartup;
.super Landroid/app/Activity;
.source "TStartup.java"


# static fields
.field public static LibraryLoadded:Z


# instance fields
.field private IntentAction:Ljava/lang/String;

.field private ShowDownload:I

.field private StartupScreen:I

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/rookiestudio/perfectviewer/TStartup;->LibraryLoadded:Z

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TStartup;->StartupScreen:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TStartup;->uri:Landroid/net/Uri;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TStartup;->IntentAction:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TStartup;->ShowDownload:I

    .line 29
    return-void
.end method

.method public static CheckNativeLibrary(Landroid/content/Context;)I
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x6

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 118
    sget-boolean v9, Lcom/rookiestudio/perfectviewer/TStartup;->LibraryLoadded:Z

    if-eqz v9, :cond_0

    .line 185
    :goto_0
    return v6

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 123
    .local v1, MainPackageManager:Landroid/content/pm/PackageManager;
    const-string v9, "perfectviewer"

    const-string v10, "checking native library"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->AndroidCPU_ABI:Ljava/lang/String;

    const-string v10, "x86"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 126
    const-string v2, "com.rookiestudio.perfectviewer.x86"

    .line 128
    .local v2, aa:Ljava/lang/String;
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 129
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_3

    .line 130
    iget v9, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v9, v11, :cond_1

    move v6, v7

    .line 131
    goto :goto_0

    .line 133
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/lib/libimage_processor.so"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, LibFile:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 135
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v0           #LibFile:Ljava/lang/String;
    .end local v2           #aa:Ljava/lang/String;
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_1
    sput-boolean v8, Lcom/rookiestudio/perfectviewer/TStartup;->LibraryLoadded:Z

    goto :goto_0

    .restart local v0       #LibFile:Ljava/lang/String;
    .restart local v2       #aa:Ljava/lang/String;
    .restart local v5       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_2
    move v6, v8

    .line 137
    goto :goto_0

    .end local v0           #LibFile:Ljava/lang/String;
    :cond_3
    move v6, v8

    .line 140
    goto :goto_0

    .line 142
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    move v6, v8

    .line 143
    goto :goto_0

    .line 145
    .end local v2           #aa:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->AndroidCPU_ABI:Ljava/lang/String;

    const-string v10, "mips"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 146
    const-string v2, "com.rookiestudio.perfectviewer.mips"

    .line 148
    .restart local v2       #aa:Ljava/lang/String;
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 149
    .restart local v5       #packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_8

    .line 150
    iget v9, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v9, v11, :cond_5

    move v6, v7

    .line 151
    goto :goto_0

    .line 153
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/lib/libgnustl_shared.so"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .restart local v0       #LibFile:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 155
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 157
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/lib/libimage_processor.so"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 159
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 166
    .end local v0           #LibFile:Ljava/lang/String;
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v3

    .restart local v3       #e:Ljava/lang/Exception;
    move v6, v8

    .line 167
    goto/16 :goto_0

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #LibFile:Ljava/lang/String;
    .restart local v5       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_7
    move v6, v8

    .line 161
    goto/16 :goto_0

    .end local v0           #LibFile:Ljava/lang/String;
    :cond_8
    move v6, v8

    .line 164
    goto/16 :goto_0

    .line 170
    .end local v2           #aa:Ljava/lang/String;
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_9
    sget v7, Lcom/rookiestudio/perfectviewer/Global;->FPUType:I

    if-ne v7, v8, :cond_b

    .line 171
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->InstallFolder:Ljava/lang/String;

    const-string v9, "assets/libimage_processor_neon.so"

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/rookiestudio/perfectviewer/Global;->AppFilesFolder:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/libimage_processor_neon.so"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v9, v10}, Lcom/rookiestudio/perfectviewer/TStartup;->ZipExtractFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->AppFilesFolder:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/libimage_processor_neon.so"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v4, libFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 174
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->AppFilesFolder:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/libimage_processor_neon.so"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 176
    :cond_a
    const-string v7, "image_processor"

    invoke-static {v7}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 179
    .end local v4           #libFile:Ljava/io/File;
    :cond_b
    const-string v7, "image_processor"

    invoke-static {v7}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private DoStartActivity()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, StartUpIntent:Landroid/content/Intent;
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TStartup;->StartupScreen:I

    if-ne v1, v3, :cond_1

    .line 90
    new-instance v0, Landroid/content/Intent;

    .end local v0           #StartUpIntent:Landroid/content/Intent;
    const-class v1, Lcom/rookiestudio/perfectviewer/TBookshelf;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .restart local v0       #StartUpIntent:Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TStartup;->IntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TStartup;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TStartup;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFile:Ljava/lang/String;

    .line 107
    const/4 v1, -0x1

    sput v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFileOrder:I

    .line 110
    :cond_0
    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TStartup;->startActivity(Landroid/content/Intent;)V

    .line 111
    return v3

    .line 91
    :cond_1
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TStartup;->StartupScreen:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 92
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->LastUseFolder:Ljava/lang/String;

    sput-object v1, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/content/Intent;

    .end local v0           #StartUpIntent:Landroid/content/Intent;
    const-class v1, Lcom/rookiestudio/perfectviewer/TFileBrowser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #StartUpIntent:Landroid/content/Intent;
    goto :goto_0

    .line 100
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #StartUpIntent:Landroid/content/Intent;
    const-class v1, Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #StartUpIntent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public static ZipExtractFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .parameter "ZipFile"
    .parameter "SrcFile"
    .parameter "DstFile"

    .prologue
    .line 228
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v2, DstFileObj:Ljava/io/File;
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 230
    .local v9, zip:Ljava/util/zip/ZipFile;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    .line 231
    .local v10, zipen:Ljava/util/zip/ZipEntry;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-direct {v1, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 232
    .local v1, DestFileDate:Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v11

    invoke-direct {v3, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 235
    .local v3, ZipFileDate:Ljava/util/Date;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    sget v11, Lcom/rookiestudio/perfectviewer/Global;->InstallVersion:I

    sget v12, Lcom/rookiestudio/perfectviewer/Config;->CurrentVersion:I

    if-ne v11, v12, :cond_0

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v11

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_1

    .line 236
    :cond_0
    const-string v11, "perfectviewer"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "update native library : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v9, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 238
    .local v6, is:Ljava/io/InputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 239
    .local v8, os:Ljava/io/OutputStream;
    const/16 v11, 0x1f9c

    new-array v4, v11, [B

    .line 241
    .local v4, buf:[B
    :goto_0
    invoke-virtual {v6, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, n:I
    if-gtz v7, :cond_2

    .line 242
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 243
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 248
    .end local v4           #buf:[B
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #n:I
    .end local v8           #os:Ljava/io/OutputStream;
    :cond_1
    const/4 v11, 0x1

    .end local v1           #DestFileDate:Ljava/util/Date;
    .end local v2           #DstFileObj:Ljava/io/File;
    .end local v3           #ZipFileDate:Ljava/util/Date;
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .end local v10           #zipen:Ljava/util/zip/ZipEntry;
    :goto_1
    return v11

    .line 241
    .restart local v1       #DestFileDate:Ljava/util/Date;
    .restart local v2       #DstFileObj:Ljava/io/File;
    .restart local v3       #ZipFileDate:Ljava/util/Date;
    .restart local v4       #buf:[B
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v7       #n:I
    .restart local v8       #os:Ljava/io/OutputStream;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    .restart local v10       #zipen:Ljava/util/zip/ZipEntry;
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v8, v4, v11, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v1           #DestFileDate:Ljava/util/Date;
    .end local v2           #DstFileObj:Ljava/io/File;
    .end local v3           #ZipFileDate:Ljava/util/Date;
    .end local v4           #buf:[B
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #n:I
    .end local v8           #os:Ljava/io/OutputStream;
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .end local v10           #zipen:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v5

    .line 246
    .local v5, e:Ljava/io/IOException;
    const/4 v11, 0x0

    goto :goto_1
.end method


# virtual methods
.method public ShowDownloadMessage(Ljava/lang/String;I)V
    .locals 6
    .parameter "CPU_ABI"
    .parameter "MessageType"

    .prologue
    const/4 v5, 0x0

    .line 191
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a00dc

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 195
    if-nez p2, :cond_0

    .line 196
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v4, 0x7f0a0142

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, Message:Ljava/lang/String;
    :goto_0
    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 201
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 203
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/rookiestudio/perfectviewer/TStartup$1;

    invoke-direct {v4, p0, p1}, Lcom/rookiestudio/perfectviewer/TStartup$1;-><init>(Lcom/rookiestudio/perfectviewer/TStartup;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v4, 0x1040009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/rookiestudio/perfectviewer/TStartup$2;

    invoke-direct {v4, p0}, Lcom/rookiestudio/perfectviewer/TStartup$2;-><init>(Lcom/rookiestudio/perfectviewer/TStartup;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 221
    .local v1, alert:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 222
    return-void

    .line 198
    .end local v0           #Message:Ljava/lang/String;
    .end local v1           #alert:Landroid/app/AlertDialog;
    :cond_0
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v4, 0x7f0a0143

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #Message:Ljava/lang/String;
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TStartup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TStartup;->IntentAction:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    const-string v0, "perfectviewer"

    const-string v1, "TStartup onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TStartup;->CheckNativeLibrary(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TStartup;->ShowDownload:I

    .line 54
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->StartupScreen:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TStartup;->StartupScreen:I

    .line 55
    const-string v0, "android.intent.action.SET_WALLPAPER"

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TStartup;->IntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TStartup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TStartup;->uri:Landroid/net/Uri;

    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->SetWallpaperMode:Z

    .line 58
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TStartup;->StartupScreen:I

    .line 70
    :cond_0
    :goto_1
    return-void

    .line 59
    :cond_1
    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TStartup;->IntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TStartup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TStartup;->uri:Landroid/net/Uri;

    .line 61
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TStartup;->StartupScreen:I

    goto :goto_1

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TStartup;->ShowDownload:I

    if-ne v0, v2, :cond_0

    .line 77
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->AndroidCPU_ABI:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/rookiestudio/perfectviewer/TStartup;->ShowDownloadMessage(Ljava/lang/String;I)V

    .line 85
    :goto_0
    return-void

    .line 78
    :cond_0
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TStartup;->ShowDownload:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 79
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->AndroidCPU_ABI:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/rookiestudio/perfectviewer/TStartup;->ShowDownloadMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 81
    :cond_1
    const-string v0, "perfectviewer"

    const-string v1, "TStartup onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/TStartup;->DoStartActivity()Z

    .line 83
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TStartup;->finish()V

    goto :goto_0
.end method
