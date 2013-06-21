.class Lcom/wareone/tappmt/Groups$2;
.super Ljava/lang/Object;
.source "Groups.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Groups;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Groups;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Groups;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Groups$2;->this$0:Lcom/wareone/tappmt/Groups;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Groups$2;)Lcom/wareone/tappmt/Groups;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wareone/tappmt/Groups$2;->this$0:Lcom/wareone/tappmt/Groups;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
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
    .line 104
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move v0, p3

    .line 105
    .local v0, m_pos:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wareone/tappmt/Groups$2;->this$0:Lcom/wareone/tappmt/Groups;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    const v2, 0x7f090065

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 107
    const v2, 0x7f09004c

    new-instance v3, Lcom/wareone/tappmt/Groups$2$1;

    invoke-direct {v3, p0, v0}, Lcom/wareone/tappmt/Groups$2$1;-><init>(Lcom/wareone/tappmt/Groups$2;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 123
    const v2, 0x7f09004b

    new-instance v3, Lcom/wareone/tappmt/Groups$2$2;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/Groups$2$2;-><init>(Lcom/wareone/tappmt/Groups$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 132
    const/4 v1, 0x0

    return v1
.end method
