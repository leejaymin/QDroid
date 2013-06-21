.class public Lcom/rookiestudio/perfectviewer/TMainMenu;
.super Landroid/widget/LinearLayout;
.source "TMainMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TMainMenu$TBookmarkData;,
        Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;,
        Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;,
        Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;,
        Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;,
        Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final GeneralMenuID:I = 0x0

.field private static final ToolsMenuID:I = 0x6


# instance fields
.field private BackButton:Landroid/widget/ImageButton;

.field private BookmarkData:Lcom/rookiestudio/perfectviewer/TMainMenu$TBookmarkData;

.field private CheckMenuPosition:I

.field private ClearDataItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

.field private CurrentMenuTitle:Landroid/widget/TextView;

.field private EffectMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

.field private GeneralMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

.field private HistoryData:Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;

.field private MainMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;

.field private MainMenuList:Landroid/widget/ListView;

.field private MainMenuPosition:I

.field private MiscMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

.field private NavigateMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

.field private OriginMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

.field private ResampleMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

.field private ScreenOrientationItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

.field private SetWallpaperItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

.field private SubMenuLevel:I

.field private SubMenuList:Landroid/widget/ListView;

.field private SubMenuPosition:I

.field private ToolsMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

.field private ZoomMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/rookiestudio/perfectviewer/TMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/rookiestudio/perfectviewer/TMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    const v6, 0x7f020097

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->GeneralMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 50
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->EffectMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 51
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ZoomMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 52
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ResampleMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 53
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->OriginMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 54
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->NavigateMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 55
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ToolsMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 56
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MiscMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 57
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SetWallpaperItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 58
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ClearDataItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 59
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ScreenOrientationItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 60
    iput v4, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuPosition:I

    .line 61
    iput v4, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    .line 62
    iput v4, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CheckMenuPosition:I

    .line 63
    iput v4, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuLevel:I

    .line 65
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->HistoryData:Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;

    .line 66
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->BookmarkData:Lcom/rookiestudio/perfectviewer/TMainMenu$TBookmarkData;

    .line 80
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->inflater:Landroid/view/LayoutInflater;

    .line 81
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001f

    invoke-virtual {v0, v1, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 82
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->setGravity(I)V

    .line 83
    new-instance v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-direct {v0, p0, p1}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->GeneralMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 84
    new-instance v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-direct {v0, p0, p1}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->EffectMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 85
    new-instance v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-direct {v0, p0, p1}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ZoomMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 86
    new-instance v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-direct {v0, p0, p1}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ResampleMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 87
    new-instance v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-direct {v0, p0, p1}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->OriginMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 88
    new-instance v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-direct {v0, p0, p1}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->NavigateMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 89
    new-instance v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-direct {v0, p0, p1}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ToolsMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 90
    new-instance v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-direct {v0, p0, p1}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MiscMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 91
    new-instance v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-direct {v0, p0, p1}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SetWallpaperItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 92
    new-instance v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-direct {v0, p0, p1}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ClearDataItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 93
    new-instance v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-direct {v0, p0, p1}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ScreenOrientationItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    .line 94
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->GeneralMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a001c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200a0

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 95
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->GeneralMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a00ca

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02004a

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 96
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->GeneralMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a001d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200a5

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 97
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->GeneralMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0086

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020098

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 98
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->GeneralMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0085

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020095

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 99
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->GeneralMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a001e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02009d

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 100
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->GeneralMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a001f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020096

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 101
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->GeneralMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a015c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200b3

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 102
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->GeneralMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0170

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02009c

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 103
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ScreenOrientationItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a015d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020066

    invoke-virtual {v0, v1, v2, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 104
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ScreenOrientationItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a015e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020069

    invoke-virtual {v0, v1, v2, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 105
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ScreenOrientationItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a015f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020067

    invoke-virtual {v0, v1, v2, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 106
    sget v0, Lcom/rookiestudio/perfectviewer/Global;->AndroidSDKVersion:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ScreenOrientationItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0160

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02006a

    invoke-virtual {v0, v1, v2, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 108
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ScreenOrientationItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0161

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020068

    invoke-virtual {v0, v1, v2, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->EffectMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0032

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200b5

    invoke-virtual {v0, v1, v2, v7}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 111
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->EffectMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a00ea

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02009b

    invoke-virtual {v0, v1, v2, v7}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 112
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->EffectMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a00ed

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200a6

    invoke-virtual {v0, v1, v2, v7}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 113
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->EffectMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a012f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200b4

    invoke-virtual {v0, v1, v2, v7}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 114
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->EffectMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a00fd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020010

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 115
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->EffectMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a013c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020099

    invoke-virtual {v0, v1, v2, v7}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 116
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->EffectMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0117

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02003b

    invoke-virtual {v0, v1, v2, v7}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 117
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->EffectMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0118

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02003c

    invoke-virtual {v0, v1, v2, v7}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 118
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ZoomMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0034

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200b8

    invoke-virtual {v0, v1, v2, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 119
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ZoomMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0035

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200a1

    invoke-virtual {v0, v1, v2, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 120
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ZoomMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0036

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200a3

    invoke-virtual {v0, v1, v2, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 121
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ZoomMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0037

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200a2

    invoke-virtual {v0, v1, v2, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 122
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ZoomMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0038

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 123
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ResampleMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a003a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 124
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ResampleMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a003b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 125
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ResampleMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a003c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 126
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ResampleMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a003d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 127
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ResampleMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a003e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 128
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ResampleMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a003f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 129
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->OriginMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0041

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200ae

    invoke-virtual {v0, v1, v2, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 134
    :goto_0
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-nez v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->OriginMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a00d2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200af

    invoke-virtual {v0, v1, v2, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 139
    :goto_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->OriginMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0042

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200ab

    invoke-virtual {v0, v1, v2, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 140
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-nez v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->OriginMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0043

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200b2

    invoke-virtual {v0, v1, v2, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 145
    :goto_2
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->OriginMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0044

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200b0

    invoke-virtual {v0, v1, v2, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 146
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SetWallpaperItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0089

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 147
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SetWallpaperItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a008a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 148
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ClearDataItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0004

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02009a

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 149
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ClearDataItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a00a0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02009a

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 150
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ClearDataItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a00a2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02009a

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 151
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->NavigateMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0054

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 152
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->NavigateMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0055

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200a4

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 153
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->NavigateMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a00c0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02006b

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 154
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->NavigateMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a004b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020044

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 155
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->NavigateMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a004a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020042

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 156
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->NavigateMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0051

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020045

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 157
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->NavigateMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0050

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020043

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 158
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->NavigateMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a004c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02003f

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 159
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->NavigateMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a004d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020041

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 160
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->NavigateMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0052

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200b9

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 161
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->NavigateMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0053

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200ba

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 162
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->NavigateMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a002a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020016

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 163
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->NavigateMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0106

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020017

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 164
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ToolsMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a001b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200a9

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 165
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ToolsMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a011d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200a8

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 166
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ToolsMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0149

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020049

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 167
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ToolsMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0080

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200aa

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 168
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ToolsMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a006b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200cf

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 169
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ToolsMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0077

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200b7

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 170
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ToolsMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a00a4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02009a

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 171
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MiscMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0019

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200a7

    invoke-virtual {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 172
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MiscMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0073

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 173
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MiscMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a00f3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 174
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MiscMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a001a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 176
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MiscMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a000f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 177
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MiscMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0010

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 178
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MiscMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0011

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 180
    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuList:Landroid/widget/ListView;

    .line 181
    const v0, 0x7f0c005e

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    .line 182
    const v0, 0x7f0c005d

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CurrentMenuTitle:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f0c003a

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->BackButton:Landroid/widget/ImageButton;

    .line 184
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->BackButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->BackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 189
    new-instance v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;

    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;

    .line 190
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuList:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 192
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuList:Landroid/widget/ListView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 193
    return-void

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->OriginMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0041

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200ac

    invoke-virtual {v0, v1, v2, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    goto/16 :goto_0

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->OriginMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a00d2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200ad

    invoke-virtual {v0, v1, v2, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    goto/16 :goto_1

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->OriginMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    const v1, 0x7f0a0043

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200b1

    invoke-virtual {v0, v1, v2, v5}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    goto/16 :goto_2
.end method

.method private ScreenOrientationHandler(I)V
    .locals 2
    .parameter "Index"

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 546
    packed-switch p1, :pswitch_data_0

    .line 563
    :goto_0
    return-void

    .line 548
    :pswitch_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 551
    :pswitch_1
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x2f

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 554
    :pswitch_2
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 557
    :pswitch_3
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 560
    :pswitch_4
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/rookiestudio/perfectviewer/TMainMenu;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rookiestudio/perfectviewer/TMainMenu;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuPosition:I

    return v0
.end method

.method static synthetic access$2(Lcom/rookiestudio/perfectviewer/TMainMenu;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CheckMenuPosition:I

    return v0
.end method

.method static synthetic access$3(Lcom/rookiestudio/perfectviewer/TMainMenu;)Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->HistoryData:Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;

    return-object v0
.end method

.method static synthetic access$4(Lcom/rookiestudio/perfectviewer/TMainMenu;)Lcom/rookiestudio/perfectviewer/TMainMenu$TBookmarkData;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->BookmarkData:Lcom/rookiestudio/perfectviewer/TMainMenu$TBookmarkData;

    return-object v0
.end method


# virtual methods
.method public BookmarkMenuHandler(I)V
    .locals 4
    .parameter "Index"

    .prologue
    .line 311
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->BookmarkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->BookmarkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 317
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->BookmarkList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/baseclass/THistoryItem;

    .line 318
    .local v0, aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    iget-object v1, v0, Lcom/rookiestudio/baseclass/THistoryItem;->FolderName:Ljava/lang/String;

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/rookiestudio/baseclass/THistoryItem;->FolderName:Ljava/lang/String;

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 319
    :cond_2
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    iget-object v2, v0, Lcom/rookiestudio/baseclass/THistoryItem;->FolderName:Ljava/lang/String;

    iget-object v3, v0, Lcom/rookiestudio/baseclass/THistoryItem;->FileName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/rookiestudio/perfectviewer/TViewerMain;->StartOpenFile(Ljava/lang/String;I)V

    goto :goto_0

    .line 321
    :cond_3
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/rookiestudio/baseclass/THistoryItem;->FolderName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/rookiestudio/baseclass/THistoryItem;->FileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/rookiestudio/perfectviewer/TViewerMain;->StartOpenFile(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public CreateBookmarkMenu()V
    .locals 3

    .prologue
    .line 624
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CurrentMenuTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->GeneralMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->getItem(I)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    move-result-object v1

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;->MenuText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    const/4 v0, 0x1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuLevel:I

    .line 626
    new-instance v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TBookmarkData;

    invoke-direct {v0, p0}, Lcom/rookiestudio/perfectviewer/TMainMenu$TBookmarkData;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->BookmarkData:Lcom/rookiestudio/perfectviewer/TMainMenu$TBookmarkData;

    .line 627
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 628
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 629
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->BookmarkData:Lcom/rookiestudio/perfectviewer/TMainMenu$TBookmarkData;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 630
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 631
    return-void
.end method

.method public CreateHistoryMenu()V
    .locals 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CurrentMenuTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->GeneralMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->getItem(I)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    move-result-object v1

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;->MenuText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    const/4 v0, 0x1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuLevel:I

    .line 615
    new-instance v0, Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;

    invoke-direct {v0, p0}, Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->HistoryData:Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;

    .line 616
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 617
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 618
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->HistoryData:Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 619
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 620
    return-void
.end method

.method public DoDeleteData(II)V
    .locals 4
    .parameter "DataType"
    .parameter "Index"

    .prologue
    const/4 v3, 0x1

    .line 708
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 709
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0074

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 710
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 711
    if-nez p1, :cond_1

    .line 712
    const v2, 0x7f0a009f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 716
    :cond_0
    :goto_0
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 718
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/rookiestudio/perfectviewer/TMainMenu$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TMainMenu$3;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 735
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const/high16 v3, 0x104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/rookiestudio/perfectviewer/TMainMenu$4;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TMainMenu$4;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 741
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 742
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 743
    return-void

    .line 713
    .end local v0           #alert:Landroid/app/AlertDialog;
    :cond_1
    if-ne p1, v3, :cond_0

    .line 714
    const v2, 0x7f0a009e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public Hide()V
    .locals 3

    .prologue
    .line 219
    const/4 v1, 0x0

    sput-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->ShowMainMenu:Z

    .line 220
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 221
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 222
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 223
    new-instance v1, Lcom/rookiestudio/perfectviewer/TMainMenu$2;

    invoke-direct {v1, p0}, Lcom/rookiestudio/perfectviewer/TMainMenu$2;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 235
    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 236
    return-void
.end method

.method public HistoryMenuHandler(I)V
    .locals 6
    .parameter "Index"

    .prologue
    .line 295
    sget-object v3, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 307
    :goto_0
    return-void

    .line 298
    :cond_0
    sget-object v3, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rookiestudio/baseclass/THistoryItem;

    .line 299
    .local v2, aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    iget-object v1, v2, Lcom/rookiestudio/baseclass/THistoryItem;->FolderName:Ljava/lang/String;

    .line 300
    .local v1, FolderName:Ljava/lang/String;
    iget-object v0, v2, Lcom/rookiestudio/baseclass/THistoryItem;->FileName:Ljava/lang/String;

    .line 301
    .local v0, FileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    :cond_1
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/rookiestudio/perfectviewer/TViewerMain;->StartOpenFile(Ljava/lang/String;I)V

    goto :goto_0

    .line 304
    :cond_2
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/rookiestudio/perfectviewer/TViewerMain;->StartOpenFile(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public MiscMenuHandler(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    packed-switch v2, :pswitch_data_0

    .line 703
    :goto_0
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 704
    return-void

    .line 679
    :pswitch_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TUtility;->ShowAbout(Landroid/app/Activity;)V

    goto :goto_0

    .line 682
    :pswitch_1
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/rookiestudio/perfectviewer/TUtility;->ShowAbout(Landroid/app/Activity;I)V

    goto :goto_0

    .line 685
    :pswitch_2
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TUtility;->ShowInformarion()V

    goto :goto_0

    .line 688
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "mailto:rookiestudio@gmail.com?subject=Perfect%20Viewer"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 690
    .local v0, data:Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 691
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 694
    .end local v0           #data:Landroid/net/Uri;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_4
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TUtility;->OpenDonation(Landroid/app/Activity;)V

    goto :goto_0

    .line 697
    :pswitch_5
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TUtility;->OpenDonation1(Landroid/app/Activity;)V

    goto :goto_0

    .line 700
    :pswitch_6
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TUtility;->OpenDonation2(Landroid/app/Activity;)V

    goto :goto_0

    .line 677
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public NavigateMenuHandler(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 567
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    packed-switch v0, :pswitch_data_0

    .line 608
    :goto_0
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 609
    return-void

    .line 569
    :pswitch_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 572
    :pswitch_1
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x29

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 575
    :pswitch_2
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 578
    :pswitch_3
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 581
    :pswitch_4
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 584
    :pswitch_5
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 587
    :pswitch_6
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 590
    :pswitch_7
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 593
    :pswitch_8
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 596
    :pswitch_9
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 599
    :pswitch_a
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 602
    :pswitch_b
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 605
    :pswitch_c
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 567
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public SetStartupMenu(I)V
    .locals 3
    .parameter "StartupMenu"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    .line 241
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuPosition:I

    .line 242
    const/4 v0, 0x2

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    .line 243
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuLevel:I

    .line 244
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->CreateHistoryMenu()V

    .line 257
    :goto_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 258
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->notifyDataSetChanged()V

    .line 259
    return-void

    .line 245
    :cond_0
    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 246
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuPosition:I

    .line 247
    const/4 v0, 0x3

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    .line 248
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuLevel:I

    .line 249
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->CreateBookmarkMenu()V

    goto :goto_0

    .line 251
    :cond_1
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuPosition:I

    .line 252
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    .line 253
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuLevel:I

    .line 254
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CurrentMenuTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->getItem(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->GeneralMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public Show()V
    .locals 3

    .prologue
    .line 197
    const/4 v1, 0x1

    sput-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->ShowMainMenu:Z

    .line 198
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040010

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 199
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 200
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 201
    new-instance v1, Lcom/rookiestudio/perfectviewer/TMainMenu$1;

    invoke-direct {v1, p0}, Lcom/rookiestudio/perfectviewer/TMainMenu$1;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 214
    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 215
    return-void
.end method

.method public SubMenuAnimation()V
    .locals 13

    .prologue
    const-wide/16 v11, 0xc8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 263
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 264
    .local v10, set:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 265
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 266
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 268
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 270
    .end local v0           #animation:Landroid/view/animation/Animation;
    const/high16 v6, -0x4080

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    .line 268
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 272
    .restart local v0       #animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 273
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 276
    new-instance v9, Landroid/view/animation/LayoutAnimationController;

    const/high16 v1, 0x3e80

    invoke-direct {v9, v10, v1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 277
    .local v9, controller:Landroid/view/animation/LayoutAnimationController;
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 278
    return-void
.end method

.method public ToolsMenuHandler(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 635
    iget v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    packed-switch v2, :pswitch_data_0

    .line 672
    :goto_0
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 673
    :goto_1
    return-void

    .line 637
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/rookiestudio/perfectviewer/TPreferences;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 638
    .local v0, Preferences:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 641
    .end local v0           #Preferences:Landroid/content/Intent;
    :pswitch_1
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v3, 0x2a

    invoke-static {v2, v3}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 644
    :pswitch_2
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->CreateHardwareKeyManagement(Landroid/app/Activity;)V

    goto :goto_0

    .line 647
    :pswitch_3
    new-instance v1, Lcom/rookiestudio/perfectviewer/TQuickSetup;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-direct {v1, v2}, Lcom/rookiestudio/perfectviewer/TQuickSetup;-><init>(Landroid/content/Context;)V

    .line 648
    .local v1, QuickSetup:Lcom/rookiestudio/perfectviewer/TQuickSetup;
    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TQuickSetup;->show()V

    goto :goto_0

    .line 652
    .end local v1           #QuickSetup:Lcom/rookiestudio/perfectviewer/TQuickSetup;
    :pswitch_4
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v3, 0x1c

    invoke-static {v2, v3}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 658
    :pswitch_5
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CurrentMenuTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ToolsMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    invoke-virtual {v3, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->getItem(I)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    move-result-object v3

    iget-object v3, v3, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;->MenuText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iput v5, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuLevel:I

    .line 660
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 661
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 662
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SetWallpaperItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 665
    :pswitch_6
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CurrentMenuTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ToolsMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    invoke-virtual {v3, v4}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->getItem(I)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    move-result-object v3

    iget-object v3, v3, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;->MenuText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    iput v5, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuLevel:I

    .line 667
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 668
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 669
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ClearDataItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public WallpaperMenuHandler(I)V
    .locals 5
    .parameter "Index"

    .prologue
    const v4, 0x1080027

    .line 328
    if-nez p1, :cond_0

    .line 329
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->SetAsWallpaperCrop()V

    .line 339
    :goto_0
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 340
    return-void

    .line 331
    :cond_0
    sget v0, Lcom/rookiestudio/perfectviewer/Global;->AndroidSDKVersion:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 332
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0074

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a008b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TUtility;->MessageBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 333
    :cond_1
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->InstallFolder:Ljava/lang/String;

    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 334
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/rookiestudio/perfectviewer/TUtility;->MessageBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 336
    :cond_2
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->SetAsWallpaperScreen()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c003a

    if-ne v0, v1, :cond_0

    .line 283
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 284
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuLevel:I

    .line 285
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 286
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuPosition:I

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/TMainMenu;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    const/4 v6, 0x3

    const/4 v5, 0x6

    const/4 v2, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 344
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    if-nez v0, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuList:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iput p3, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuPosition:I

    .line 349
    iput v4, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuLevel:I

    .line 350
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 351
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 352
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuPosition:I

    packed-switch v0, :pswitch_data_0

    .line 383
    :goto_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CurrentMenuTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;

    invoke-virtual {v1, p3}, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->getItem(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->notifyDataSetChanged()V

    .line 386
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuAnimation()V

    goto :goto_0

    .line 354
    :pswitch_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->GeneralMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 357
    :pswitch_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->EffectMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 358
    iput v4, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CheckMenuPosition:I

    goto :goto_1

    .line 361
    :pswitch_2
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ZoomMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 362
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CheckMenuPosition:I

    goto :goto_1

    .line 365
    :pswitch_3
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ResampleMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 366
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CheckMenuPosition:I

    goto :goto_1

    .line 369
    :pswitch_4
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->OriginMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 370
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->PageCoordinate:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CheckMenuPosition:I

    goto :goto_1

    .line 373
    :pswitch_5
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->NavigateMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 376
    :pswitch_6
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ToolsMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 379
    :pswitch_7
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MiscMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 388
    :cond_2
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuLevel:I

    if-ne v0, v3, :cond_7

    .line 389
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuPosition:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 390
    invoke-virtual {p0, p3}, Lcom/rookiestudio/perfectviewer/TMainMenu;->HistoryMenuHandler(I)V

    .line 391
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    goto/16 :goto_0

    .line 393
    :cond_3
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuPosition:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    if-ne v0, v6, :cond_4

    .line 394
    invoke-virtual {p0, p3}, Lcom/rookiestudio/perfectviewer/TMainMenu;->BookmarkMenuHandler(I)V

    .line 395
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    goto/16 :goto_0

    .line 397
    :cond_4
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuPosition:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 398
    invoke-direct {p0, p3}, Lcom/rookiestudio/perfectviewer/TMainMenu;->ScreenOrientationHandler(I)V

    .line 399
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    goto/16 :goto_0

    .line 401
    :cond_5
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuPosition:I

    if-ne v0, v5, :cond_6

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    if-ne v0, v2, :cond_6

    .line 402
    invoke-virtual {p0, p3}, Lcom/rookiestudio/perfectviewer/TMainMenu;->WallpaperMenuHandler(I)V

    goto/16 :goto_0

    .line 404
    :cond_6
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuPosition:I

    if-ne v0, v5, :cond_7

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    if-ne v0, v5, :cond_7

    .line 405
    invoke-static {p3}, Lcom/rookiestudio/perfectviewer/TUtility;->DoClearData(I)V

    .line 406
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    goto/16 :goto_0

    .line 410
    :cond_7
    iput p3, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    .line 411
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuPosition:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 413
    :pswitch_8
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 415
    :pswitch_9
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 416
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto/16 :goto_0

    .line 419
    :pswitch_a
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 420
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto/16 :goto_0

    .line 423
    :pswitch_b
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->CreateHistoryMenu()V

    goto/16 :goto_0

    .line 426
    :pswitch_c
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->CreateBookmarkMenu()V

    goto/16 :goto_0

    .line 429
    :pswitch_d
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 430
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->AddBookmark()V

    goto/16 :goto_0

    .line 433
    :pswitch_e
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 434
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto/16 :goto_0

    .line 437
    :pswitch_f
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 438
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->AddFavorites()V

    goto/16 :goto_0

    .line 441
    :pswitch_10
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CurrentMenuTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->GeneralMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->getItem(I)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    move-result-object v1

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;->MenuText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iput v3, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuLevel:I

    .line 443
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 444
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 445
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ScreenOrientationItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 446
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CheckMenuPosition:I

    goto/16 :goto_0

    .line 449
    :pswitch_11
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto/16 :goto_0

    .line 454
    :pswitch_12
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 456
    :pswitch_13
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    .line 457
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    goto/16 :goto_0

    .line 460
    :pswitch_14
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    .line 461
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    goto/16 :goto_0

    .line 464
    :pswitch_15
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 465
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x25

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto/16 :goto_0

    .line 468
    :pswitch_16
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 469
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x2b

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto/16 :goto_0

    .line 472
    :pswitch_17
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 473
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x26

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto/16 :goto_0

    .line 476
    :pswitch_18
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 477
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto/16 :goto_0

    .line 480
    :pswitch_19
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 481
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x27

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto/16 :goto_0

    .line 484
    :pswitch_1a
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 485
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto/16 :goto_0

    .line 490
    :pswitch_1b
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    if-eq v0, p3, :cond_0

    .line 493
    if-ne p3, v2, :cond_8

    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->AutoDualPage:Z

    if-nez v0, :cond_0

    .line 496
    :cond_8
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0, p3}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageFit(I)V

    .line 497
    iput p3, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CheckMenuPosition:I

    .line 498
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ZoomMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->notifyDataSetChanged()V

    .line 499
    const-string v0, "PageFit"

    invoke-static {v0, p3}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 502
    :pswitch_1c
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    if-eq v0, p3, :cond_0

    .line 506
    sput p3, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    .line 507
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 508
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    if-eq v0, v6, :cond_9

    .line 509
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    if-ne v0, v2, :cond_a

    .line 510
    :cond_9
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->ShowLoadingMessage:Z

    if-eqz v0, :cond_a

    .line 511
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;IZ)V

    .line 514
    :cond_a
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateBitmap()V

    .line 515
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0, v3}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateCoordinate(Z)V

    .line 516
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 517
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer;->HideMessage()V

    .line 518
    iput p3, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CheckMenuPosition:I

    .line 519
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->ResampleMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->notifyDataSetChanged()V

    .line 520
    const-string v0, "Resampling"

    invoke-static {v0, p3}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 523
    :pswitch_1d
    iput p3, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->CheckMenuPosition:I

    .line 524
    sput p3, Lcom/rookiestudio/perfectviewer/Config;->PageCoordinate:I

    .line 525
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->OriginMenuItems:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->notifyDataSetChanged()V

    .line 526
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iput-boolean v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 527
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0, v3}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateCoordinate(Z)V

    .line 528
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 529
    const-string v0, "PageCoordinate"

    invoke-static {v0, p3}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 532
    :pswitch_1e
    invoke-virtual/range {p0 .. p5}, Lcom/rookiestudio/perfectviewer/TMainMenu;->NavigateMenuHandler(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto/16 :goto_0

    .line 535
    :pswitch_1f
    invoke-virtual/range {p0 .. p5}, Lcom/rookiestudio/perfectviewer/TMainMenu;->ToolsMenuHandler(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto/16 :goto_0

    .line 538
    :pswitch_20
    invoke-virtual/range {p0 .. p5}, Lcom/rookiestudio/perfectviewer/TMainMenu;->MiscMenuHandler(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto/16 :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 411
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_12
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch

    .line 413
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 454
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
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
    const/4 v2, 0x1

    .line 1095
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuPosition:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuLevel:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1096
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1097
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/rookiestudio/perfectviewer/TMainMenu;->DoDeleteData(II)V

    .line 1098
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 1106
    :cond_0
    :goto_0
    return v2

    .line 1100
    :cond_1
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuPosition:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuLevel:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu;->SubMenuPosition:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1101
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->BookmarkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1102
    invoke-virtual {p0, v2, p3}, Lcom/rookiestudio/perfectviewer/TMainMenu;->DoDeleteData(II)V

    .line 1103
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    goto :goto_0
.end method
