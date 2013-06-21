.class Lcom/rookiestudio/perfectviewer/TViewerMain$2;
.super Ljava/lang/Object;
.source "TViewerMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TViewerMain;->SetRegionFunction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

.field private final synthetic val$FunctionListListView:Landroid/widget/ListView;

.field private final synthetic val$Region:I


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TViewerMain;Landroid/widget/ListView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$2;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$2;->val$FunctionListListView:Landroid/widget/ListView;

    iput p3, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$2;->val$Region:I

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 653
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$2;->val$FunctionListListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 654
    .local v0, Index:I
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$2;->val$Region:I

    invoke-static {v1, v0}, Lcom/rookiestudio/perfectviewer/Config;->SetRegionFunction(II)V

    .line 655
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 656
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 657
    return-void
.end method
