.class public Lcom/rookiestudio/perfectviewer/TFileBrowser;
.super Landroid/app/Activity;
.source "TFileBrowser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;
.implements Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;,
        Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Lcom/rookiestudio/perfectviewer/LongRunningActionCallback",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;"
    }
.end annotation


# static fields
.field public static LastBrowseFile:Ljava/lang/String;

.field public static LastBrowseFolder:Ljava/lang/String;

.field private static SMBRoot:Ljava/lang/String;


# instance fields
.field private AddServerButton:Landroid/widget/Button;

.field private ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

.field private BrowseMode:I

.field public CurrentFolder:Ljava/lang/String;

.field private CurrentServerInfo:Lcom/rookiestudio/baseclass/TServerInfo;

.field private CurrentViewMode:I

.field private FileListView:Landroid/widget/GridView;

.field private FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

.field private HomeButton:Landroid/widget/ImageButton;

.field private LastSelectIndex:I

.field private LibraryButton:Landroid/widget/ImageButton;

.field private LoadingImage:Landroid/widget/ImageView;

.field private Location:I

.field private LocationButton:Landroid/widget/LinearLayout;

.field private LocationText:Landroid/widget/TextView;

.field private MainProgressBar:Landroid/widget/ProgressBar;

.field private PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;

.field private PreferenceButton:Landroid/widget/ImageButton;

.field private SMBTitle:Ljava/lang/String;

.field private ServerList:Lcom/rookiestudio/perfectviewer/TServerList;

.field private SortButton:Landroid/widget/ImageButton;

.field private StatusBarFormat:Ljava/lang/String;

.field private TextStatusBar:Landroid/widget/TextView;

.field private ThumbCreaded:I

.field private TitleText:Landroid/widget/TextView;

.field private TotalFileCount:I

.field private TotalFileSize:J

.field private UpperButton:Landroid/widget/ImageButton;

.field private ViewModeButton:Landroid/widget/ImageButton;

