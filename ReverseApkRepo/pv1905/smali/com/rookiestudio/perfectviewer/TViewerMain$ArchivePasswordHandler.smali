.class Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;
.super Ljava/lang/Object;
.source "TViewerMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TViewerMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArchivePasswordHandler"
.end annotation


# instance fields
.field private SelectArchive:Ljava/lang/String;

.field private SelectFileName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TViewerMain;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "Archive"
    .parameter "FileName"

    .prologue
    .line 1510
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 1509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1511
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->context:Landroid/content/Context;

    .line 1512
    iput-object p3, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->SelectArchive:Ljava/lang/String;

    .line 1513
    iput-object p4, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->SelectFileName:Ljava/lang/String;

    .line 1514
    return-void
.end method

.method static synthetic access$0(Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->SelectArchive:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->SelectFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;)Lcom/rookiestudio/perfectviewer/TViewerMain;
    .locals 1
    .parameter

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1518
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1519
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0144

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1520
    const v2, 0x7f0a0145

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1522
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1523
    .local v1, input:Landroid/widget/EditText;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1524
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1525
    const v2, 0x104000a

    new-instance v3, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler$1;

    invoke-direct {v3, p0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler$1;-><init>(Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1533
    const/high16 v2, 0x104

    new-instance v3, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler$2;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler$2;-><init>(Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1537
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1538
    return-void
.end method
