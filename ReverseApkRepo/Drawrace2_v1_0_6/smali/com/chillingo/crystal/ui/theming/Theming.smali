.class public Lcom/chillingo/crystal/ui/theming/Theming;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/ui/theming/Theming$OriginSkinConstants;,
        Lcom/chillingo/crystal/ui/theming/Theming$ThemeType;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final SKIN_THEME_IMAGES_BANNER_FILES:Ljava/lang/String; = "https://chillingo-crystal.appspot.com/crystal/advert_global.img"

.field public static final SKIN_THEME_NAVIGATION_CONTROLLER_SKIN_DESCRIPTION_FILE_LANDSCAPE:Ljava/lang/String; = "globalnav_landscape"

.field public static final SKIN_THEME_NAVIGATION_CONTROLLER_SKIN_DESCRIPTION_FILE_LANDSCAPE_BASIC:Ljava/lang/String; = "basicnav_landscape"

.field public static final SKIN_THEME_NAVIGATION_CONTROLLER_SKIN_DESCRIPTION_FILE_PORTRAIT:Ljava/lang/String; = "globalnav_portrait"

.field public static final SKIN_THEME_NAVIGATION_CONTROLLER_SKIN_DESCRIPTION_FILE_PORTRAIT_BASIC:Ljava/lang/String; = "basicnav_portrait"

.field private static final TAG:Ljava/lang/String; = "Theming"

.field private static _instance:Lcom/chillingo/crystal/ui/theming/Theming;


# instance fields
.field private final CTD_EXTENSION:Ljava/lang/String;

.field private final FILE_PREFIX_SEPERATOR:Ljava/lang/String;

.field private final MASTER_CTD_FILE:Ljava/lang/String;

.field public final NO_THEME:I

.field private final ZIP_FILE_BUFFER_LENGTH:I

.field private _bitmapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private _containingFolderName:Ljava/lang/String;

.field private _contextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private _currentTheme:I

.field private _currentThemeString:Ljava/lang/String;

.field private _masterDescription:Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

.field private _skinDescriptionCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/chillingo/crystal/ui/theming/ThemeDescription;",
            ">;>;"
        }
    .end annotation
.end field

