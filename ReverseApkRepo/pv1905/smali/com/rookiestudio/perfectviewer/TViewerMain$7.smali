.class Lcom/rookiestudio/perfectviewer/TViewerMain$7;
.super Ljava/lang/Object;
.source "TViewerMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 983
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainMenu:Lcom/rookiestudio/perfectviewer/TMainMenu;

    if-nez v0, :cond_0

    .line 984
    new-instance v0, Lcom/rookiestudio/perfectviewer/TMainMenu;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-direct {v0, v1}, Lcom/rookiestudio/perfectviewer/TMainMenu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainMenu:Lcom/rookiestudio/perfectviewer/TMainMenu;

    .line 985
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    iget-object v0, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MainLayout:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainMenu:Lcom/rookiestudio/perfectviewer/TMainMenu;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 987
    :cond_0
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->ShowMainMenu:Z

    if-eqz v0, :cond_1

    .line 988
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainMenu:Lcom/rookiestudio/perfectviewer/TMainMenu;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    .line 996
    :goto_0
    return-void

    .line 990
    :cond_1
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->ShowQuickBar:Z

    if-eqz v0, :cond_2

    .line 991
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->NavigateBar:Lcom/rookiestudio/perfectviewer/TNavigateBar;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TNavigateBar;->Hide()V

    .line 993
    :cond_2
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainMenu:Lcom/rookiestudio/perfectviewer/TMainMenu;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TMainMenu;->SetStartupMenu(I)V

    .line 994
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainMenu:Lcom/rookiestudio/perfectviewer/TMainMenu;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Show()V

    goto :goto_0
.end method
