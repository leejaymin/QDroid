.class public Lcom/rookiestudio/perfectviewer/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field public static AndroidCPU_ABI:Ljava/lang/String;

.field public static AndroidSDKVersion:I

.field public static AppDataFolder:Ljava/lang/String;

.field public static AppDatabaseFolder:Ljava/lang/String;

.field public static AppFilesFolder:Ljava/lang/String;

.field public static AppPerfFolder:Ljava/lang/String;

.field public static ApplicationInstance:Landroid/content/Context;

.field public static ApplicationRes:Landroid/content/res/Resources;

.field public static ArchivePasswordList:Lcom/rookiestudio/perfectviewer/TArchivePasswordList;

.field public static BookIconDefault:Landroid/graphics/Bitmap;

.field public static ClipingImage:Z

.field public static CoverSize:I

.field public static CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

.field public static CroppedWallpaper:Landroid/graphics/Bitmap;

.field public static CurrentDate:Ljava/util/Date;

.field public static CurrentScreen:I

.field public static DateTimeFormatStr:Ljava/lang/String;

.field public static DualPageMode:Z

.field public static ExternalDataFolder:Ljava/lang/String;

.field public static FPUType:I

.field public static FavoritesManager:Lcom/rookiestudio/perfectviewer/TFavoritesManager;

.field public static HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

.field public static HistoryManager:Lcom/rookiestudio/perfectviewer/THistoryManager;

.field public static IamBusy:Z

.field public static ImageSizeType:I

.field public static InstallFolder:Ljava/lang/String;

.field public static InstallVersion:I

.field public static InstallVersionStr:Ljava/lang/String;

.field public static MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

.field public static MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

.field public static MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

.field public static MainDisplay:Landroid/view/Display;

.field public static MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

.field public static MainMenu:Lcom/rookiestudio/perfectviewer/TMainMenu;

.field public static MainSlideshow:Lcom/rookiestudio/perfectviewer/TSlideshow;

.field public static MainView:Lcom/rookiestudio/perfectviewer/TViewer;

.field public static MaxVMHeap:I

.field public static NavigateBar:Lcom/rookiestudio/perfectviewer/TNavigateBar;

.field public static Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

.field public static PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

.field public static PackageName:Ljava/lang/String;

.field public static PreviousScreen:I

.field public static QuickBarFunctionCount:I

.field public static QuickBarFunctionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static SDCardFolder:Ljava/lang/String;

.field public static ScreenDPI:F

.field public static TextScale:F

.field public static WallpaperFileName1:Ljava/lang/String;

.field public static WallpaperFileName2:Ljava/lang/String;

.field public static WallpaperFolderName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 14
    const-class v0, Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->PackageName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->SDCardFolder:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/sdcard/Android/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->PackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->ExternalDataFolder:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->ExternalDataFolder:Ljava/lang/String;

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->WallpaperFolderName:Ljava/lang/String;

    .line 18
    const-string v0, ""

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->InstallFolder:Ljava/lang/String;

    .line 19
    const-string v0, ""

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->AppFilesFolder:Ljava/lang/String;

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->AppDataFolder:Ljava/lang/String;

    .line 21
    const-string v0, ""

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->AppDatabaseFolder:Ljava/lang/String;

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->AppPerfFolder:Ljava/lang/String;

    .line 23
    sput v3, Lcom/rookiestudio/perfectviewer/Global;->InstallVersion:I

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->InstallVersionStr:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->WallpaperFolderName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/wallpaper1.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->WallpaperFileName1:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->WallpaperFolderName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/wallpaper2.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->WallpaperFileName2:Ljava/lang/String;

    .line 27
    const-string v0, "yyyy/M/d a h:mm:ss"

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->DateTimeFormatStr:Ljava/lang/String;

    .line 28
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->CroppedWallpaper:Landroid/graphics/Bitmap;

    .line 29
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->BookIconDefault:Landroid/graphics/Bitmap;

    .line 30
    sput v3, Lcom/rookiestudio/perfectviewer/Global;->AndroidSDKVersion:I

    .line 31
    sput v3, Lcom/rookiestudio/perfectviewer/Global;->FPUType:I

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->AndroidCPU_ABI:Ljava/lang/String;

    .line 33
    const/16 v0, 0x18

    sput v0, Lcom/rookiestudio/perfectviewer/Global;->MaxVMHeap:I

    .line 34
    sput v3, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    .line 35
    const/16 v0, 0x40

    sput v0, Lcom/rookiestudio/perfectviewer/Global;->CoverSize:I

    .line 36
    const/high16 v0, 0x3f80

    sput v0, Lcom/rookiestudio/perfectviewer/Global;->TextScale:F

    .line 37
    const/high16 v0, 0x4320

    sput v0, Lcom/rookiestudio/perfectviewer/Global;->ScreenDPI:F

    .line 40
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 41
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    .line 42
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    .line 43
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainMenu:Lcom/rookiestudio/perfectviewer/TMainMenu;

    .line 44
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->FavoritesManager:Lcom/rookiestudio/perfectviewer/TFavoritesManager;

    .line 45
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->HistoryManager:Lcom/rookiestudio/perfectviewer/THistoryManager;

    .line 46
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    .line 47
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    .line 48
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainSlideshow:Lcom/rookiestudio/perfectviewer/TSlideshow;

    .line 49
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->NavigateBar:Lcom/rookiestudio/perfectviewer/TNavigateBar;

    .line 50
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    .line 51
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationInstance:Landroid/content/Context;

    .line 52
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    .line 53
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    .line 54
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainDisplay:Landroid/view/Display;

    .line 55
    sput v3, Lcom/rookiestudio/perfectviewer/Global;->PreviousScreen:I

    .line 56
    sput v3, Lcom/rookiestudio/perfectviewer/Global;->CurrentScreen:I

    .line 57
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->CurrentDate:Ljava/util/Date;

    .line 58
    sput-boolean v3, Lcom/rookiestudio/perfectviewer/Global;->IamBusy:Z

    .line 59
    sput-boolean v3, Lcom/rookiestudio/perfectviewer/Global;->ClipingImage:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->QuickBarFunctionList:Ljava/util/List;

    .line 61
    sput v3, Lcom/rookiestudio/perfectviewer/Global;->QuickBarFunctionCount:I

    .line 62
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    .line 64
    new-instance v0, Lcom/rookiestudio/perfectviewer/TArchivePasswordList;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TArchivePasswordList;-><init>()V

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->ArchivePasswordList:Lcom/rookiestudio/perfectviewer/TArchivePasswordList;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