.field private _themeCapsCache:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/chillingo/crystal/ui/theming/Theming;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/chillingo/crystal/ui/theming/Theming;->$assertionsDisabled:Z

    const-string v0, "dalvikvm"

    invoke-static {v0}, Lcom/chillingo/crystal/utils/DLog;->allowTag(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/crystal/ui/theming/Theming;->_instance:Lcom/chillingo/crystal/ui/theming/Theming;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_"

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->FILE_PREFIX_SEPERATOR:Ljava/lang/String;

    const v0, 0x7d000

    iput v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->ZIP_FILE_BUFFER_LENGTH:I

    const-string v0, "master"

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->MASTER_CTD_FILE:Ljava/lang/String;

    const-string v0, "ctd"

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->CTD_EXTENSION:Ljava/lang/String;

    iput v2, p0, Lcom/chillingo/crystal/ui/theming/Theming;->NO_THEME:I

    iput-object v1, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_contextReference:Ljava/lang/ref/WeakReference;

    iput v2, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_currentTheme:I

    iput-object v1, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_currentThemeString:Ljava/lang/String;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_masterDescription:Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_skinDescriptionCache:Ljava/util/Map;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_containingFolderName:Ljava/lang/String;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_themeCapsCache:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_bitmapCache:Ljava/util/Map;

    sget-boolean v0, Lcom/chillingo/crystal/ui/theming/Theming;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/theming/Theming;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method private absoluteImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->themeRoot()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_currentThemeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private context()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    :cond_0
    return-object v0
.end method

.method private copyZipResourceToFile(I)Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".crystaltheme"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/chillingo/crystal/ui/theming/Theming;->createFileFromInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    invoke-static {v1}, Lcom/chillingo/crystal/utils/StreamUtils;->closeInPutStreamIgnoringErrors(Ljava/io/InputStream;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lcom/chillingo/crystal/utils/StreamUtils;->closeInPutStreamIgnoringErrors(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    invoke-static {v1}, Lcom/chillingo/crystal/utils/StreamUtils;->closeInPutStreamIgnoringErrors(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private createFileFromInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->context()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    const v0, 0x7d000

    :try_start_1
    new-array v3, v0, [B

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v2}, Lcom/chillingo/crystal/utils/StreamUtils;->closeOutPutStreamIgnoringErrors(Ljava/io/OutputStream;)V

    :goto_1
    return-object v1

    :cond_0
    invoke-static {v2}, Lcom/chillingo/crystal/utils/StreamUtils;->closeOutPutStreamIgnoringErrors(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->themeRoot()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private deleteTheme(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/theming/Theming;->themeFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_0

    const-string v1, "Theming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old theme file exists so deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_1

    const-string v0, "Theming"

    const-string v1, "Successfully deleted old theme file"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/theming/Theming;->deleteThemeImages(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_bitmapCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    :cond_2
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_1

    const-string v0, "Theming"

    const-string v1, "Failed to delete theme file, this isn\'t fatal unless the device is powering the space shuttle and runs out of memory"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_1

    const-string v0, "Theming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Old theme doesn\'t exist :S "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteThemeImages(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->themeRoot()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-lez v6, :cond_2

    aget-object v5, v5, v1

    invoke-virtual {v5, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getContainingFolder()Ljava/lang/String;
    .locals 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_containingFolderName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->zipFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_containingFolderName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_containingFolderName:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "Theming"

    const-string v2, "Theming::getContainingFolder - Error closing zip file, continuing regardless"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "Theming"

    const-string v2, "Theming::getContainingFolder - Error closing zip file, continuing regardless"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    if-ne v2, v3, :cond_1

    const-string v2, "Theming"

    const-string v3, "Theming::getContainingFolder - Error closing zip file, continuing regardless"

    invoke-static {v2, v3, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private getZippedFileToByteArray(Ljava/lang/String;)[B
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->getContainingFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->zipFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/StreamUtils;->inputStreamToByteArray(Ljava/io/InputStream;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v7, :cond_1

    const-string v0, "Theming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getZippedFileToByteArray returning null data for path "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    if-ne v1, v7, :cond_0

    const-string v1, "Theming"

    const-string v3, "Theming::getZippedFileToByteArray, Error closing zip file, continuing regardless"

    invoke-static {v1, v3, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v4

    if-ne v4, v7, :cond_2

    const-string v4, "Theming"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getZippedFileToByteArray( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) error unzipping file with entry name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    if-ne v1, v7, :cond_0

    const-string v1, "Theming"

    const-string v3, "Theming::getZippedFileToByteArray, Error closing zip file, continuing regardless"

    invoke-static {v1, v3, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    if-ne v2, v7, :cond_3

    const-string v2, "Theming"

    const-string v3, "Theming::getZippedFileToByteArray, Error closing zip file, continuing regardless"

    invoke-static {v2, v3, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private imageExists(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Lcom/chillingo/crystal/utils/Reference;

    invoke-direct {v1}, Lcom/chillingo/crystal/utils/Reference;-><init>()V

    new-instance v0, Lcom/chillingo/crystal/utils/Reference;

    invoke-direct {v0}, Lcom/chillingo/crystal/utils/Reference;-><init>()V

    invoke-direct {p0, p1, v1, v0}, Lcom/chillingo/crystal/ui/theming/Theming;->imagePaths(Ljava/lang/String;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Reference;->data()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/chillingo/crystal/utils/Reference;->data()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/ui/theming/Theming;->absoluteImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/chillingo/crystal/ui/theming/Theming;->absoluteImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private imagePathWith2xExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "@2x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v0

    if-le v2, v3, :cond_1

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@2x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@2x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private imagePaths(Ljava/lang/String;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "@2x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Lcom/chillingo/crystal/utils/Reference;->setData(Ljava/lang/Object;)V

    const-string v0, "@2x"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/chillingo/crystal/utils/Reference;->setData(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lcom/chillingo/crystal/utils/Reference;->setData(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/theming/Theming;->imagePathWith2xExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/chillingo/crystal/utils/Reference;->setData(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static instance()Lcom/chillingo/crystal/ui/theming/Theming;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/theming/Theming;->_instance:Lcom/chillingo/crystal/ui/theming/Theming;

    return-object v0
.end method

.method public static instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/theming/Theming;->_instance:Lcom/chillingo/crystal/ui/theming/Theming;

    if-nez v0, :cond_0

    new-instance v0, Lcom/chillingo/crystal/ui/theming/Theming;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/ui/theming/Theming;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/chillingo/crystal/ui/theming/Theming;->_instance:Lcom/chillingo/crystal/ui/theming/Theming;

    :goto_0
    sget-object v0, Lcom/chillingo/crystal/ui/theming/Theming;->_instance:Lcom/chillingo/crystal/ui/theming/Theming;

    return-object v0

    :cond_0
    sget-object v0, Lcom/chillingo/crystal/ui/theming/Theming;->_instance:Lcom/chillingo/crystal/ui/theming/Theming;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/ui/theming/Theming;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private openImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/theming/Theming;->absoluteImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private resizeZippedImageAndSave(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_0

    const-string v0, "dalvikvm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available memory before unzipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->getMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_1

    const-string v0, "Theming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getZippedFileToByteArray with name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/theming/Theming;->getZippedFileToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    if-ne v2, v6, :cond_2

    const-string v2, "dalvikvm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "length of bitmap data for file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dalvikvm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Available memory after unzipping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->getMemory()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_3

    const-string v0, "dalvikvm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available memory after converting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to bitmap is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->getMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "@2x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne p2, v6, :cond_4

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->context()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/chillingo/crystal/utils/ImageUtils;->resizeBitmapForDisplay(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_4

    const-string v0, "dalvikvm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available memory after resizing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->getMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_5

    const-string v0, "dalvikvm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image size for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/theming/Theming;->absoluteImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/chillingo/crystal/utils/ImageUtils;->saveBitmapAsPNG(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    if-nez v1, :cond_7

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_7

    const-string v0, "Theming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning null bitmap from resizeZippedImageAndSave with path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    if-ne v2, v6, :cond_6

    const-string v2, "Theming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error unzipping image with name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_contextReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private setMasterThemeDescription()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_masterDescription:Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "master"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/theming/Theming;->getZippedTheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->fromJSON(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_masterDescription:Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error reading master file at master"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private themeFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->themeRoot()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".crystaltheme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private themeRoot()Ljava/io/File;
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private zipFilePath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->themeRoot()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_currentThemeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".crystaltheme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBusyView(Landroid/content/Context;)Lcom/chillingo/crystal/views/BusyView;
    .locals 2

    const-string v0, "images/ipad_specific/spinner.png"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/chillingo/crystal/ui/theming/Theming;->imageAtPath(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/views/BusyView;

    invoke-direct {v1, p1, v0}, Lcom/chillingo/crystal/views/BusyView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public getMemory()J
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x1

    sget-boolean v0, Lcom/chillingo/crystal/ui/theming/Theming;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_currentThemeString:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_currentThemeString:Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->setMasterThemeDescription()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_skinDescriptionCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    if-nez v0, :cond_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/ui/theming/Theming;->getZippedTheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_5

    const-string v0, "Theming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading in ctd file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_masterDescription:Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    invoke-static {p1, v2, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->fromJSON(Ljava/lang/String;Ljava/lang/String;Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_6

    const-string v1, "Theming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error opening skin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with JSON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_skinDescriptionCache:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected getZippedTheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->getContainingFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ctd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->zipFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/chillingo/crystal/utils/StreamUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    if-ne v2, v7, :cond_0

    const-string v2, "Theming"

    const-string v3, "Theming::getZippedTheme - error closing zip file, carrying on regardless"

    invoke-static {v2, v3, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v4

    if-ne v4, v7, :cond_1

    const-string v4, "Theming"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Theming::getZippedTheme, error unzipping file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with zip entry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    if-ne v2, v7, :cond_0

    const-string v2, "Theming"

    const-string v3, "Theming::getZippedTheme - error closing zip file, carrying on regardless"

    invoke-static {v2, v3, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    if-ne v2, v7, :cond_2

    const-string v2, "Theming"

    const-string v3, "Theming::getZippedTheme - error closing zip file, carrying on regardless"

    invoke-static {v2, v3, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public imageAtPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/chillingo/crystal/ui/theming/Theming;->imageAtPath(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public imageAtPath(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/chillingo/crystal/utils/Reference;

    invoke-direct {v0}, Lcom/chillingo/crystal/utils/Reference;-><init>()V

    new-instance v1, Lcom/chillingo/crystal/utils/Reference;

    invoke-direct {v1}, Lcom/chillingo/crystal/utils/Reference;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/chillingo/crystal/ui/theming/Theming;->imagePaths(Ljava/lang/String;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Reference;->data()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/chillingo/crystal/utils/Reference;->data()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_bitmapCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_bitmapCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    :cond_0
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_0
    if-nez v2, :cond_8

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/theming/Theming;->imageExists(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    if-ne v2, v4, :cond_1

    const-string v2, "Theming"

    const-string v3, "Searching for image in resource"

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/chillingo/crystal/ui/theming/Theming;->resizeZippedImageAndSave(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_2

    const-string v1, "Theming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed in resource with double resolution image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/chillingo/crystal/ui/theming/Theming;->resizeZippedImageAndSave(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_bitmapCache:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_5

    const-string v0, "Theming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opening image "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, v2}, Lcom/chillingo/crystal/ui/theming/Theming;->openImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_3

    const-string v1, "Theming"

    const-string v2, "Returning null bitmap from imageAtPath"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_1

    :cond_8
    move-object v0, v2

    goto :goto_2

    :cond_9
    move-object v2, v3

    goto :goto_0
.end method

.method public isCurrentThemeAnOriginTheme()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "group_footer"

    invoke-virtual {p0, v2}, Lcom/chillingo/crystal/ui/theming/Theming;->getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    move v1, v0

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v3

    if-ne v3, v0, :cond_0

    const-string v0, "Theming"

    const-string v3, "Theming::isCurrentThemeAnOriginTheme error"

    invoke-static {v0, v3, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public masterTheme()Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->setMasterThemeDescription()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_masterDescription:Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    return-object v0
.end method

.method public receivedMemoryWarning()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "Theming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received memory warning. Memory available is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->getMemory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_bitmapCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_skinDescriptionCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_1

    const-string v0, "Theming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received memory warning. Cleared theme cache. Memory available is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->getMemory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setCurrentThemeFromResource(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .locals 8

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_0

    const-string v2, "Theming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to open theme file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "raw"

    invoke-virtual {v2, p1, v3, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_1

    const-string v2, "PrivateSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PrivateSession::init, reading theme file "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " found id is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->themeRoot()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/themeversion"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chillingo/crystal/utils/FileUtils;->readFromFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_a

    move v3, v1

    :goto_1
    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-nez v3, :cond_3

    invoke-virtual {v2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_3

    move v0, v1

    :cond_3
    if-nez v3, :cond_4

    if-eqz v0, :cond_d

    :cond_4
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v3

    if-ne v3, v1, :cond_5

    const-string v3, "Theming"

    const-string v7, "Need to unzip theme"

    invoke-static {v3, v7}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/Integer;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/ui/theming/Theming;->deleteTheme(Ljava/lang/String;)V

    :cond_6
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->themeRoot()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/themeversion"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/chillingo/crystal/utils/FileUtils;->overWriteFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_2
    invoke-direct {p0, v5}, Lcom/chillingo/crystal/ui/theming/Theming;->copyZipResourceToFile(I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_8

    const-string v0, "Theming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unzipped theme with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iput v5, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_currentTheme:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_currentThemeString:Ljava/lang/String;

    :goto_3
    iget v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_currentTheme:I

    return v0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_9

    const-string v2, "Theming"

    const-string v3, "Error opening theme version file. Continuing like there is no theme version file"

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object v2, v4

    goto/16 :goto_0

    :cond_a
    move v3, v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_7

    const-string v2, "Theming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error creating theme file with contents "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_b
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_c

    const-string v0, "Theming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error copying zip theme from resource with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/4 v0, -0x1

    iput v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_currentTheme:I

    iput-object v4, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_currentThemeString:Ljava/lang/String;

    goto :goto_3

    :cond_d
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_e

    const-string v0, "Theming"

    const-string v1, "Theme already exist"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iput v5, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_currentTheme:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_currentThemeString:Ljava/lang/String;

    goto :goto_3
.end method

.method public setCurrentThemeFromResourceInBackground(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/chillingo/crystal/ThemingDelegate;)V
    .locals 6

    new-instance v0, Lcom/chillingo/crystal/ui/theming/Theming$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/chillingo/crystal/ui/theming/Theming$1;-><init>(Lcom/chillingo/crystal/ui/theming/Theming;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/chillingo/crystal/ThemingDelegate;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setCurrentThemeFromUrl(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public themeCapsString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_themeCapsCache:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_themeCapsCache:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v1, "form_switchpicturetwoline"

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/ui/theming/Theming;->getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "form_switchpicturetwoline,"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "globalnav_landscape"

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/ui/theming/Theming;->getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v4

    const-string v1, "globalnav_portrait"

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/ui/theming/Theming;->getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v5

    if-eqz v4, :cond_9

    const-string v1, "giftingtab"

    invoke-virtual {v4, v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-eqz v5, :cond_a

    const-string v1, "giftingtab"

    invoke-virtual {v5, v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v1

    :goto_2
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "giftingtab,"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v4, :cond_b

    const-string v1, "challengestab"

    invoke-virtual {v4, v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v1

    move-object v2, v1

    :goto_3
    if-eqz v5, :cond_c

    const-string v1, "challengestab"

    invoke-virtual {v5, v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v1

    :goto_4
    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    const-string v1, "challengestab,"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "find_friends_images"

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/ui/theming/Theming;->getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "contacts_find_friend"

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "findfriendsimages,"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->isCurrentThemeAnOriginTheme()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    const-string v1, "groupfooterimage,"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_8

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_themeCapsCache:Ljava/lang/String;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming;->_themeCapsCache:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    move-object v2, v0

    goto :goto_1

    :cond_a
    move-object v1, v0

    goto :goto_2

    :cond_b
    move-object v2, v0

    goto :goto_3

    :cond_c
    move-object v1, v0

    goto :goto_4

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method
