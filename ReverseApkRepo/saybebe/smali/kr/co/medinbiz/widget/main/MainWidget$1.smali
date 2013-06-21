.class Lkr/co/medinbiz/widget/main/MainWidget$1;
.super Ljava/lang/Object;
.source "MainWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/main/MainWidget;->openNotice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/main/MainWidget;

.field private final synthetic val$isNotice:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/main/MainWidget;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/main/MainWidget$1;->this$0:Lkr/co/medinbiz/widget/main/MainWidget;

    iput-object p2, p0, Lkr/co/medinbiz/widget/main/MainWidget$1;->val$isNotice:Landroid/widget/CheckBox;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 80
    iget-object v0, p0, Lkr/co/medinbiz/widget/main/MainWidget$1;->val$isNotice:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lkr/co/medinbiz/widget/main/MainWidget$1;->this$0:Lkr/co/medinbiz/widget/main/MainWidget;

    #getter for: Lkr/co/medinbiz/widget/main/MainWidget;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/main/MainWidget;->access$0(Lkr/co/medinbiz/widget/main/MainWidget;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/main/MainWidget$1;->val$isNotice:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/helper/PreferencesManager;->setNoticeAgain(Z)V

    .line 83
    :cond_0
    return-void
.end method