.field public mReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, ""

    sput-object v0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;

    .line 67
    const-string v0, ""

    sput-object v0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFile:Ljava/lang/String;

    .line 68
    const-string v0, "smb://"

    sput-object v0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SMBRoot:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    .line 80
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ServerList:Lcom/rookiestudio/perfectviewer/TServerList;

    .line 81
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    .line 82
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    .line 83
    iput v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastSelectIndex:I

    .line 87
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileCount:I

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileSize:J

    .line 89
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->Location:I

    .line 91
    iput v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentViewMode:I

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SMBTitle:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private AddServer()V
    .locals 10

    .prologue
    .line 718
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 719
    .local v6, alert:Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0a0165

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 720
    const v0, 0x108009b

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 721
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 722
    .local v7, inflaterDl:Landroid/view/LayoutInflater;
    const v0, 0x7f03000f

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 724
    .local v8, layout:Landroid/widget/LinearLayout;
    const v0, 0x7f0c0035

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 725
    .local v2, ServerEdit:Landroid/widget/EditText;
    const v0, 0x7f0c0036

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 726
    .local v3, UserEdit:Landroid/widget/EditText;
    const v0, 0x7f0c0037

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 727
    .local v4, PassEdit:Landroid/widget/EditText;
    const v0, 0x7f0c0038

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 728
    .local v5, DescEdit:Landroid/widget/EditText;
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 729
    const v9, 0x104000a

    new-instance v0, Lcom/rookiestudio/perfectviewer/TFileBrowser$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/TFileBrowser$7;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v6, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 744
    const/high16 v0, 0x104

    new-instance v1, Lcom/rookiestudio/perfectviewer/TFileBrowser$8;

    invoke-direct {v1, p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser$8;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 748
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 749
    return-void
.end method

.method public static CreateFileBrowser(Landroid/app/Activity;)V
    .locals 2
    .parameter "Parent"

    .prologue
    .line 1048
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->LastUseFolder:Ljava/lang/String;

    sput-object v1, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;

    .line 1049
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->LastOpenFile:Ljava/lang/String;

    sput-object v1, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFile:Ljava/lang/String;

    .line 1050
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rookiestudio/perfectviewer/TFileBrowser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1051
    .local v0, aFileBrowser:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1052
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1053
    return-void
.end method

.method public static CreateHomeActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "Parent"

    .prologue
    .line 1040
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1041
    .local v0, StartUpIntent:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1042
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1043
    return-void
.end method

.method public static DeleteFile(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .parameter "Parent"
    .parameter "FileName"

    .prologue
    .line 870
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 871
    .local v0, TargetFile:Ljava/io/File;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 872
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a0074

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 873
    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 874
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 875
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v5, 0x7f0a0093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 879
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 880
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/rookiestudio/perfectviewer/TFileBrowser$15;

    invoke-direct {v4, p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser$15;-><init>(Landroid/app/Activity;Ljava/io/File;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 899
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const/high16 v4, 0x104

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/rookiestudio/perfectviewer/TFileBrowser$16;

    invoke-direct {v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser$16;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 904
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 905
    .local v1, alert:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 906
    return-void

    .line 877
    .end local v1           #alert:Landroid/app/AlertDialog;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v5, 0x7f0a0092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private EditServer(Landroid/app/Activity;I)V
    .locals 11
    .parameter "Parent"
    .parameter "TargetIndex"

    .prologue
    .line 753
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 754
    .local v7, alert:Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0a0166

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 755
    const v0, 0x108009b

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 756
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 757
    .local v8, inflaterDl:Landroid/view/LayoutInflater;
    const v0, 0x7f03000f

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 758
    .local v9, layout:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ServerList:Lcom/rookiestudio/perfectviewer/TServerList;

    invoke-virtual {v0, p2}, Lcom/rookiestudio/perfectviewer/TServerList;->getItem(I)Lcom/rookiestudio/baseclass/TServerInfo;

    move-result-object v6

    .line 760
    .local v6, aServerInfo:Lcom/rookiestudio/baseclass/TServerInfo;
    const v0, 0x7f0c0035

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 761
    .local v2, ServerEdit:Landroid/widget/EditText;
    const v0, 0x7f0c0036

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 762
    .local v3, UserEdit:Landroid/widget/EditText;
    const v0, 0x7f0c0037

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 763
    .local v4, PassEdit:Landroid/widget/EditText;
    const v0, 0x7f0c0038

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 764
    .local v5, DescEdit:Landroid/widget/EditText;
    iget-object v0, v6, Lcom/rookiestudio/baseclass/TServerInfo;->Path:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 765
    iget-object v0, v6, Lcom/rookiestudio/baseclass/TServerInfo;->UserName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 766
    iget-object v0, v6, Lcom/rookiestudio/baseclass/TServerInfo;->Password:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v0, v6, Lcom/rookiestudio/baseclass/TServerInfo;->Description:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 768
    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 769
    const v10, 0x104000a

    new-instance v0, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/rookiestudio/perfectviewer/TFileBrowser$9;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/rookiestudio/baseclass/TServerInfo;)V

    invoke-virtual {v7, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 787
    const/high16 v0, 0x104

    new-instance v1, Lcom/rookiestudio/perfectviewer/TFileBrowser$10;

    invoke-direct {v1, p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser$10;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 791
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 792
    return-void
.end method

.method public static FileOperation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
    .locals 11
    .parameter "Parent"
    .parameter "ParentView"
    .parameter "SelectedFile"

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x0

    .line 420
    if-nez p2, :cond_0

    .line 506
    :goto_0
    return-void

    .line 423
    :cond_0
    new-array v2, v10, [Ljava/lang/CharSequence;

    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v7, 0x7f0a001c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v9

    const/4 v6, 0x1

    .line 424
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v8, 0x7f0a008e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x2

    .line 425
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v8, 0x7f0a008f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x3

    .line 426
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v8, 0x7f0a00c2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x4

    .line 427
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v8, 0x7f0a013b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x5

    .line 428
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v8, 0x7f0a0130

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x6

    .line 429
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v8, 0x7f0a0090

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 430
    .local v2, MenuItemList:[Ljava/lang/CharSequence;
    new-array v1, v10, [I

    fill-array-data v1, :array_0

    .line 437
    .local v1, MenuImageList:[I
    new-instance v4, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;

    const v6, 0x7f03001b

    invoke-direct {v4, p0, v6, v2, v1}, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[I)V

    .line 438
    .local v4, PopupMenu:Lcom/rookiestudio/customize/PopupMenuArrayAdapter;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 439
    .local v5, alert:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v5, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 440
    const v6, 0x108009b

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 441
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 442
    .local v3, MenuListView:Landroid/widget/ListView;
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 443
    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 444
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 445
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 446
    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v7, 0x1080012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 447
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 448
    .local v0, MenuDialog:Landroid/app/AlertDialog;
    new-instance v6, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;

    invoke-direct {v6, v0, p0, p2}, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;-><init>(Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 505
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 430
    :array_0
    .array-data 0x4
        0xa0t 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
        0x6bt 0x0t 0x2t 0x7ft
        0x7et 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private GoUpperFolder()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 334
    const-string v0, ""

    .line 335
    .local v0, SelectFileName:Ljava/lang/String;
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->Location:I

    if-ne v1, v2, :cond_2

    .line 336
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    sget-object v2, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SMBRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ServerList:Lcom/rookiestudio/perfectviewer/TServerList;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/rookiestudio/perfectviewer/TServerList;->FindRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    sget-object v1, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SMBRoot:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SetFolder(Ljava/lang/String;)V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    :try_start_0
    new-instance v1, Ljcifs/smb/SmbFile;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-direct {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SetFolder(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    goto :goto_0

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 348
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-direct {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SetFolder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static RenameFile(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .parameter "Parent"
    .parameter "FileName"

    .prologue
    .line 822
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 823
    .local v0, TargetFile:Ljava/io/File;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 824
    .local v1, alert:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a008e

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 825
    const v3, 0x7f0a0091

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 827
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 828
    .local v2, input:Landroid/widget/EditText;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 829
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 830
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 831
    const v3, 0x104000a

    new-instance v4, Lcom/rookiestudio/perfectviewer/TFileBrowser$13;

    invoke-direct {v4, v2, p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser$13;-><init>(Landroid/widget/EditText;Landroid/app/Activity;Ljava/io/File;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 860
    const/high16 v3, 0x104

    new-instance v4, Lcom/rookiestudio/perfectviewer/TFileBrowser$14;

    invoke-direct {v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser$14;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 865
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 866
    return-void
.end method

.method private SelectLocation()V
    .locals 5

    .prologue
    .line 694
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v4, 0x7f0a0163

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    .line 695
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v4, 0x7f0a0164

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 696
    .local v0, LocationList:[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 697
    .local v1, alert:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0162

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 698
    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 699
    iget v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->Location:I

    new-instance v3, Lcom/rookiestudio/perfectviewer/TFileBrowser$5;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser$5;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 708
    const/high16 v2, 0x104

    new-instance v3, Lcom/rookiestudio/perfectviewer/TFileBrowser$6;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser$6;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 713
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 714
    return-void
.end method

.method private SetFolder(Ljava/lang/String;)V
    .locals 5
    .parameter "FolderName"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 261
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->Clear()V

    .line 263
    :try_start_0
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    const/4 v0, 0x2

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TextStatusBar:Landroid/widget/TextView;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a00e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 278
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->UpperButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 282
    :goto_1
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FolderRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_2
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->StartupScreen:I

    if-ne v0, v4, :cond_0

    .line 288
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    sput-object v0, Lcom/rookiestudio/perfectviewer/Config;->LastUseFolder:Ljava/lang/String;

    .line 289
    const-string v0, "LastUseFolder"

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_0
    return-void

    .line 270
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    const/4 v0, 0x1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    goto :goto_2

    .line 273
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    goto :goto_0

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->UpperButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static ViewFile(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 2
    .parameter "Parent"
    .parameter "Folder"
    .parameter "Order"
    .parameter "PreviousScreen"

    .prologue
    .line 1057
    sput-object p1, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFile:Ljava/lang/String;

    .line 1058
    sput p2, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFileOrder:I

    .line 1059
    sput p3, Lcom/rookiestudio/perfectviewer/Global;->PreviousScreen:I

    .line 1060
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1061
    .local v0, StartUpIntent:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1062
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1063
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1064
    return-void
.end method

.method static synthetic access$1(Lcom/rookiestudio/perfectviewer/TFileBrowser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SetFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    return-object v0
.end method

.method static synthetic access$11(Lcom/rookiestudio/perfectviewer/TFileBrowser;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileCount:I

    return-void
.end method

.method static synthetic access$12(Lcom/rookiestudio/perfectviewer/TFileBrowser;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileSize:J

    return-void
.end method

.method static synthetic access$13(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TPDFList;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    return-object v0
.end method

.method static synthetic access$15(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I
    .locals 1
    .parameter

    .prologue
    .line 89
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->Location:I

    return v0
.end method

.method static synthetic access$16(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TServerList;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ServerList:Lcom/rookiestudio/perfectviewer/TServerList;

    return-object v0
.end method

.method static synthetic access$17(Lcom/rookiestudio/perfectviewer/TFileBrowser;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastSelectIndex:I

    return-void
.end method

.method static synthetic access$18(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Lcom/rookiestudio/perfectviewer/TFileList;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    return-object v0
.end method

.method static synthetic access$19(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I
    .locals 1
    .parameter

    .prologue
    .line 83
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastSelectIndex:I

    return v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SMBRoot:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/rookiestudio/perfectviewer/TFileBrowser;Lcom/rookiestudio/perfectviewer/TArchiveFiles;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    return-void
.end method

.method static synthetic access$21(Lcom/rookiestudio/perfectviewer/TFileBrowser;Lcom/rookiestudio/perfectviewer/TPDFList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    return-void
.end method

.method static synthetic access$22(Lcom/rookiestudio/perfectviewer/TFileBrowser;Lcom/rookiestudio/perfectviewer/TFileList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    return-void
.end method

.method static synthetic access$23(Lcom/rookiestudio/perfectviewer/TFileBrowser;Landroid/app/Activity;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 751
    invoke-direct {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->EditServer(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$3(Lcom/rookiestudio/perfectviewer/TFileBrowser;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    return-void
.end method

.method static synthetic access$4(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TextStatusBar:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->StatusBarFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I
    .locals 1
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileCount:I

    return v0
.end method

.method static synthetic access$7(Lcom/rookiestudio/perfectviewer/TFileBrowser;)J
    .locals 2
    .parameter

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileSize:J

    return-wide v0
.end method

.method static synthetic access$8(Lcom/rookiestudio/perfectviewer/TFileBrowser;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LoadingImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/rookiestudio/perfectviewer/TFileBrowser;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    return v0
.end method


# virtual methods
.method public CalcColumns(I)V
    .locals 8
    .parameter "orientation"

    .prologue
    const/16 v7, 0x280

    const/4 v6, 0x5

    .line 612
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 613
    .local v2, aDisplay:Landroid/view/Display;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 614
    .local v3, outMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 615
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 616
    .local v0, ScreenHeight:I
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 617
    .local v1, ScreenWidth:I
    if-le v0, v1, :cond_2

    .line 618
    if-lt v1, v7, :cond_0

    .line 619
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 634
    :goto_0
    return-void

    .line 620
    :cond_0
    const/16 v4, 0x190

    if-lt v1, v4, :cond_1

    .line 621
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0

    .line 623
    :cond_1
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0

    .line 626
    :cond_2
    const/16 v4, 0x4b0

    if-lt v1, v4, :cond_3

    .line 627
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0

    .line 628
    :cond_3
    if-lt v0, v7, :cond_4

    .line 629
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0

    .line 631
    :cond_4
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method public ChangeViewModeButton(I)V
    .locals 2
    .parameter "ViewMode"

    .prologue
    .line 598
    if-nez p1, :cond_1

    .line 599
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ViewModeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 600
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->DoPause()V

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ViewModeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 603
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CreateThumbStart()V

    goto :goto_0

    .line 604
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ViewModeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 606
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CreateThumbStart()V

    goto :goto_0
.end method

.method public CreateThumbStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1011
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileCount:I

    if-nez v0, :cond_0

    .line 1021
    :goto_0
    return-void

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->MainProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1015
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ThumbCreaded:I

    .line 1016
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->MainProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1017
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->MainProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileCount:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1018
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->MainProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1020
    :cond_1
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->DoResume()V

    goto :goto_0
.end method

.method public DeleteServer(Landroid/app/Activity;I)V
    .locals 6
    .parameter "Parent"
    .parameter "TargetIndex"

    .prologue
    .line 796
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ServerList:Lcom/rookiestudio/perfectviewer/TServerList;

    invoke-virtual {v3, p2}, Lcom/rookiestudio/perfectviewer/TServerList;->getItem(I)Lcom/rookiestudio/baseclass/TServerInfo;

    move-result-object v0

    .line 797
    .local v0, aServerInfo:Lcom/rookiestudio/baseclass/TServerInfo;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 798
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a0074

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 799
    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 800
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v5, 0x7f0a0168

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/rookiestudio/baseclass/TServerInfo;->Path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 801
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 802
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/rookiestudio/perfectviewer/TFileBrowser$11;

    invoke-direct {v4, p0, p2}, Lcom/rookiestudio/perfectviewer/TFileBrowser$11;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 811
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const/high16 v4, 0x104

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/rookiestudio/perfectviewer/TFileBrowser$12;

    invoke-direct {v4, p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser$12;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 816
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 817
    .local v1, alert:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 818
    return-void
.end method

.method public DoRequirePassword(Ljava/lang/String;)V
    .locals 4
    .parameter "SelectArchive"

    .prologue
    .line 1194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1195
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0144

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1196
    const v2, 0x7f0a0145

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1198
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1199
    .local v1, input:Landroid/widget/EditText;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1200
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1201
    const v2, 0x104000a

    new-instance v3, Lcom/rookiestudio/perfectviewer/TFileBrowser$21;

    invoke-direct {v3, p0, v1, p1}, Lcom/rookiestudio/perfectviewer/TFileBrowser$21;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1209
    const/high16 v2, 0x104

    new-instance v3, Lcom/rookiestudio/perfectviewer/TFileBrowser$22;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser$22;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1213
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1214
    return-void
.end method

.method public FolderRefresh()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 296
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    sget-object v4, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SMBRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TitleText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    sget v2, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    .line 301
    .local v2, TmpViewMode:I
    sput v6, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    .line 302
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ViewModeChanged()V

    .line 303
    sput v2, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    .line 314
    .end local v2           #TmpViewMode:I
    :goto_0
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->Location:I

    if-ne v3, v7, :cond_3

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    sget-object v4, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SMBRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 315
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->AddServerButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    :goto_1
    const-string v3, "perfectviewer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TFileBrowser FolderRefresh "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    invoke-virtual {v3}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->DoPause()V

    .line 321
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->onCreateThumbnailFinish()V

    .line 323
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LoadingImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    const v3, 0x7f040006

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 325
    .local v0, LoadAnim:Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 326
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LoadingImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 328
    new-instance v1, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;)V

    .line 329
    .local v1, R:Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 330
    return-void

    .line 304
    .end local v0           #LoadAnim:Landroid/view/animation/Animation;
    .end local v1           #R:Lcom/rookiestudio/perfectviewer/TFileBrowser$TRefreshFolder;
    :cond_0
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    sget-object v4, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SMBRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ViewModeChanged()V

    .line 306
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    sget-object v4, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SMBRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-static {v3}, Lcom/rookiestudio/perfectviewer/TUtility;->GetSMBDisplayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SMBTitle:Ljava/lang/String;

    .line 309
    :cond_1
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TitleText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SMBTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ViewModeChanged()V

    .line 312
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TitleText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 317
    :cond_3
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->AddServerButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public InitUI()V
    .locals 2

    .prologue
    .line 148
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->setContentView(I)V

    .line 149
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    .line 150
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 152
    const v0, 0x7f0c0043

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TitleText:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->UpperButton:Landroid/widget/ImageButton;

    .line 154
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->UpperButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v0, 0x7f0c0047

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SortButton:Landroid/widget/ImageButton;

    .line 156
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SortButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ViewModeButton:Landroid/widget/ImageButton;

    .line 158
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ViewModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->HomeButton:Landroid/widget/ImageButton;

    .line 160
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->HomeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v0, 0x7f0c0045

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LibraryButton:Landroid/widget/ImageButton;

    .line 162
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LibraryButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->PreferenceButton:Landroid/widget/ImageButton;

    .line 164
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->PreferenceButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LocationText:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f0c0041

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LocationButton:Landroid/widget/LinearLayout;

    .line 167
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LocationButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v0, 0x7f0c0048

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->AddServerButton:Landroid/widget/Button;

    .line 169
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->AddServerButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v0, 0x7f0c0044

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LoadingImage:Landroid/widget/ImageView;

    .line 171
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LoadingImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    return-void
.end method

.method public OrientationChanged()V
    .locals 4

    .prologue
    .line 175
    sget v2, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 176
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 177
    .local v0, aDisplay:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    .line 178
    .local v1, orientation:I
    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CalcColumns(I)V

    .line 180
    .end local v0           #aDisplay:Landroid/view/Display;
    .end local v1           #orientation:I
    :cond_0
    return-void
.end method

.method public SelectSort()V
    .locals 5

    .prologue
    .line 974
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v4, 0x7f070002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 975
    .local v0, ListItems:[Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 977
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 978
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    mul-int/lit8 v3, v3, 0x4

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    add-int/2addr v3, v4

    new-instance v4, Lcom/rookiestudio/perfectviewer/TFileBrowser$19;

    invoke-direct {v4, p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser$19;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;)V

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 998
    const/high16 v3, 0x104

    new-instance v4, Lcom/rookiestudio/perfectviewer/TFileBrowser$20;

    invoke-direct {v4, p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser$20;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1003
    const v3, 0x7f0a00aa

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1004
    const v3, 0x108009b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1005
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1006
    .local v1, alert:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1007
    return-void
.end method

.method public SelectView()V
    .locals 5

    .prologue
    .line 948
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v4, 0x7f070003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 949
    .local v0, ListItems:[Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 951
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 952
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    new-instance v4, Lcom/rookiestudio/perfectviewer/TFileBrowser$17;

    invoke-direct {v4, p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser$17;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;)V

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 959
    const/high16 v3, 0x104

    new-instance v4, Lcom/rookiestudio/perfectviewer/TFileBrowser$18;

    invoke-direct {v4, p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser$18;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 964
    const v3, 0x7f0a00d1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 965
    const v3, 0x108009b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 966
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 967
    .local v1, alert:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 968
    return-void
.end method

.method public ServerOperation(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 6
    .parameter "Parent"
    .parameter "ParentView"
    .parameter "SelectedIndex"

    .prologue
    .line 510
    if-gez p3, :cond_0

    .line 549
    :goto_0
    return-void

    .line 513
    :cond_0
    new-instance v3, Lnet/londatiga/android/QuickAction;

    invoke-direct {v3, p2}, Lnet/londatiga/android/QuickAction;-><init>(Landroid/view/View;)V

    .line 514
    .local v3, qa:Lnet/londatiga/android/QuickAction;
    new-instance v1, Lnet/londatiga/android/ActionItem;

    invoke-direct {v1}, Lnet/londatiga/android/ActionItem;-><init>()V

    .line 515
    .local v1, ActionEditServer:Lnet/londatiga/android/ActionItem;
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v5, 0x7f0a0166

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/londatiga/android/ActionItem;->setTitle(Ljava/lang/String;)V

    .line 516
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v5, 0x7f02009f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/londatiga/android/ActionItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 517
    new-instance v4, Lcom/rookiestudio/perfectviewer/TFileBrowser$2;

    invoke-direct {v4, p0, v3, p1, p3}, Lcom/rookiestudio/perfectviewer/TFileBrowser$2;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;Lnet/londatiga/android/QuickAction;Landroid/app/Activity;I)V

    invoke-virtual {v1, v4}, Lnet/londatiga/android/ActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    new-instance v0, Lnet/londatiga/android/ActionItem;

    invoke-direct {v0}, Lnet/londatiga/android/ActionItem;-><init>()V

    .line 525
    .local v0, ActionDeleteServer:Lnet/londatiga/android/ActionItem;
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v5, 0x7f0a008f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/londatiga/android/ActionItem;->setTitle(Ljava/lang/String;)V

    .line 526
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v5, 0x7f02009e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/londatiga/android/ActionItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 527
    new-instance v4, Lcom/rookiestudio/perfectviewer/TFileBrowser$3;

    invoke-direct {v4, p0, v3, p1, p3}, Lcom/rookiestudio/perfectviewer/TFileBrowser$3;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;Lnet/londatiga/android/QuickAction;Landroid/app/Activity;I)V

    invoke-virtual {v0, v4}, Lnet/londatiga/android/ActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    new-instance v2, Lnet/londatiga/android/ActionItem;

    invoke-direct {v2}, Lnet/londatiga/android/ActionItem;-><init>()V

    .line 535
    .local v2, ActionExit:Lnet/londatiga/android/ActionItem;
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v5, 0x7f0a0090

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/londatiga/android/ActionItem;->setTitle(Ljava/lang/String;)V

    .line 536
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v5, 0x7f0200b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/londatiga/android/ActionItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 537
    new-instance v4, Lcom/rookiestudio/perfectviewer/TFileBrowser$4;

    invoke-direct {v4, p0, v3}, Lcom/rookiestudio/perfectviewer/TFileBrowser$4;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;Lnet/londatiga/android/QuickAction;)V

    invoke-virtual {v2, v4}, Lnet/londatiga/android/ActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    invoke-virtual {v3, v1}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 545
    invoke-virtual {v3, v0}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 546
    invoke-virtual {v3, v2}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 547
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lnet/londatiga/android/QuickAction;->setAnimStyle(I)V

    .line 548
    invoke-virtual {v3}, Lnet/londatiga/android/QuickAction;->show()V

    goto/16 :goto_0
.end method

.method public SetLocation(IZ)V
    .locals 3
    .parameter "Value"
    .parameter "UIOnly"

    .prologue
    .line 133
    iput p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->Location:I

    .line 134
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->Location:I

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LocationText:Landroid/widget/TextView;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a0163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    if-nez p2, :cond_0

    .line 137
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->SDCardFolder:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SetFolder(Ljava/lang/String;)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LocationText:Landroid/widget/TextView;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a0164

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    if-nez p2, :cond_0

    .line 142
    sget-object v0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SMBRoot:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SetFolder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ViewModeChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 638
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentViewMode:I

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    if-ne v3, v4, :cond_0

    .line 662
    :goto_0
    return-void

    .line 641
    :cond_0
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    iput v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentViewMode:I

    .line 642
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 643
    .local v1, aDisplay:Landroid/view/Display;
    const-string v3, "FileViewMode"

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    invoke-static {v3, v4}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 644
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 645
    .local v0, TopView:I
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 647
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    if-ne v3, v6, :cond_1

    .line 648
    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v2

    .line 649
    .local v2, orientation:I
    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CalcColumns(I)V

    .line 653
    .end local v2           #orientation:I
    :goto_1
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    if-ne v3, v5, :cond_2

    .line 654
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 660
    :goto_2
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 661
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentViewMode:I

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ChangeViewModeButton(I)V

    goto :goto_0

    .line 651
    :cond_1
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1

    .line 655
    :cond_2
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    if-ne v3, v6, :cond_3

    .line 656
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 658
    :cond_3
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 665
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c001e

    if-ne v0, v1, :cond_1

    .line 666
    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->GoUpperFolder()V

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0047

    if-ne v0, v1, :cond_2

    .line 668
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SelectSort()V

    goto :goto_0

    .line 669
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0046

    if-ne v0, v1, :cond_3

    .line 670
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SelectView()V

    goto :goto_0

    .line 671
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0045

    if-ne v0, v1, :cond_4

    .line 676
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->finish()V

    .line 679
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->CreateBookshelf(Landroid/app/Activity;)V

    goto :goto_0

    .line 680
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c001c

    if-ne v0, v1, :cond_5

    .line 682
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CreateHomeActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 683
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0021

    if-ne v0, v1, :cond_6

    .line 684
    const/16 v0, 0x21

    invoke-static {p0, v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 685
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0041

    if-ne v0, v1, :cond_7

    .line 686
    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SelectLocation()V

    goto :goto_0

    .line 687
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0048

    if-ne v0, v1, :cond_0

    .line 688
    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->AddServer()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const-string v0, "perfectviewer"

    const-string v1, "TFileBrowser onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/TStartup;->LibraryLoadded:Z

    if-nez v0, :cond_0

    .line 104
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TStartup;->CheckNativeLibrary(Landroid/content/Context;)I

    .line 106
    :cond_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->UseLanguage:Ljava/lang/String;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->UseLanguage:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/rookiestudio/perfectviewer/TUtility;->setLocale(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    :cond_1
    new-instance v0, Lcom/rookiestudio/baseclass/TResultReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/rookiestudio/baseclass/TResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->mReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;

    .line 110
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->mReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;

    invoke-virtual {v0, p0}, Lcom/rookiestudio/baseclass/TResultReceiver;->setReceiver(Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;)V

    .line 111
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    if-nez v0, :cond_4

    .line 112
    new-instance v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->mReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;

    invoke-direct {v0, p0, v1}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;-><init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    .line 113
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->DoPause()V

    .line 114
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->setPriority(I)V

    .line 115
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 119
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->requestWindowFeature(I)Z

    .line 120
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->requestWindowFeature(I)Z

    .line 121
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->InitUI()V

    .line 122
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    invoke-static {p0, v0}, Lcom/rookiestudio/perfectviewer/TUtility;->SetScreenOrientation(Landroid/app/Activity;I)V

    .line 123
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v1, 0x7f0a00e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->StatusBarFormat:Ljava/lang/String;

    .line 124
    sget-object v0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 125
    :cond_2
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->SDCardFolder:Ljava/lang/String;

    sput-object v0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;

    .line 128
    :cond_3
    new-instance v0, Lcom/rookiestudio/perfectviewer/TServerList;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TServerList;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ServerList:Lcom/rookiestudio/perfectviewer/TServerList;

    .line 129
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ServerList:Lcom/rookiestudio/perfectviewer/TServerList;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TServerList;->LoadServerList()V

    .line 130
    return-void

    .line 117
    :cond_4
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->mReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;

    iput-object v1, v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MainReceiver:Landroid/os/ResultReceiver;

    goto :goto_0
.end method

.method public onCreateThumbnailFinish()V
    .locals 2

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->MainProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->MainProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1035
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 250
    const-string v0, "perfectviewer"

    const-string v1, "TFileBrowser onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 252
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 357
    const/4 v5, 0x0

    .line 358
    .local v5, isDirectory:Z
    const-string v1, ""

    .line 359
    .local v1, SelectFileName:Ljava/lang/String;
    iget v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->Location:I

    if-ne v6, v9, :cond_6

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    sget-object v7, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SMBRoot:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 360
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ServerList:Lcom/rookiestudio/perfectviewer/TServerList;

    invoke-virtual {v6, p3}, Lcom/rookiestudio/perfectviewer/TServerList;->getItem(I)Lcom/rookiestudio/baseclass/TServerInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentServerInfo:Lcom/rookiestudio/baseclass/TServerInfo;

    .line 361
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentServerInfo:Lcom/rookiestudio/baseclass/TServerInfo;

    invoke-virtual {v6}, Lcom/rookiestudio/baseclass/TServerInfo;->GetSMBPath()Ljava/lang/String;

    move-result-object v1

    .line 362
    const/4 v5, 0x1

    .line 363
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    if-eqz v6, :cond_0

    .line 364
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    invoke-virtual {v6}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->Clear()V

    .line 366
    :cond_0
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    if-eqz v6, :cond_1

    .line 367
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    invoke-virtual {v6}, Lcom/rookiestudio/perfectviewer/TFileList;->Clear()V

    .line 369
    :cond_1
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    if-eqz v6, :cond_2

    .line 370
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    invoke-virtual {v6}, Lcom/rookiestudio/perfectviewer/TPDFList;->Clear()V

    .line 391
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, SelectFileName2:Ljava/lang/String;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 393
    :cond_3
    sget v6, Lcom/rookiestudio/perfectviewer/Config;->OpenArchiveDo:I

    if-nez v6, :cond_4

    .line 394
    const/4 v5, 0x1

    .line 398
    :cond_4
    if-eqz v5, :cond_9

    .line 399
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    .line 401
    .local v0, LastFolder:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SetFolder(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v0           #LastFolder:Ljava/lang/String;
    .end local v2           #SelectFileName2:Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 372
    :cond_6
    iget v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    if-ne v6, v9, :cond_7

    .line 373
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    invoke-virtual {v6, p3}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 376
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    invoke-virtual {v6, p3}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v6

    iget-object v1, v6, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    goto :goto_0

    .line 377
    :cond_7
    iget v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    if-ne v6, v8, :cond_8

    .line 378
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    invoke-virtual {v6, p3}, Lcom/rookiestudio/perfectviewer/TPDFList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 381
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    invoke-virtual {v6, p3}, Lcom/rookiestudio/perfectviewer/TPDFList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v6

    iget-object v1, v6, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    goto :goto_0

    .line 383
    :cond_8
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    invoke-virtual {v6, p3}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 386
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    invoke-virtual {v6, p3}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v3

    .line 387
    .local v3, SelectedFile:Lcom/rookiestudio/baseclass/TFileData;
    iget-boolean v5, v3, Lcom/rookiestudio/baseclass/TFileData;->IsFolder:Z

    .line 388
    iget-object v1, v3, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    goto :goto_0

    .line 402
    .end local v3           #SelectedFile:Lcom/rookiestudio/baseclass/TFileData;
    .restart local v0       #LastFolder:Ljava/lang/String;
    .restart local v2       #SelectFileName2:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 404
    .local v4, e:Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SetFolder(Ljava/lang/String;)V

    goto :goto_1

    .line 407
    .end local v0           #LastFolder:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    :cond_9
    iget v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    if-ne v6, v9, :cond_a

    .line 408
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-static {p0, v6, p3, v8}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ViewFile(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 414
    :goto_2
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->finish()V

    goto :goto_1

    .line 409
    :cond_a
    iget v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    if-ne v6, v8, :cond_b

    .line 410
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-static {p0, v6, p3, v8}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ViewFile(Landroid/app/Activity;Ljava/lang/String;II)V

    goto :goto_2

    .line 412
    :cond_b
    const/4 v6, -0x1

    invoke-static {p0, v1, v6, v8}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ViewFile(Landroid/app/Activity;Ljava/lang/String;II)V

    goto :goto_2
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 554
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    if-ne v1, v3, :cond_0

    .line 555
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-static {p0, v1, p3, v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ViewFile(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 556
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->finish()V

    .line 568
    :goto_0
    return v3

    .line 557
    :cond_0
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    if-ne v1, v2, :cond_1

    .line 558
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-static {p0, v1, p3, v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ViewFile(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 559
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->finish()V

    goto :goto_0

    .line 561
    :cond_1
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->Location:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    sget-object v2, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SMBRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 562
    invoke-virtual {p0, p0, p2, p3}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ServerOperation(Landroid/app/Activity;Landroid/view/View;I)V

    goto :goto_0

    .line 564
    :cond_2
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    invoke-virtual {v1, p3}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v0

    .line 565
    .local v0, SelectedFile:Lcom/rookiestudio/baseclass/TFileData;
    iget-object v1, v0, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    invoke-static {p0, p2, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileOperation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 590
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 591
    const/4 v0, 0x1

    .line 593
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 573
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 574
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->KeyGoBack2:I

    if-nez v1, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->finish()V

    .line 585
    :goto_0
    return v0

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 578
    :cond_1
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->finish()V

    goto :goto_0

    .line 580
    :cond_2
    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->GoUpperFolder()V

    goto :goto_0

    .line 585
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongRunningActionFinished(Ljava/lang/Long;Ljava/lang/Exception;)V
    .locals 6
    .parameter "result"
    .parameter "error"

    .prologue
    .line 911
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 912
    const v0, 0x7f0a0097

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 917
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TextStatusBar:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->StatusBarFormat:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TotalFileSize:J

    invoke-static {v4, v5}, Lcom/rookiestudio/perfectviewer/TUtility;->size2String(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LoadingImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 919
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LoadingImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 923
    :goto_1
    return-void

    .line 913
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xb

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 914
    const v0, 0x7f0a0096

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 915
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FolderRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 921
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public bridge synthetic onLongRunningActionFinished(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->onLongRunningActionFinished(Ljava/lang/Long;Ljava/lang/Exception;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 256
    const-string v0, "perfectviewer"

    const-string v1, "TFileBrowser onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 258
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 224
    const-string v1, "perfectviewer"

    const-string v2, "TFileBrowser onPause start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->DoPause()V

    .line 226
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->onCreateThumbnailFinish()V

    .line 227
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 228
    .local v0, Index:I
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CurrentFolder:Ljava/lang/String;

    sput-object v1, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;

    .line 229
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 230
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFile:Ljava/lang/String;

    .line 243
    :cond_0
    :goto_0
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->Clear()V

    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 246
    return-void

    .line 233
    :cond_1
    const-string v1, "0"

    sput-object v1, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFile:Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_2
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 237
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TFileList;->getCount()I

    move-result v1

    if-eqz v1, :cond_3

    .line 238
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    invoke-virtual {v1, v0}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v1

    iget-object v1, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    sput-object v1, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFile:Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_3
    const-string v1, ""

    sput-object v1, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFile:Ljava/lang/String;

    goto :goto_0
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 9
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 1069
    packed-switch p1, :pswitch_data_0

    .line 1123
    :goto_0
    :pswitch_0
    return-void

    .line 1071
    :pswitch_1
    sget-object v7, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbQueue:Ljava/util/Vector;

    monitor-enter v7

    .line 1072
    :try_start_0
    sget-object v6, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbQueue:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1073
    monitor-exit v7

    goto :goto_0

    .line 1071
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1075
    :cond_0
    :try_start_1
    sget-object v6, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbQueue:Ljava/util/Vector;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rookiestudio/baseclass/TThumbToLoad;

    .line 1076
    .local v3, ThumbToLoad:Lcom/rookiestudio/baseclass/TThumbToLoad;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    if-lt v4, v6, :cond_1

    .line 1093
    :goto_2
    sget-object v6, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbQueue:Ljava/util/Vector;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 1071
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1116
    sget-object v6, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbQueue:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->onThumbnailCreated(I)V

    goto :goto_0

    .line 1077
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    invoke-virtual {v6, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1078
    .local v5, wantedView:Landroid/view/View;
    const v6, 0x7f0c003b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1079
    .local v2, Icon:Landroid/widget/ImageView;
    iget-object v0, v3, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileName:Ljava/lang/String;

    .line 1080
    .local v0, FN1:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1082
    .local v1, FN2:Ljava/lang/String;
    iget v6, v3, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileOrder:I

    if-ltz v6, :cond_2

    .line 1083
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v3, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileOrder:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1085
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-eqz v6, :cond_3

    .line 1087
    :try_start_3
    iget-object v6, v3, Lcom/rookiestudio/baseclass/TThumbToLoad;->ThumbData:Lcom/rookiestudio/baseclass/TThumbData;

    invoke-virtual {v6}, Lcom/rookiestudio/baseclass/TThumbData;->GetBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1088
    :catch_0
    move-exception v6

    goto :goto_2

    .line 1076
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1119
    .end local v0           #FN1:Ljava/lang/String;
    .end local v1           #FN2:Ljava/lang/String;
    .end local v2           #Icon:Landroid/widget/ImageView;
    .end local v3           #ThumbToLoad:Lcom/rookiestudio/baseclass/TThumbToLoad;
    .end local v4           #i:I
    .end local v5           #wantedView:Landroid/view/View;
    :pswitch_2
    const-string v6, "perfectviewer"

    const-string v7, "onCreateThumbnailFinish"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->onCreateThumbnailFinish()V

    goto/16 :goto_0

    .line 1069
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 186
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->OrientationChanged()V

    .line 187
    sput v5, Lcom/rookiestudio/perfectviewer/Global;->CurrentScreen:I

    .line 188
    const-string v1, "perfectviewer"

    const-string v2, "TFileBrowser onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v1, Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;-><init>(Landroid/content/Context;IIZ)V

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    .line 190
    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->EnablePDF:Z

    if-eqz v1, :cond_0

    .line 191
    new-instance v1, Lcom/rookiestudio/perfectviewer/TPDFList;

    invoke-direct {v1, p0}, Lcom/rookiestudio/perfectviewer/TPDFList;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    .line 193
    :cond_0
    new-instance v1, Lcom/rookiestudio/perfectviewer/TFileList;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/rookiestudio/perfectviewer/TFileList;-><init>(Landroid/content/Context;III)V

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    .line 194
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    iput-boolean v4, v1, Lcom/rookiestudio/perfectviewer/TFileList;->ShowFolder:Z

    .line 195
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    if-ne v1, v4, :cond_2

    .line 196
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ArchiveLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    :goto_0
    const v1, 0x7f0c004a

    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->MainProgressBar:Landroid/widget/ProgressBar;

    .line 203
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->MainProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 204
    const v1, 0x7f0c0049

    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TextStatusBar:Landroid/widget/TextView;

    .line 205
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->TextStatusBar:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const/4 v1, -0x1

    iput v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastSelectIndex:I

    .line 207
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ChangeViewModeButton(I)V

    .line 209
    :try_start_0
    sget-object v1, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    const-string v1, "/"

    sput-object v1, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_1
    :goto_1
    new-instance v1, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;)V

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 216
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->FirstStartCheck(Landroid/app/Activity;)V

    .line 217
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    .line 220
    return-void

    .line 197
    :cond_2
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I

    if-ne v1, v5, :cond_3

    .line 198
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->PDFLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 200
    :cond_3
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileListView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->SDCardFolder:Ljava/lang/String;

    sput-object v1, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;

    goto :goto_1
.end method

.method public onThumbnailCreated(I)V
    .locals 2
    .parameter "Count"

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->MainProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 1029
    :goto_0
    return-void

    .line 1027
    :cond_0
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ThumbCreaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ThumbCreaded:I

    .line 1028
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->MainProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ThumbCreaded:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method
